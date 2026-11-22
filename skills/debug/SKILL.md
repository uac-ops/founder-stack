---
name: debug
description: Find and fix the root cause of a bug systematically — reproduce, isolate, hypothesize, verify — instead of patching symptoms. Use when the user says "it's broken", "bug", "error", "it doesn't work", "fix this", "why is this happening", or a test is failing. Cross-cutting; run any time.
---

# Debug — fix the cause, not the symptom

Random changes until the error goes away create new bugs. This skill finds
why something fails, fixes that, and proves it with a test so it never returns.

## Connected skills
- Reads:    `## 05 Build`
- Writes:   `## 06 Test → Known bugs`, `## 05 Build → Tech debt log` when relevant
- Agents:   `debugger`
- Previous: any
- Next:     back to whatever stage was running

## Goal
The root cause is identified with evidence, fixed, and covered by a regression
test.

## Inputs
- The bug report: what happened, what was expected, where, and how often.

## Before you start
Check that `## 05 Build` is filled in COMPANY.md. If a section you depend on is empty or still `_TBD_`, stop and tell the founder which skill fills it (see the orchestrator's stage table) instead of guessing.

## Process
1. **Reproduce it.** Get a reliable repro (steps, input, environment). If you
   can't, gather more data (logs, error tracking, user steps) before touching
   code. No repro, no fix.
2. **Write the failing test** that captures the bug, where practical.
3. **Isolate with `debugger`.** Read the full error and stack trace, check what
   changed recently (`git log`, `git bisect`), and halve the problem until one
   unit misbehaves.
4. **Hypothesize, then test it.** State "I think X because Y" and run one
   experiment that could prove it wrong. One variable at a time.
5. **Fix the root cause** — the earliest point where things go wrong, not where
   the error surfaces.
6. **Verify.** The failing test passes, the full suite is green, and the
   original repro no longer fails.
7. **Look for siblings.** Search for the same pattern elsewhere in the code.
8. **Rewind if needed.** If the cause is a spec, design, or data-model flaw,
   rewind `Stage` per the orchestrator rule instead of patching in code.

## Exit criteria
- Root cause stated in one sentence, with the evidence that confirms it.
- A regression test fails before the fix and passes after.
- Full suite green; sibling occurrences checked.
- Evidence shown for each criterion above (command output, screenshot, link, or measurement), not just asserted.

## Update the ledger
- Update `## 06 Test → Known bugs` (mark fixed, with root cause).
- If the fix is a shortcut, log it in `## 05 Build → Tech debt log`.
- Decision Log: `YYYY-MM-DD · fixed <bug> · root cause <cause>`.

## Handoff
"Fixed at the root, with a test guarding it. Back to `/company` to continue."
