---
name: prototype
description: Build a cheap, throwaway prototype to test the riskiest design assumption with users before building for real. Use when the user says "prototype", "mockup to test", "validate the design", "clickable demo", or sits between design and build. Prevents building the wrong thing well.
---

# Prototype — test before you build

Building is expensive; prototyping is cheap. This stage puts a fake-but-feeling-
real version in front of users to learn before you commit engineering time.

## Connected skills
- Reads:    `## 03 Plan`, `## 04 Design`
- Writes:   `### Prototype` (under Quality & Discovery), updates `## 04 Design`
- Agents:   `ux-designer`
- Previous: `design`
- Next:     `build` (on validation) or back to `design` (on learning)

## Goal
Evidence that the core flow's design actually works for users, gathered before a
line of production code.

## Inputs
- The critical flow and design system from `## 04 Design`.

## Before you start
Check that `## 03 Plan`, `## 04 Design` are filled in COMPANY.md. If a section you depend on is empty or still `_TBD_`, stop and tell the founder which skill fills it (see the orchestrator's stage table) instead of guessing.

## Process
1. **Pick the riskiest design question.** What, if wrong, wastes the most build
   time? (e.g. "do users understand the core action without explanation?")
2. **Choose the cheapest fidelity that answers it** with `ux-designer`:
   - **Paper / wireframe** — for flow and structure.
   - **Clickable** (Figma or static HTML) — for navigation and comprehension.
   - **Wizard-of-Oz / fake-door** — fake the backend; measure intent.
3. **Build it fast and disposable.** Do not gold-plate. It dies after the test.
4. **Test with 3–5 target users.** Give a task, stay quiet, watch where they
   hesitate or go wrong. Note, don't defend.
5. **Decide:** the design works → greenlight `build`; the design confuses →
   revise and loop back to `design` (cheaply).

## Exit criteria
- The riskiest design question is answered with user evidence.
- A go-to-build or revise decision, with what changed.
- Evidence shown for each criterion above (command output, screenshot, link, or measurement), not just asserted.

## Update the ledger
- Fill `### Prototype` (question, fidelity, what users did, decision).
- Update `## 04 Design` with any changes the test forced.
- Decision Log: `YYYY-MM-DD · prototype · design <validated/revised>`.
- Next Actions: `build` or another `design` pass.

## Handoff
"You're building the right thing. Run `build` — or loop back to `design` if the
test showed a better path."
