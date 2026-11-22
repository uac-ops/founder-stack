---
name: retention
description: Measure and improve retention — cohort analysis, churn reasons, the habit loop, and win-back — so growth doesn't leak out the bottom. Use when the user says "churn", "retention", "users don't come back", "cancellations", "cohorts", or "win back". Runs during operate.
---

# Retention — keep the users you won

Acquisition into a leaky bucket is wasted money. This skill measures who stays,
learns why people leave, and runs the few changes most likely to keep them.

## Connected skills
- Reads:    `## 16 Operations`, `### Instrumentation`
- Writes:   `### Retention` (under Quality & Discovery)
- Agents:   `data-analyst`, `ux-researcher`
- Previous: `operate`
- Next:     `experiment` (to test fixes), `onboarding` (if activation is the leak)

## Goal
A retention baseline by cohort, the top churn reasons from real users, and one
shipped change aimed at the biggest leak.

## Inputs
- North-star metric and dashboards (`## 16 Operations`), event data (`### Instrumentation`).

## Before you start
Check that `## 16 Operations`, `### Instrumentation` are filled in COMPANY.md. If a section you depend on is empty or still `_TBD_`, stop and tell the founder which skill fills it (see the orchestrator's stage table) instead of guessing.

## Process
1. **Define "retained"** for this product: repeating the core action at its
   natural frequency (daily, weekly, monthly). Not logins.
2. **Build cohorts with `data-analyst`.** Group users by signup week; record the
   share still doing the core action at week 1, 4, and 12. Does the curve
   flatten (a core of users stays) or keep falling toward zero?
3. **Find where it leaks.** Never activated → an `onboarding` problem. Activated
   then faded → a value or habit problem. Paid then cancelled → price/value fit.
4. **Learn why, with `ux-researcher`.** Talk to 5 churned and 5 retained users,
   and add a one-question cancel survey. What retained users do that churned
   users don't is your habit loop.
5. **Pick one lever for the biggest leak:** a faster path to the habit-forming
   action, a recurring trigger tied to real value (digest, reminder), fixing the
   top churn reason, or a win-back email for lapsed users.
6. **Ship it as an `experiment`** with retention at a fixed week as the metric.

## Exit criteria
- "Retained" defined; cohort curve recorded as a baseline.
- Top 3 churn reasons from real user conversations or survey data.
- One lever shipped or queued as an experiment against the biggest leak.
- Evidence shown for each criterion above (command output, screenshot, link, or measurement), not just asserted.

## Update the ledger
- Fill `### Retention` (definition, cohort baseline, churn reasons, lever).
- Decision Log: `YYYY-MM-DD · retention baseline W4=<x>% · lever <name>`.
- Next Actions: "Run `experiment` on the retention lever; re-measure cohorts in 4 weeks."

## Handoff
"You know who stays and why the rest leave. Run `experiment` to prove the lever
works."
