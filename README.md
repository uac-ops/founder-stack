# Founder Stack

[![validate](https://github.com/uac-ops/founder-stack/actions/workflows/validate.yml/badge.svg)](https://github.com/uac-ops/founder-stack/actions/workflows/validate.yml)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

**The operating system for a one-person company.**

Founder Stack is a [Claude Code](https://docs.claude.com/en/docs/claude-code) plugin that turns your terminal into a full company. It gives a solo founder a complete, interlinked set of **skills**, **specialist agents**, and **orchestration commands** that carry a project from a raw idea all the way to a deployed, marketed, and supported product.

Every part is connected through one shared file — `COMPANY.md`, your company ledger — so the marketing skill knows what you built, the sales skill knows your pricing, and the orchestrator always knows what to do next.

> One person. Every department. One command at a time.

---

## Why this exists

A solo founder wears every hat: product, design, engineering, security, ops, marketing, sales, support, finance, legal. Most tools cover one slice. Founder Stack covers the whole company and — critically — **wires the slices together** so nothing falls through the cracks.

- **32 skills** — the 14-stage lifecycle (`ideate` → `operate`), 15 cross-cutting quality skills (spec, data-model, prototype, code-review, debug, ai-evals, accessibility, performance, instrument, onboarding, polish, incident, retention, research, experiment), plus the orchestrator.
- **22 specialist agents** — a researcher, architect, builder, reviewer, designer, closer, and more, each dispatchable for focused work.
- **4 orchestration commands** — `/new-company`, `/company`, `/next`, `/status`.
- **1 shared ledger** — `COMPANY.md` keeps every stage in sync.

---

## Install

Founder Stack is a standard Claude Code plugin distributed straight from this
GitHub repo. In Claude Code, run:

```text
# 1. Add this repo as a plugin marketplace
/plugin marketplace add uac-ops/founder-stack

# 2. Install the plugin (syntax is plugin-name@marketplace-name)
/plugin install founder-stack@founder-stack
```

That's it — the skills, agents, and commands are now available in your
environment. Verify with `/plugin` (you should see founder-stack enabled) or just
run `/new-company`.

**Updating.** When a new version ships, pull the latest catalog and reinstall:

```text
/plugin marketplace update founder-stack
/plugin install founder-stack@founder-stack
```

**Browse without installing.** Prefer to read first? Clone it:

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

## See it in action

Want to know what this looks like once a company is fully built? Read
[`examples/COMPANY.md`](examples/COMPANY.md) — a complete, filled-in ledger for a
fictional company (ShipDigest) that has run the whole lifecycle to `operate`. It
is the fastest way to understand how the pieces connect.

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
| 14 | Operate | `operate` | North-star metrics, dashboards, automations |

The 14 stages above run roughly in order. Two more are **cross-cutting** — run
them whenever money or risk enters the picture, not at a fixed step:

| # | Stage | Skill | What it does | When |
|---|-------|-------|--------------|------|
| ✦ | Finance | `finance` | Runway, MRR, pricing economics | After validate, then monthly |
| ✦ | Legal | `legal` | Entity, ToS/Privacy, IP, compliance | Before launch |

And one conductor that ties it all together:

| # | Stage | Skill | What it does |
|---|-------|-------|--------------|
| 0 | Orchestrate | `orchestrator` | Reads your stage and runs the right skill |

See [`docs/WORKFLOW.md`](docs/WORKFLOW.md) for the full map and handoffs.

## Quality & Discovery skills

These don't sit at a fixed step — they make the **product itself better** and run
whenever they're relevant. Each writes to the `Quality & Discovery` block of your
ledger.

| Skill | What it does | Run it… |
|-------|--------------|---------|
| `prototype` | Test the design with users before building it | After design, before build |
| `code-review` | Catch bugs/security/simplification in the diff | After build, before test |
| `accessibility` | WCAG 2.2 AA — keyboard, screen reader, contrast | Before launch |
| `performance` | Core Web Vitals, bundle, queries, latency | Before launch + in operate |
| `onboarding` | Engineer the path to the "aha moment" | Design/build + refine in operate |
| `polish` | Visual consistency, microcopy, every state | Before launch + in operate |
| `research` | Continuous customer discovery (JTBD) | Continuously |
| `experiment` | A/B tests + metric-driven iteration | In operate |

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
   /company            32 skills             22 agents
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
├── .github/             issue/PR templates + CI workflow
├── commands/            slash-command entry points
├── skills/              32 skills: 14-stage lifecycle + 15 quality + orchestrator
├── agents/              22 specialist subagents
├── templates/           COMPANY.md ledger + artifact templates
├── examples/            a fully worked COMPANY.md
├── scripts/             validate.sh (structure + frontmatter check)
└── docs/                WORKFLOW · ARCHITECTURE · LEDGER · GETTING-STARTED
```

---

## Contributing

Issues and pull requests welcome. See [`CONTRIBUTING.md`](CONTRIBUTING.md).
The fastest way to help: run a stage on a real project, then open a PR
improving that skill with what you learned.

## License

MIT © uac-ops. See [`LICENSE`](LICENSE).
