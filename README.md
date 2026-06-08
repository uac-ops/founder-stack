# Founder Stack

**The operating system for a one-person company.**

Founder Stack is a [Claude Code](https://docs.claude.com/en/docs/claude-code) plugin that turns your terminal into a full company. It gives a solo founder a complete, interlinked set of **skills**, **specialist agents**, and **orchestration commands** that carry a project from a raw idea all the way to a deployed, marketed, and supported product.

Every part is connected through one shared file — `COMPANY.md`, your company ledger — so the marketing skill knows what you built, the sales skill knows your pricing, and the orchestrator always knows what to do next.

> One person. Every department. One command at a time.

---

## Why this exists

A solo founder wears every hat: product, design, engineering, security, ops, marketing, sales, support, finance, legal. Most tools cover one slice. Founder Stack covers the whole company and — critically — **wires the slices together** so nothing falls through the cracks.

- **17 lifecycle skills** — one per stage, from `ideate` to `operate`.
- **13 specialist agents** — a researcher, architect, builder, closer, and more, each dispatchable for focused work.
- **4 orchestration commands** — `/new-company`, `/company`, `/next`, `/status`.
- **1 shared ledger** — `COMPANY.md` keeps every stage in sync.

---

## Install

Founder Stack is a standard Claude Code plugin.

```bash
# 1. Add this repo as a plugin marketplace
/plugin marketplace add uac-ops/founder-stack

# 2. Install the plugin
/plugin install founder-stack
```

Or clone it and point Claude Code at the folder:

```bash
git clone https://github.com/uac-ops/founder-stack.git
```

Not using Claude Code? Every skill is also a plain-English playbook. Read the
files under [`skills/`](skills/) and follow them by hand.

---

## Quick start

```text
/new-company        # creates COMPANY.md, your ledger
/company            # the orchestrator: figures out your stage and runs it
/next               # "what should I do right now?"
/status             # a one-screen dashboard of your company
```

From there, `/company` walks you stage by stage. Or jump straight to any skill,
for example `ideate`, `validate`, `market`, or `sell`.

---

## The lifecycle

| # | Stage | Skill | What it does |
|---|-------|-------|--------------|
| 1 | Ideate | `ideate` | Sharpen the idea, problem, and riskiest assumption |
| 2 | Validate | `validate` | Test demand before you build. Go / pivot / kill |
| 3 | Plan | `plan` | Scope the MVP, pick the stack, set milestones |
| 4 | Design | `design` | Brand, design system, key flows and mockups |
| 5 | Build | `build` | Ship the MVP with tests, atomic commits |
| 6 | Test | `test` | QA, coverage, a health score |
| 7 | Secure | `secure` | Threat model, OWASP pass, secrets hygiene |
| 8 | Deploy | `deploy` | CI/CD, hosting, environments, rollback |
| 9 | Document | `document` | README, user docs, changelog |
| 10 | Launch | `launch` | Product Hunt / HN / Reddit launch playbook |
| 11 | Market | `market` | Positioning, content, SEO, channels |
| 12 | Sell | `sell` | Pricing, funnel, outreach, conversion |
| 13 | Support | `support` | Support channels, FAQ, issue triage |
| 14 | Finance | `finance` | Runway, MRR, pricing economics |
| 15 | Legal | `legal` | Entity, ToS/Privacy, IP, compliance |
| 16 | Operate | `operate` | North-star metrics, dashboards, automations |
| 0 | Orchestrate | `orchestrator` | The conductor that ties them all together |

See [`docs/WORKFLOW.md`](docs/WORKFLOW.md) for the full map and handoffs.

---

## How it all connects

```
                    ┌─────────────────┐
                    │   COMPANY.md    │  ← the shared ledger
                    │  (your company) │     (single source of truth)
                    └────────┬────────┘
                             │ read / write
        ┌────────────────────┼────────────────────┐
        ▼                    ▼                     ▼
   /company            17 skills             13 agents
  (orchestrator)   ideate → operate     researcher, architect,
   reads Stage,    each reads inputs,    builder, closer, ...
   runs next       writes outputs,       dispatched by skills
                   points to next
```

Read [`docs/ARCHITECTURE.md`](docs/ARCHITECTURE.md) for the design, and
[`docs/LEDGER.md`](docs/LEDGER.md) for the ledger contract every skill follows.

---

## Repository layout

```
founder-stack/
├── .claude-plugin/      plugin + marketplace manifests
├── commands/            slash-command entry points
├── skills/              17 lifecycle skills (each a SKILL.md playbook)
├── agents/              13 specialist subagents
├── templates/           COMPANY.md ledger + artifact templates
└── docs/                WORKFLOW · ARCHITECTURE · LEDGER · GETTING-STARTED
```

---

## Contributing

Issues and pull requests welcome. See [`CONTRIBUTING.md`](CONTRIBUTING.md).
The fastest way to help: run a stage on a real project, then open a PR
improving that skill with what you learned.

## License

MIT © uac-ops. See [`LICENSE`](LICENSE).
