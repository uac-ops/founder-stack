---
name: accessibility
description: Audit and fix accessibility (WCAG 2.2 AA) — keyboard nav, screen readers, contrast, semantic HTML, focus, alt text, forms. Use when the user says "accessibility", "a11y", "WCAG", "screen reader", "keyboard navigation", or "is this usable for everyone", typically before launch.
---

# Accessibility — build for everyone

Roughly 1 in 6 people has a disability. Accessible products reach more users,
rank better, and reduce legal risk. Target: WCAG 2.2 AA.

## Connected skills
- Reads:    `## 04 Design`, `## 05 Build`
- Writes:   `### Accessibility` (under Quality & Discovery), feeds `## 06 Test`
- Agents:   `accessibility-specialist`
- Previous: `build` / `test`
- Next:     back to the flow (run before `launch`)

## Goal
The critical flows are usable by keyboard and screen reader, meet contrast, and
pass an automated + manual a11y check.

## Inputs
- The design system (`## 04 Design`) and the built UI (`## 05 Build`).

## Process
1. **Automated first pass.** Run an a11y linter/scanner (axe, Lighthouse) on key
   pages. Fix the easy wins (missing labels, contrast, alt text).
2. **Manual checks with `accessibility-specialist`:**
   - **Keyboard only** — every action reachable, visible focus, logical order,
     no traps.
   - **Screen reader** — meaningful labels, headings structure, landmarks, live
     regions for dynamic content.
   - **Semantic HTML** — real buttons/links/headings, not styled divs.
   - **Forms** — labels tied to inputs, clear errors, instructions.
   - **Contrast** — text and UI meet AA ratios.
   - **Motion** — respect `prefers-reduced-motion`; nothing flashes dangerously.
   - **Zoom/reflow** — usable at 200% and on small screens.
3. **Fix by impact.** Blockers on the critical flow first.
4. **Re-verify** the flow end to end with keyboard + screen reader.

## Exit criteria
- Critical flows operable by keyboard and screen reader.
- Contrast and semantics pass.
- No blocking a11y issues on core paths.

## Update the ledger
- Fill `### Accessibility` (audit results, fixes, remaining items).
- Decision Log: `YYYY-MM-DD · a11y pass · WCAG AA on core flows`.
- Next Actions: fold remaining items into the build loop.

## Handoff
"Everyone can use the core flows. Good to continue toward `launch`."
