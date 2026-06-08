---
name: design
description: Create the brand, design system, and key user flows that make the MVP desirable. Use when COMPANY.md Stage is design, or the user says "design this", "make it look good", "brand", "design system", "mockups", or "UX flows".
---

# Design — make it desirable

Functional is not enough; people judge in seconds. This stage gives the MVP a
coherent look and frictionless flows before a line of feature code is written.

## Connected skills
- Reads:    `## 01 Idea`, `## 03 Plan`
- Writes:   `## 04 Design`
- Agents:   `product-strategist`
- Previous: `plan`
- Next:     `build`

## Goal
A design system (color, type, spacing, components) and the key screens/flows for
the MVP, captured so the `build` stage can implement without guessing.

## Inputs
- The MVP scope from `## 03 Plan`; the positioning from `## 01 Idea`.

## Process
1. **Positioning into personality.** Translate the one-liner into 3 brand
   adjectives (e.g. "calm, precise, trustworthy"). These drive every choice.
2. **Design system.** Define the minimum:
   - **Color:** one brand color, neutrals, semantic states. Check contrast.
   - **Type:** one or two families, a clear scale.
   - **Spacing:** a consistent scale (4/8px). Layout grid.
   - **Components:** buttons, inputs, cards, nav — states included.
3. **Map the critical flow.** The shortest path from landing to core value
   (the "aha"). Remove every non-essential step.
4. **Sketch key screens.** Low-fidelity is fine. Cover: first run, the core
   action, success, empty, and error states.
5. **Avoid generic AI look.** Specific is memorable. Pick deliberate details:
   real copy, intentional spacing, one signature element.
6. **Write it down.** A short `DESIGN.md` in the project is the source of truth
   for the build.

## Exit criteria
- A documented design system.
- The critical flow mapped end to end.
- Key screens defined (incl. empty/error states).

## Update the ledger
- Fill `## 04 Design` (brand, system summary, key flows, link to mockups/DESIGN.md).
- Decision Log: `YYYY-MM-DD · design system set · brand = <adjectives>`.
- Set `Stage: build`.
- Next Actions: "Run `build` to implement the MVP."

## Handoff
"Design is set. Before committing build time, consider `prototype` to test the
riskiest design assumption with users cheaply — and `onboarding` to design the
first-run path. Then run `build` to implement the MVP against this design system,
with tests and atomic commits."
