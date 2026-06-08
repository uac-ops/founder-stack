# Getting Started

This guide takes you from zero to your first running stage in about five minutes.

## 1. Install

```bash
/plugin marketplace add uac-ops/founder-stack
/plugin install founder-stack
```

Restart Claude Code if it doesn't pick up the plugin immediately.

## 2. Create your company

In the project folder where your company will live:

```bash
/new-company
```

This creates `COMPANY.md` — your ledger — and asks you a few basics (name,
one-liner, founder). Everything else fills in as you go.

## 3. Let the orchestrator drive

```bash
/company
```

The orchestrator reads `COMPANY.md`, sees you're at `ideate`, and runs that
stage with you. When it's done it advances the `Stage` field and tells you what's
next. Run `/company` again to continue.

## 4. Or drive manually

You don't have to use the orchestrator. Invoke any stage directly:

```bash
# by name, in conversation:
"run the validate skill"
"use the market skill to plan my content calendar"
```

And check where you are any time:

```bash
/status     # one-screen dashboard of your whole company
/next       # just tells you the single next action
```

## 5. Working with agents

Skills dispatch specialist agents automatically. You can also call one directly
when you want focused help, e.g. "have the sales-closer review my pricing page"
or "ask the security-auditor to look at this auth flow."

## The mental model

- **`COMPANY.md` is the truth.** Open it any time to see your whole company.
- **Skills are departments.** Each one does its stage and updates the ledger.
- **Agents are hires.** Specialists you bring in for focused work.
- **Commands are the front desk.** `/company`, `/next`, `/status`, `/new-company`.

## Tips

- Don't skip `validate`. Building before you've earned the right is the most
  expensive mistake a solo founder makes.
- Run `finance` and `legal` early enough that they don't surprise you.
- The ledger's Decision Log is gold a year from now. Keep it honest.
- It's fine to loop. Pivots send you back to `ideate` or `plan`; that's healthy.
