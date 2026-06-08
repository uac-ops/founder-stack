---
name: code-review
description: Review a code diff for correctness bugs, security issues, and simplification before it lands — the quality gate between build and test. Use when the user says "review my code", "review this diff", "code review", "check my changes", or "is this code good", or after a build slice is finished.
---

# Code Review — catch defects before they ship

The cheapest bug to fix is the one caught in review. This is the gate every
change passes through before it reaches `test`.

## Connected skills
- Reads:    `## 05 Build`
- Writes:   `### Code Review` (under Quality & Discovery)
- Agents:   `code-reviewer`
- Previous: `build`
- Next:     `test` (or back to `build` to fix)

## Goal
A reviewed diff with high-confidence defects fixed and remaining concerns logged,
so `test` starts from clean code.

## Inputs
- The diff for the change (e.g. `git diff` against the base branch).

## Process
1. **Get the diff.** Scope the review to what changed, not the whole codebase.
2. **Review with `code-reviewer`,** in priority order:
   - **Correctness** — logic errors, off-by-one, wrong conditionals, unhandled
     async, broken state.
   - **Security** — injection, broken authz, secrets in code, unsafe handling of
     untrusted input (including LLM output).
   - **Edge cases & errors** — null/empty/huge inputs, failure paths, retries.
   - **Reuse & simplification** — duplicated logic, dead code, an existing helper
     that already does this, an over-complex approach.
   - **Readability** — naming, clarity, matching the surrounding style.
   - **Test coverage** — does the change have a test for its meaningful behavior?
3. **Triage by confidence.** Report only issues you're genuinely confident
   matter. Don't drown the founder in nitpicks.
4. **Fix the clear ones** (with the founder's ok) or hand back a concise list.
5. **Re-review after fixes.** Verify the fix; don't assume.

## Exit criteria
- No open high-confidence correctness or security issues.
- Concerns that remain are logged with rationale.

## Update the ledger
- Fill `### Code Review` (what was reviewed, issues found + status).
- Decision Log: `YYYY-MM-DD · code review · fixed N issues · 0 high open`.
- Next Actions: proceed to `test`.

## Handoff
"Diff is clean. Run `test` next — and consider `accessibility` and `performance`
passes before launch."
