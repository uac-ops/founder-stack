---
name: instrument
description: Design and verify the analytics tracking plan — the exact events, properties, and funnels the business needs — so experiment and operate have trustworthy data. Use when the user says "analytics", "tracking plan", "what should I track", "events", "funnel tracking", or before launch.
---

# Instrument — measure what matters, correctly

"Add analytics" usually produces a pile of pageviews and no answers. This skill
starts from the questions the business must answer, tracks exactly the events
that answer them, and verifies they fire.

## Connected skills
- Reads:    `## 03 Plan`, `## 08 Deploy`
- Writes:   `### Instrumentation` (under Quality & Discovery), updates `## 16 Operations → Dashboards`
- Agents:   `data-analyst`, `builder`
- Previous: `deploy`
- Next:     `launch`; feeds `experiment`, `retention`, and `operate`

## Goal
A written tracking plan, events verified firing in production, and an
activation funnel you can read on launch day.

## Inputs
- MVP definition (`## 03 Plan`), production URL and analytics tool (`## 08 Deploy`), and the aha moment from `### Onboarding` if it exists.

## Before you start
Check that `## 03 Plan`, `## 08 Deploy` are filled in COMPANY.md. If a section you depend on is empty or still `_TBD_`, stop and tell the founder which skill fills it (see the orchestrator's stage table) instead of guessing.

## Process
1. **Start from questions,** with `data-analyst`. Write the 5–8 questions you
   must answer in the first month: Where do signups come from? What share reach
   the aha moment? Where does the funnel leak? Who comes back in week 2?
2. **Define the events** that answer them — a small set, named consistently
   (`object_action`, e.g. `project_created`), each with its exact trigger,
   typed properties, and the question it answers. Drop events that answer none.
3. **Define the core funnel:** visit → signup → activation (aha) → retained →
   paid, with the exact event for each step.
4. **Identity and privacy:** how anonymous visitors link to accounts after
   signup; no PII in event properties; consent where required.
5. **Implement with `builder`,** server-side for business-critical events
   (signup, payment) so ad blockers don't hide them.
6. **Verify in production.** Walk the funnel yourself; confirm every event
   arrives once with correct properties. Fix doubles and gaps.
7. **Build the launch dashboard:** the funnel plus a daily count of each step.

## Exit criteria
- Tracking plan written: questions → events → properties.
- Every planned event verified arriving in production exactly once.
- Activation funnel dashboard live.
- Tick `## Meta → Gates → instrument`.
- Evidence shown for each criterion above (command output, screenshot, link, or measurement), not just asserted.

## Update the ledger
- Fill `### Instrumentation` (questions, event table, funnel, verification date).
- Add the dashboard link to `## 16 Operations → Dashboards`.
- Decision Log: `YYYY-MM-DD · tracking plan live · <n> events verified`.
- Next Actions: "Launch with a funnel you can read."

## Handoff
"You'll see exactly what users do from day one. `experiment`, `retention`, and
`operate` now have data they can trust."
