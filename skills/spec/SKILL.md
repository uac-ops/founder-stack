---
name: spec
description: Turn a planned feature into a precise, testable spec — user stories, acceptance criteria, edge cases, and explicit non-goals — before any code is written. Use when the user says "write a spec", "PRD", "acceptance criteria", "what exactly should this do", or sits between plan and build. Prevents rework from vague requirements.
---

# Spec — define done before you build

Most rework comes from building the wrong detail, not the wrong product. This
skill turns each MVP feature into a spec precise enough that `build` and `test`
agree on what "done" means.

## Connected skills
- Reads:    `## 03 Plan`, `## 04 Design`
- Writes:   `### Spec` (under Quality & Discovery)
- Agents:   `product-strategist`, `architect`
- Previous: `plan` / `design`
- Next:     `data-model`, then `build`

## Goal
Every in-scope MVP feature has acceptance criteria that a test can check, plus
written edge cases and non-goals.

## Inputs
- MVP scope and milestones (`## 03 Plan`), key flows (`## 04 Design`).

## Before you start
Check that `## 03 Plan`, `## 04 Design` are filled in COMPANY.md. If a section you depend on is empty or still `_TBD_`, stop and tell the founder which skill fills it (see the orchestrator's stage table) instead of guessing.

## Process
1. **List the features** in MVP scope, in build order (critical flow first).
2. **For each feature, with `product-strategist`, write:**
   - **User story** — "As a <customer>, I want <action> so that <outcome>."
   - **Acceptance criteria** — Given / When / Then, one behavior per line. Each
     must be checkable by a test or a manual step. No "fast", "easy", or
     "intuitive" without a number.
   - **Edge cases** — empty, huge, duplicate, concurrent, offline, unauthorized,
     and failure of every external dependency.
   - **States** — loading, empty, error, and success for every screen involved.
   - **Non-goals** — what this feature deliberately does not do in the MVP.
3. **Technical notes with `architect`:** data touched, APIs called, permissions,
   and anything irreversible (migrations, payments, emails sent).
4. **Ambiguity sweep.** Read each spec as the builder would. Every question you'd
   have to ask the founder is either answered now or logged as an open question.
5. **Founder sign-off.** The founder approves the spec set before `build` starts.

## Exit criteria
- Every in-scope feature has a user story, Given/When/Then criteria, edge cases,
  states, and non-goals.
- No open questions that would change what gets built.
- Founder has approved the specs.
- Evidence shown for each criterion above (command output, screenshot, link, or measurement), not just asserted.

## Update the ledger
- Fill `### Spec` (one block per feature, or a link to `docs/specs/`).
- Decision Log: `YYYY-MM-DD · specs approved · <n> features`.
- Next Actions: "Run `data-model` to lock the schema and API contract, then `build`."

## Handoff
"`build` now has an unambiguous target and `test` has its checklist. Run
`data-model` next so the schema is right before code depends on it."
