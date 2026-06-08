---
description: Start a new one-person company — creates the COMPANY.md ledger and fills in the basics.
argument-hint: [company name]
---

The founder wants to start a new company with Founder Stack.

1. Check whether `COMPANY.md` already exists in the project root.
   - If it exists, do NOT overwrite it. Show its `## Meta` and ask if they want
     to continue the existing company instead. Stop unless they confirm a reset.
2. Copy the ledger template into the project root as `COMPANY.md`. The template
   ships with this plugin at `${CLAUDE_PLUGIN_ROOT}/templates/COMPANY.md` — use
   that absolute path, because the command runs from the founder's project
   directory, not the plugin's. If `${CLAUDE_PLUGIN_ROOT}` is unset (e.g. the
   files were cloned, not installed as a plugin), fall back to the
   `templates/COMPANY.md` in the cloned repo.
3. Fill in `## Meta` by asking the founder (one quick question at a time, or use
   `$ARGUMENTS` as the name if provided):
   - Company / project name
   - One-liner (what you do, for whom) — it's fine to leave as TBD; `ideate`
     will sharpen it
   - Founder name
   - Today's date for Created and Last updated
4. Set `Stage: ideate`.
5. Add the first Decision Log line: `<today> · started the company · ran /new-company`.
6. Confirm: show the founder their fresh `## Meta` and tell them to run
   `/company` to begin with the `ideate` stage.

Keep it fast and friendly. This should take under a minute.
