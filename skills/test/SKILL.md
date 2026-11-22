---
name: test
description: QA the critical flows, measure coverage, produce a health score, and log bugs before shipping. Use when COMPANY.md Stage is test, or the user says "test this", "QA", "find bugs", "does it work", or "is it ready to ship".
---

# Test — prove it works

Confidence comes from evidence. This stage hammers the critical flows, measures
quality, and produces a health score you can trust.

## Connected skills
- Reads:    `## 03 Plan`, `## 05 Build`
- Writes:   `## 06 Test`
- Agents:   `qa-engineer`
- Previous: `build`
- Next:     `secure`

## Goal
A green critical-path suite, a known-bug list, and a health score that says
ship / don't ship.

## Inputs
- The MVP definition and feature status from `## 03 Plan` / `## 05 Build`.

## Before you start
Check that `## 03 Plan`, `## 05 Build` are filled in COMPANY.md. If a section you depend on is empty or still `_TBD_`, stop and tell the founder which skill fills it (see the orchestrator's stage table) instead of guessing.

## Process
1. **List the critical flows.** The handful of paths where failure loses a user
   or money (signup, the core action, payment).
2. **Test them with `qa-engineer`:**
   - **Automated:** unit + integration for logic; an end-to-end test for the
     critical flow.
   - **Manual / exploratory:** walk each flow as a real user. Try empty inputs,
     huge inputs, double clicks, back button, slow network.
   - **Cross-surface:** mobile and desktop; the main browsers.
3. **Measure.** Capture test coverage on critical paths (not vanity 100%) and a
   simple health score: tests passing, lint clean, no console errors, key flows
   work.
   **Health score (0–100), always computed the same way:**
   | Check | Points |
   |-------|--------|
   | Critical-flow E2E tests pass | 30 |
   | Unit/integration suite green | 20 |
   | Manual walk of every critical flow passes (desktop + mobile) | 20 |
   | No open blocker/high bugs | 15 |
   | Lint + type check clean | 10 |
   | No console/server errors during the walk | 5 |
   Ship threshold: **≥ 85 and zero blockers.** Record the per-check breakdown,
   not just the total, so scores are comparable run to run.
4. **Triage bugs.** Severity-rank them. Fix blockers now; log the rest with
   repro steps.
5. **Re-run after fixes.** Verify, don't assume. Evidence before claims.

## Exit criteria
- Critical flows pass automated + manual checks.
- Health score ≥ 85 with breakdown recorded; no open blockers.
- If a blocker's root cause is in design or plan, rewind `Stage` (see orchestrator) instead of patching.
- Remaining bugs logged with severity and repro.
- Evidence shown for each criterion above (command output, screenshot, link, or measurement), not just asserted.

## Update the ledger
- Fill `## 06 Test` (strategy, coverage/health score, known bugs).
- Decision Log: `YYYY-MM-DD · QA pass · health = <score> · blockers = 0`.
- Set `Stage: secure`.
- Next Actions: "Run `secure` for a threat model and OWASP pass."

## Handoff
"Quality is proven. Next run `secure` so we don't ship something exploitable."
