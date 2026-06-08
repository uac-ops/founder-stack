---
name: finance
description: Track runway, burn, MRR, and pricing economics so the company stays solvent. Cross-cutting — run after validate, before launch, and monthly. Use when COMPANY.md Stage is finance, or the user says "finances", "runway", "burn rate", "MRR", "unit economics", or "can I afford this".
---

# Finance — keep the lights on

A one-person company dies one way: it runs out of money. This stage keeps the
numbers honest and small enough to hold in your head.

## Connected skills
- Reads:    `## 02 Validation`, `## 12 Sales`
- Writes:   `## 14 Finance`
- Agents:   `finance-clerk`
- Previous: cross-cutting (often after `validate`)
- Next:     returns to the stage you came from

## Goal
A simple, current picture of money in, money out, and how long you can last.

## Inputs
- Pricing signal (`## 02`), revenue (`## 12 Sales`), your costs.

## Process
1. **Unit economics first.** With `finance-clerk`: what does it cost to serve one
   customer, what do they pay, what's the gross margin? If a sale loses money,
   nothing else matters — fix pricing or cost.
2. **Burn and runway.** Monthly costs (hosting, tools, subscriptions, your draw)
   minus revenue = burn. Cash ÷ burn = runway in months. Know this number.
3. **Revenue tracking.** MRR (or revenue), new vs. churned, simple month-over-
   month trend. One spreadsheet is plenty.
4. **Cost discipline.** List every recurring tool. Cancel what you don't use.
   Solo founders bleed via forgotten subscriptions.
5. **Pricing economics check.** Does the price support the business at realistic
   volume? Model break-even.
6. **Taxes and set-asides.** Reserve for taxes from day one (coordinate with
   `legal`). Don't spend money that isn't yours.

## Exit criteria
- Known runway in months.
- Positive (or path to positive) unit economics.
- A living revenue/cost sheet.

## Update the ledger
- Fill `## 14 Finance` (runway/burn, MRR, costs, pricing economics).
- Decision Log: `YYYY-MM-DD · runway = <n> months · MRR = <$>`.
- Keep the current `Stage` unless you came here from the orchestrator's loop.
- Next Actions: return to your previous stage.

## Handoff
"You know your numbers. Return to the stage you were on (or `/company` to
continue). Revisit `finance` monthly."
