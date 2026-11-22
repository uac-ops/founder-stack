#!/usr/bin/env bash
# Validate Founder Stack structure: frontmatter on every skill/agent/command,
# skill names matching their folders, and valid plugin JSON.
# No dependencies beyond bash, awk, sed, and python3 (preinstalled on CI).
set -uo pipefail

fail=0
err() { echo "::error::$1"; fail=1; }
ok()  { echo "  ok: $1"; }

# Print the YAML frontmatter block (between the first two --- lines).
frontmatter() {
  awk 'NR==1 { if ($0 != "---") exit; next } /^---[[:space:]]*$/ { exit } { print }' "$1"
}
field() { # $1 file, $2 field-name -> first value
  frontmatter "$1" | sed -n "s/^$2:[[:space:]]*//p" | head -1
}

echo "== skills =="
for d in skills/*/; do
  f="${d}SKILL.md"
  folder="$(basename "$d")"
  if [ ! -f "$f" ]; then err "$d has no SKILL.md"; continue; fi
  name="$(field "$f" name)"
  desc="$(field "$f" description)"
  [ -n "$name" ] || err "$f: missing 'name' in frontmatter"
  [ -n "$desc" ] || err "$f: missing 'description' in frontmatter"
  if [ -n "$name" ] && [ "$name" != "$folder" ]; then
    err "$f: name '$name' does not match folder '$folder'"
  fi
  [ -n "$name" ] && [ "$name" = "$folder" ] && [ -n "$desc" ] && ok "$f"
done

echo "== agents =="
for f in agents/*.md; do
  base="$(basename "$f" .md)"
  name="$(field "$f" name)"
  desc="$(field "$f" description)"
  [ -n "$name" ] || err "$f: missing 'name' in frontmatter"
  [ -n "$desc" ] || err "$f: missing 'description' in frontmatter"
  if [ -n "$name" ] && [ "$name" != "$base" ]; then
    err "$f: name '$name' does not match filename '$base'"
  fi
  [ -n "$name" ] && [ "$name" = "$base" ] && [ -n "$desc" ] && ok "$f"
done

echo "== commands =="
for f in commands/*.md; do
  desc="$(field "$f" description)"
  [ -n "$desc" ] || err "$f: missing 'description' in frontmatter"
  [ -n "$desc" ] && ok "$f"
done

echo "== structure & cross-references =="
for f in skills/*/SKILL.md; do
  for sec in "## Connected skills" "## Goal" "## Process" "## Exit criteria" "## Update the ledger" "## Handoff"; do
    case "$f" in skills/orchestrator/*) [ "$sec" = "## Process" ] || [ "$sec" = "## Goal" ] || continue ;; esac
    grep -qF "$sec" "$f" || err "$f: missing section '$sec'"
  done
  agents_line="$(grep -m1 -- '- Agents:' "$f" || true)"
  for a in $(printf '%s' "$agents_line" | grep -o '`[a-z-]*`' | tr -d '`'); do
    [ -f "agents/$a.md" ] || err "$f: references missing agent '$a'"
  done
done
# every skill named in the orchestrator stage table must exist
for s in $(sed -n 's/^ *| [a-z-]* | `\([a-z-]*\)` |.*/\1/p' skills/orchestrator/SKILL.md); do
  [ -f "skills/$s/SKILL.md" ] || err "orchestrator stage table references missing skill '$s'"
done
# every gate in the template must have a skill
for g in $(sed -n 's/^  - \[ \] \([a-z-]*\) (.*/\1/p' templates/COMPANY.md); do
  [ -f "skills/$g/SKILL.md" ] || err "templates/COMPANY.md gate '$g' has no skill"
done
[ "$fail" -eq 0 ] && ok "sections, agent refs, stage table, and gates resolve"

echo "== json =="
PY=""
for cand in python3 python; do
  if command -v "$cand" >/dev/null 2>&1; then PY="$cand"; break; fi
done

if [ -z "$PY" ]; then
  echo "  skip: no python interpreter found; skipping JSON checks (CI has python3)"
else
  for j in .claude-plugin/plugin.json .claude-plugin/marketplace.json; do
    if "$PY" -c "import json; json.load(open('$j'))" 2>/dev/null; then
      ok "$j parses"
    else
      err "$j: invalid JSON"
    fi
  done

  # plugin name must match the marketplace entry
  pname="$("$PY" -c "import json;print(json.load(open('.claude-plugin/plugin.json'))['name'])" 2>/dev/null)"
  mname="$("$PY" -c "import json;print(json.load(open('.claude-plugin/marketplace.json'))['plugins'][0]['name'])" 2>/dev/null)"
  if [ -n "$pname" ] && [ "$pname" = "$mname" ]; then
    ok "plugin name matches marketplace ('$pname')"
  else
    err "plugin.json name '$pname' != marketplace plugin name '$mname'"
  fi
fi

echo
if [ "$fail" -ne 0 ]; then
  echo "VALIDATION FAILED"
  exit 1
fi
echo "VALIDATION PASSED"
