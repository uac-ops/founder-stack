---
name: polish
description: A quality pass on the live product — visual consistency, spacing, microcopy, interaction feel, and loading/empty/error states. Use when the user says "polish", "make it feel premium", "it looks off", "design QA", "tighten the UI", or "remove the rough edges", before launch and during operate.
---

# Polish — the difference between "works" and "feels great"

Polish is what separates a product people tolerate from one they trust and
recommend. It's a deliberate pass, not an afterthought.

## Connected skills
- Reads:    `## 04 Design`, `## 05 Build`
- Writes:   `### Polish` (under Quality & Discovery)
- Agents:   `ux-designer`, `copywriter`
- Previous: any build/design stage
- Next:     back to the flow (run before `launch`, repeat in `operate`)

## Goal
A consistent, considered surface where every state is handled and nothing looks
accidental.

## Inputs
- The design system (`## 04 Design`) and the live UI.

## Before you start
Check that `## 04 Design`, `## 05 Build` are filled in COMPANY.md. If a section you depend on is empty or still `_TBD_`, stop and tell the founder which skill fills it (see the orchestrator's stage table) instead of guessing.

## Process
1. **Consistency sweep** with `ux-designer`. Walk every key screen and check
   against the design system:
   - Spacing and alignment on a consistent scale.
   - Type scale, weights, and color used systematically.
   - Components look and behave the same everywhere.
2. **Handle every state.** Loading, empty, error, success, and edge content
   (very long text, zero items, huge numbers). Missing states are the most
   common quality gap.
3. **Interaction feel.** Hover/focus/active states, sensible transitions,
   instant feedback on actions, no layout shift, no dead clicks.
4. **Microcopy** with `copywriter`. Buttons, labels, errors, and empty states in
   clear human language. Errors say what happened and what to do.
5. **Kill the "AI slop" look.** Replace generic placeholder vibes with deliberate,
   specific details and real copy. One signature touch beats ten defaults.
6. **Fix in source, atomically.** Commit each fix; verify with before/after.

## Exit criteria
- Visual consistency across key screens.
- Every state designed and handled.
- Microcopy clear; interactions feel responsive.
- Evidence shown for each criterion above (command output, screenshot, link, or measurement), not just asserted.

## Update the ledger
- Tick `## Meta → Gates → polish` once exit criteria are met.
- Fill `### Polish` (what was tightened, states added, copy fixes).
- Decision Log: `YYYY-MM-DD · polish pass · states + consistency done`.
- Next Actions: continue toward `launch`; re-polish new surfaces in `operate`.

## Handoff
"It feels considered, not accidental. Continue toward `launch`."
