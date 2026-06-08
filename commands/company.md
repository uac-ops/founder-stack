---
description: Run your company — the orchestrator reads COMPANY.md and runs the right lifecycle stage.
---

The founder wants to advance their one-person company.

Invoke the `orchestrator` skill. It will:
1. Read `COMPANY.md` (if missing, guide them through `/new-company` first).
2. Determine the current `Stage`.
3. Confirm direction, then run the matching lifecycle skill for that stage.
4. Report the handoff and what running `/company` again will do next.

If the founder passed an argument naming a stage (e.g. `/company finance`), tell
the orchestrator to run that stage directly instead of the current one — useful
for the cross-cutting `finance` and `legal` stages.
