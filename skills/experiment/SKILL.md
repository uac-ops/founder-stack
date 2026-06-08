---
name: experiment
description: Data-informed iteration — form a hypothesis from analytics, run an A/B or funnel experiment, read the results honestly, and ship or kill. Use when the user says "A/B test", "experiment", "improve conversion", "what should I optimize", "test a change", or "the data says". Turns the analytics you set up into product decisions.
---

# Experiment — let data settle the argument

Opinions are cheap; experiments are evidence. This stage turns the analytics wired
up in `deploy` into a loop of testable improvements.

## Connected skills
- Reads:    `## 16 Operations`, `## 11 Marketing`, `## 12 Sales`
- Writes:   `### Experiments` (under Quality & Discovery), feeds `## 03 Plan`
- Agents:   `data-analyst`
- Previous: `operate`
- Next:     `build` (to ship a winner) / `operate`

## Goal
A disciplined experiment that produces a clear ship / kill decision and a learning
you keep.

## Inputs
- Funnel and usage data (analytics), the metric you want to move.

## Process
1. **Find the biggest lever.** With `data-analyst`, look at the funnel for the
   largest drop-off or the metric furthest from goal. Fix the bottleneck, not a
   random idea.
2. **Write a falsifiable hypothesis.** "Changing X will improve metric M for
   segment S, because <reason>." Pick ONE primary metric.
3. **Design the test honestly.** A/B where traffic allows; before/after or a
   painted-door where it doesn't. Decide the sample size / duration *before*
   starting so you don't peek-and-stop.
4. **Run it cleanly.** One change at a time. Don't ship other things mid-test.
5. **Read results without flinching.** Did the primary metric move beyond noise?
   Beware false positives and tiny samples. A null result is a real result.
6. **Decide and record.** Ship the winner (route to `build`), kill the loser, and
   write down the learning either way.

## Exit criteria
- A clear hypothesis tied to one metric.
- A run with a pre-committed stopping rule.
- A ship/kill decision and a recorded learning.

## Update the ledger
- Fill `### Experiments` (hypothesis, metric, result, decision, learning).
- Decision Log: `YYYY-MM-DD · experiment · <change> = win/null/loss`.
- Next Actions: ship the winner via `build`, or the next experiment.

## Handoff
"The data decided. Ship winners through `build`; keep the learning. Back to
`operate` for the next lever."
