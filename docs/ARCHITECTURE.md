# Architecture

Founder Stack is built from four primitives that map onto the four things a
company needs: a memory, a set of repeatable processes, specialists to do focused
work, and a manager to coordinate.

| Primitive | Claude Code concept | Role in the company |
|-----------|---------------------|---------------------|
| **Ledger** | a tracked Markdown file (`COMPANY.md`) | Company memory / state |
| **Skills** | `skills/<name>/SKILL.md` | Repeatable departmental processes |
| **Agents** | `agents/<name>.md` subagents | Specialists you dispatch for focused work |
| **Commands** | `commands/<name>.md` | Human entry points (slash commands) |

## Two kinds of skills

- **Lifecycle skills** sit on the linear `Stage` machine (`ideate → … →
  operate`, 14 stages). The orchestrator advances `Stage` through them in order.
  Each owns one numbered ledger section (`## 01`–`## 16`).
- **Cross-cutting skills** are *not* on the `Stage` machine — you run them when
  they're relevant:
  - `finance` and `legal` (business risk), and
  - the 8 **quality skills** (`prototype`, `code-review`, `accessibility`,
    `performance`, `onboarding`, `polish`, `research`, `experiment`).

  The quality skills write to the `## Q · Quality & Discovery` block of the
  ledger and are suggested by the lifecycle stages they support (e.g. `build`
  suggests `code-review`; `launch` requires `accessibility`/`performance`/`polish`
  in its pre-flight gate). This keeps the linear spine clean while letting product
  quality be improved at any point.

## How a stage runs

```
You type /company
        │
        ▼
orchestrator reads COMPANY.md → sees Stage: validate
        │
        ▼
invokes the `validate` skill
        │
        ├─ reads ## 01 Idea for context
        ├─ dispatches the market-researcher agent for demand evidence
        ├─ writes findings to ## 02 Validation
        ├─ appends to Decision Log
        ├─ sets Stage: plan (if it passes) and updates Next Actions
        ▼
hands off → tells you the next skill is `plan`
```

## The linking model

Three mechanisms keep everything connected:

1. **Shared ledger (vertical link).** Stages communicate through `COMPANY.md`
   sections, not by talking to each other directly. This keeps each skill
   independent and testable while still fully informed.

2. **Explicit handoffs (horizontal link).** Every skill ends by naming the next
   skill and updating `Stage`. The `Connected skills` block in each `SKILL.md`
   documents inputs, outputs, the next stage, and which agents it uses.

3. **Orchestration (control link).** `/company` and `/next` read `Stage` and
   route you to the right skill, so you never have to memorize the order.

## Skill anatomy

Every skill follows the same shape so they feel like one product:

```markdown
---
name: <stage>
description: <when to use this skill>
---

# <Stage Name>

## Connected skills
- Reads:    <ledger sections>
- Writes:   <ledger sections>
- Agents:   <which specialists it dispatches>
- Previous: <prior skill>
- Next:     <next skill>

## Goal            — the one outcome this stage produces
## Inputs          — what it needs from the ledger
## Process         — numbered, do-this-then-that steps
## Exit criteria   — how you know the stage is done
## Update the ledger — exactly what to write back
## Handoff         — what to run next
```

## Agent anatomy

Agents are personas with a sharp mandate. A skill dispatches an agent when it
needs deep, focused work (e.g., `validate` dispatches `market-researcher`).
Agents do the work and report back; the skill writes the result to the ledger.

## Design principles

- **One file, one job.** Each skill owns exactly one stage; each agent owns one
  craft.
- **Ledger over chatter.** State lives in `COMPANY.md`, never in a skill's head.
- **Readable without the tool.** Every skill is a plain playbook a human can
  follow with no AI at all.
- **YAGNI.** The stack covers the whole lifecycle but each skill stays lean.
- **Self-contained.** No external dependencies; clone it and it works.
