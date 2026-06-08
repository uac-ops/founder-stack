---
description: A one-screen dashboard of your whole company, read from COMPANY.md.
---

The founder wants a snapshot of their company.

1. Read `COMPANY.md` from the project root.
   - If missing, tell them to run `/new-company` first.
2. Render a compact dashboard:

```
COMPANY: <name> — <one-liner>
STAGE:   <current stage>  (step N of 16)
URL:     <production URL or —>

PROGRESS
  ✅ done stages        ▶️ current stage        ⬜ remaining stages
  (mark each lifecycle stage based on whether its ledger section is filled)

KEY NUMBERS
  MRR / revenue:  <from ## 14 Finance, or —>
  Runway:         <from ## 14 Finance, or —>
  North star:     <from ## 16 Operations, or not set>

CROSS-CUTTING
  Finance: <last updated / status>
  Legal:   <ToS + Privacy live? entity?>

NEXT ACTION
  <the single next action, same logic as /next>

RECENT DECISIONS
  <last 3 lines of the Decision Log>
```

3. Fill each field from the ledger. Use `—` for anything not yet set.
4. End with a one-line nudge: run `/company` to advance or `/next` for the next
   action.

Keep it scannable. This is a glance, not a report.
