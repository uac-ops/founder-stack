---
name: document
description: Write the README, getting-started, user docs, and changelog so people can understand and use the product. Use when COMPANY.md Stage is document, or the user says "write docs", "README", "user guide", "changelog", or "document this".
---

# Document — make it understandable

Undocumented software might as well not exist. This stage produces the docs that
convert a curious visitor into a successful user.

## Connected skills
- Reads:    `## 01 Idea`, `## 03 Plan`, `## 05 Build`, `## 08 Deploy`
- Writes:   `## 09 Docs`
- Agents:   `technical-writer`
- Previous: `deploy`
- Next:     `launch`

## Goal
A README that sells and orients, a getting-started path that produces a first
success fast, and a changelog you'll keep.

## Inputs
- The one-liner, what you built, and the live URL from the ledger.

## Before you start
Check that `## 01 Idea`, `## 03 Plan`, `## 05 Build`, `## 08 Deploy` are filled in COMPANY.md. If a section you depend on is empty or still `_TBD_`, stop and tell the founder which skill fills it (see the orchestrator's stage table) instead of guessing.

## Process
1. **README that sells.** With `technical-writer`, lead with the one-liner, the
   problem it solves, a screenshot/GIF, and a 60-second quick start. Make value
   obvious above the fold.
2. **Getting started.** The shortest path to first value (time-to-hello-world).
   Number the steps; remove every optional one.
3. **User docs (Diataxis).** Cover the four kinds as needed:
   - *Tutorial* — learning by doing.
   - *How-to* — task recipes.
   - *Reference* — the facts (API, options).
   - *Explanation* — the why.
   Don't write all four if you don't need them; cover the user's real journey.
4. **Changelog.** Start `CHANGELOG.md` now; keep it human, sell each release.
5. **In-product help.** Empty states, tooltips, and error messages are docs too.
6. **Dogfood it.** Follow your own getting-started from scratch. Time it. Fix the
   friction you hit.

## Exit criteria
- README that sells and orients.
- A getting-started path that reliably reaches first success.
- A changelog started.
- Evidence shown for each criterion above (command output, screenshot, link, or measurement), not just asserted.

## Update the ledger
- Fill `## 09 Docs` (README status, user docs, changelog).
- Decision Log: `YYYY-MM-DD · docs shipped · TTHW = <time>`.
- Set `Stage: launch`.
- Next Actions: "Run `launch` to plan the launch moment."

## Handoff
"It's usable and explained. Next run `launch` — and make sure `legal` (ToS,
Privacy) is done before you go public."
