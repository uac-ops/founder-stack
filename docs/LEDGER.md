# The Ledger Contract

`COMPANY.md` is the spine of Founder Stack. It is a single Markdown file that
lives in the root of your project and holds the entire state of your company.
Every skill and agent follows the same contract when touching it.

## Why one file

A solo founder cannot afford context loss. The ledger means:

- **No re-explaining.** Any skill can pick up where another left off.
- **Connection by default.** The `sell` skill reads what `plan` priced and
  what `design` positioned without you repeating yourself.
- **Git-native memory.** It is plain Markdown, so every change is diffable and
  versioned alongside your code.
- **Human-readable.** You can open it any time and understand your whole company
  on one screen.

## The contract

Every skill MUST:

1. **Read first.** Load `COMPANY.md` before doing anything. Treat its contents
   as authoritative context.
2. **Write back.** After producing work, update the relevant section(s) with a
   concise summary and links to any artifacts created.
3. **Advance the stage.** When a stage's exit criteria are met, update the
   `Stage:` field in `## Meta` to the next stage.
4. **Append to the Decision Log.** One line: `YYYY-MM-DD · what · why`.
5. **Refresh Next Actions.** Leave a clear, checkable list of what comes next.
6. **Never destroy history.** Append and amend; do not delete prior context.

## The one field that drives everything

```
- **Stage:** `build`
```

`Stage` is read by the orchestrator (`/company`), the router (`/next`), and the
dashboard (`/status`). Valid values, in order:

```
ideate → validate → plan → design → build → test → secure →
deploy → document → launch → market → sell → support → operate
```

`operate` is a steady state — once live, you cycle through support, market,
sell, finance, and operate continuously.

## Where it lives

- The **template** is `templates/COMPANY.md` in this repo.
- The **live copy** is `COMPANY.md` in the founder's own project root.
- `/new-company` copies the template into place and fills in the basics.

## If `COMPANY.md` is missing

Any skill that cannot find `COMPANY.md` should offer to run `/new-company`
first, then continue. The ledger is a prerequisite, not an option.
