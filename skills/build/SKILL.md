---
name: build
description: Implement the MVP with tests and atomic commits, against the agreed design and plan. Use when COMPANY.md Stage is build, or the user says "build it", "implement", "write the code", "start coding", or "ship the MVP".
---

# Build — ship the MVP

Turn the plan and design into working software. Move fast, but leave a clean
trail: tests, small commits, and an honest tech-debt log.

## Connected skills
- Reads:    `## 03 Plan`, `## 04 Design` (plus `### Spec` and `### Data Model` when present)
- Writes:   `## 05 Build`
- Agents:   `architect`, `builder`
- Previous: `design`
- Next:     `test`

## Goal
A working MVP that delivers the core job, built on a clean architecture, with
tests for the critical paths.

## Inputs
- MVP scope (`## 03 Plan`), design system and flows (`## 04 Design`).

## Before you start
Check that `## 03 Plan`, `## 04 Design` are filled in COMPANY.md. If a section you depend on is empty or still `_TBD_`, stop and tell the founder which skill fills it (see the orchestrator's stage table) instead of guessing.

## Process
1. **Scaffold.** With `architect`, set up the repo, the chosen stack, linting,
   formatting, and a test runner from commit one. Establish the folder structure
   and key boundaries (modules with one job each).
2. **Slice the work.** Break the MVP into vertical slices — each a user-visible
   capability you can demo. Build the spine first (the critical flow).
3. **Build slice by slice with `builder`.** For each slice:
   - Write a failing test for the behavior (TDD where it pays), straight from the
     slice's acceptance criteria in `### Spec`.
   - Implement until green.
   - Wire the UI to the design system.
   - **Run it.** Start the app and exercise the slice for real; capture the
     test output (and a screenshot for UI) as evidence.
   - Commit atomically with a clear message.
4. **Keep boundaries clean.** If a file grows to do too much, split it. Favor
   small, testable units with clear interfaces.
5. **Log tech debt honestly.** Every shortcut goes in the tech-debt log with a
   note on when it bites. Don't pretend it's not there.
6. **Demo to yourself** at each milestone against the plan's "done" line.

## Exit criteria
- The MVP's core job works end to end.
- Critical paths have tests; the suite is green.
- Architecture summary and tech-debt log recorded.
- Evidence shown for each criterion above (command output, screenshot, link, or measurement), not just asserted.

## Update the ledger
- Fill `## 05 Build` (architecture summary, repos/services, feature status,
  tech-debt log).
- Set `## Meta → Repo`.
- Decision Log: `YYYY-MM-DD · MVP built · core flow working`.
- Set `Stage: test` (the orchestrator will hold it at the `code-review` gate
  until the review passes).
- Next Actions: "Run `code-review` on the MVP diff, then `test`."

## Handoff
"MVP is functional. Run `code-review` on the diff before `test` to catch defects
early. Then `test` to prove it works. Run `accessibility` and `performance`
passes before launch so the product is usable and fast for everyone."
