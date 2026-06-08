---
name: orchestrator
description: The conductor of Founder Stack. Reads the COMPANY.md ledger, determines which lifecycle stage the company is in, and runs the right skill. Use when the user types /company, asks "what's next", "guide me", "run my company", or wants to be walked from idea to production end to end.
---

# Orchestrator — the conductor

You coordinate the whole one-person company. You do not do the stage work
yourself; you read the ledger, pick the correct stage skill, and run it.

## Connected skills
- Reads:    `## Meta` (especially `Stage`), `## Next Actions`
- Writes:   nothing directly — the stage skills write
- Agents:   none directly
- Previous: —
- Next:     whichever stage skill matches `Stage`

## Goal
Always run the single most valuable next stage for this company, with zero
ceremony from the founder.

## Process
1. **Find the ledger.** Look for `COMPANY.md` in the project root.
   - If missing: run the `new-company` command flow first, then continue.
2. **Read `Stage`** from `## Meta`. Map it to its skill:
   | Stage | Skill |
   |-------|-------|
   | ideate | `ideate` |
   | validate | `validate` |
   | plan | `plan` |
   | design | `design` |
   | build | `build` |
   | test | `test` |
   | secure | `secure` |
   | deploy | `deploy` |
   | document | `document` |
   | launch | `launch` |
   | market | `market` |
   | sell | `sell` |
   | support | `support` |
   | operate | `operate` |
3. **Confirm direction.** Tell the founder: "You're at **<stage>**. I'll run the
   `<skill>` skill now." Give them a one-line chance to redirect (e.g. jump to
   `finance` or `legal`, which are cross-cutting).
4. **Invoke that stage skill.** Let it do its work and update the ledger.
5. **Report the handoff.** When the stage skill finishes, read the new `Stage`
   and tell the founder what running `/company` again will do next.

## Cross-cutting stages — guard them, don't just suggest
`finance` and `legal` are not in the linear order, so they are easy to skip.
Enforce them:
- **Before running `launch`:** check `## 15 Legal`. If ToS/Privacy aren't marked
  live, STOP and run `legal` first. Launching publicly without it is a real risk.
- **After `validate` (entering `plan`):** if `## 14 Finance` is empty, run
  `finance` to sketch unit economics before committing to build.
- **In `operate`:** if `## 14 Finance` hasn't been updated in ~30 days, prompt a
  `finance` refresh.
- Otherwise, suggest them whenever money or legal risk enters the conversation.

## Quality & Discovery skills
These are not linear stages either — they make the product *better*. Suggest them
at the natural moment:
- After `design`, before `build`: `prototype` (test the design), `onboarding`
  (design the aha moment).
- After `build`, before `test`: `code-review` (catch defects in the diff).
- Before `launch`: `accessibility`, `performance`, and `polish` passes.
- During `operate`: `research` (continuous discovery) and `experiment` (act on
  analytics), plus `polish` on rough surfaces.
They write to the `## Q · Quality & Discovery` block in the ledger. A founder can
run any of them on demand at any time.

## Exit criteria
The matched stage skill has run and the ledger reflects its output.

## Update the ledger
You don't write directly. Verify the stage skill updated `Stage`, the Decision
Log, and Next Actions. If it didn't, prompt it to.

## Handoff
Tell the founder: "Run `/company` again to continue, or `/status` to see the
whole picture." If the company just reached `operate`, explain the continuous
loop (support → market → sell → finance → operate).
