---
name: validate
description: Test real demand before building. Talk to users, study the status quo, look for willingness to pay, and make a go/pivot/kill call. Use when COMPANY.md Stage is validate, or the user asks "should I build this", "is there demand", "validate my idea", or "who are my competitors".
---

# Validate — earn the right to build

Building before validating is the most expensive mistake a solo founder makes.
This stage attacks the riskiest assumption from `## 01 Idea` with cheap evidence.

## Connected skills
- Reads:    `## 01 Idea`
- Writes:   `## 02 Validation`, (triggers) `## 14 Finance`
- Agents:   `market-researcher`, `product-strategist`
- Previous: `ideate`
- Next:     `plan` (on go) or back to `ideate` (on pivot/kill)

## Goal
A clear go / pivot / kill decision backed by evidence, not hope.

## Inputs
- The riskiest assumption and target customer from `## 01 Idea`.

## Process
1. **State the test.** Turn the riskiest assumption into a falsifiable question.
   e.g. "Will at least 5 of 10 target users say they'd pay $X for this?"
2. **Map the status quo.** Dispatch `market-researcher` to find:
   - Existing solutions and substitutes (including spreadsheets and "do nothing").
   - Pricing in the category — what people already pay.
   - Where the target customer hangs out (for later distribution).
3. **Gather demand signal.** Choose the cheapest credible test:
   - **Talk to 5–10 target users.** Ask about past behavior, not hypotheticals.
   - **Smoke test:** a landing page + waitlist or a "fake door" button.
   - **Pre-sell:** the strongest signal — will they pay before it exists?
4. **Look for willingness to pay.** Real demand survives a price.
5. **Decide.** With `product-strategist`, call it:
   - **Go** — evidence supports the assumption. Proceed to `plan`.
   - **Pivot** — problem real, solution wrong. Return to `ideate` with what you
     learned.
   - **Kill** — no demand. Stop, and be glad you found out cheaply.
6. **Trigger finance early.** Suggest running `finance` to sketch unit economics
   while pricing signal is fresh.

## Exit criteria
- Documented demand evidence and competitor/status-quo map.
- A pricing signal.
- An explicit go / pivot / kill decision.

## Update the ledger
- Fill `## 02 Validation`.
- Decision Log: `YYYY-MM-DD · validation = GO/PIVOT/KILL · evidence = <summary>`.
- Set `Stage: plan` (go), or `Stage: ideate` (pivot). On kill, note it and stop.
- Next Actions accordingly.

## Handoff
On go: "Demand is real. Run `plan` to scope the smallest winning MVP — and
consider `finance` now. Validation was a one-time gate; keep learning with the
`research` skill as you build." On pivot: "Back to `ideate` with what we learned."
