# The Zero-to-Production Workflow

This is the full map of how a one-person company moves from an idea to a live,
growing product. Each stage is a skill. Each arrow is a handoff recorded in
`COMPANY.md`.

```
  IDEA                          BUILD                         GROWTH
  ────                          ─────                         ──────
  ideate ─► validate ─► plan ─► design ─► build ─► test ─► secure ─► deploy
                                                                       │
                                                                       ▼
            operate ◄─ support ◄─ sell ◄─ market ◄─ launch ◄─ document
              │                                                  ▲
              └──────────── continuous loop ────────────────────┘
```

`finance` and `legal` are **cross-cutting**: touch them whenever money or risk
enters the picture (typically right after `validate` and again before `launch`).

## The stages

### 1. ideate — *find the real problem*
Turn a fuzzy idea into a sharp problem statement, a target customer, and the one
riskiest assumption. Output: `## 01 Idea`. **Next:** validate.

### 2. validate — *earn the right to build*
Test demand before writing code. Talk to users, study the status quo, look for
willingness to pay. Make a go / pivot / kill call. **Next:** plan (or loop back
to ideate). Dispatches `market-researcher`, `product-strategist`.

### 3. plan — *scope the smallest winning thing*
Define the MVP, draw the line between in and out, pick the stack, set
milestones. **Next:** design. Dispatches `product-strategist`, `architect`.

### 4. design — *make it desirable*
Brand, positioning, a real design system, and the key flows. **Next:** build.
Dispatches `product-strategist`.

### 5. build — *ship the MVP*
Implement with tests and atomic commits. Keep a tech-debt log. **Next:** test.
Dispatches `architect`, `builder`.

### 6. test — *prove it works*
QA the critical flows, measure coverage, produce a health score, log bugs.
**Next:** secure. Dispatches `qa-engineer`.

### 7. secure — *don't get owned*
Threat model, an OWASP pass, secrets hygiene. **Next:** deploy. Dispatches
`security-auditor`.

### 8. deploy — *get it live and repeatable*
Hosting, CI/CD, environments, a rollback plan, health checks. **Next:**
document. Dispatches `devops-engineer`.

### 9. document — *make it understandable*
README, getting-started, user docs, changelog. **Next:** launch. Dispatches
`technical-writer`.

### 10. launch — *make a moment*
Pick channels (Product Hunt, Hacker News, Reddit, X), build assets, run the day,
capture results. **Next:** market. Dispatches `growth-marketer`.

### 11. market — *build a repeatable channel*
Lock positioning, choose channels, run a content calendar, do SEO. **Next:**
sell. Dispatches `growth-marketer`.

### 12. sell — *turn attention into revenue*
Price and package, build a funnel, run outreach, improve conversion. **Next:**
support. Dispatches `sales-closer`.

### 13. support — *keep customers happy*
Support channels, an FAQ, canned replies, issue triage that feeds the roadmap.
**Next:** operate. Dispatches `support-rep`.

### 14. finance — *keep the lights on* (cross-cutting)
Runway, burn, MRR, pricing economics. Run after validate and before launch, then
monthly. Dispatches `finance-clerk`.

### 15. legal — *stay out of trouble* (cross-cutting)
Business entity, ToS and Privacy, IP, compliance. Run before launch. Dispatches
`legal-advisor`.

### 16. operate — *run the machine*
Define a north-star metric, build dashboards, set up automations and recurring
routines. The steady state. Dispatches `finance-clerk`, `growth-marketer`.

### 0. orchestrator — *the conductor*
Reads `Stage` and runs the right thing. You usually start here via `/company`.

## Quality & Discovery skills (cross-cutting)

These don't have a slot in the linear `Stage` machine. Like `finance` and
`legal`, you run them when they're relevant — and they're what turn a working
product into a *good* one. They write to the `## Q · Quality & Discovery` block
of the ledger.

```
plan ─►[ spec ][ data-model ]─► design ─►[ prototype ]─► build ─►[ code-review ]─► test ─► ... ─► launch
                                                                    ▲
                       before launch: [ accessibility ][ performance ][ polish ]

           continuous: [ research ] feeds plan   ·   [ experiment ] feeds build
           product surface: [ onboarding ] designs the path to first value
```

- **spec** — turn each feature into testable acceptance criteria, edge cases,
  and non-goals. Dispatches `product-strategist`, `architect`. (before `build`)
- **data-model** — schema, API contract, migrations, deletion, backups.
  Dispatches `architect`. (after `spec`, before `build`)
- **debug** — reproduce, isolate, fix the root cause, add a regression test.
  Dispatches `debugger`. (any time)
- **instrument** — question-driven tracking plan, verified in production.
  Dispatches `data-analyst`, `builder`. (after `deploy`, gates `launch`)
- **incident** — severity, mitigate, communicate, fix, blameless postmortem.
  Dispatches `devops-engineer`, `debugger`. (once live)
- **retention** — cohorts, churn reasons, habit loop, win-back. Dispatches
  `data-analyst`, `ux-researcher`. (in `operate`)
- **ai-evals** — rubric, golden set, graders, CI regression checks, injection
  defenses. Dispatches `ai-evaluator`. (after `build`, if the product uses AI)
- **prototype** — test the riskiest design assumption with users before building.
  Dispatches `ux-designer`. (after `design`, before `build`)
- **code-review** — review the diff for bugs, security, and simplification.
  Dispatches `code-reviewer`. (after `build`, before `test`)
- **accessibility** — WCAG 2.2 AA: keyboard, screen reader, contrast, semantics.
  Dispatches `accessibility-specialist`. (before `launch`)
- **performance** — Core Web Vitals, bundle, caching, queries, latency.
  Dispatches `performance-engineer`. (before `launch`, again in `operate`)
- **onboarding** — engineer the shortest path to the aha moment. Dispatches
  `ux-designer`, `copywriter`. (design/build, refined in `operate`)
- **polish** — visual consistency, microcopy, every state handled. Dispatches
  `ux-designer`, `copywriter`. (before `launch`, again in `operate`)
- **research** — continuous customer discovery and JTBD. Dispatches
  `ux-researcher`. Feeds `plan`. (continuous)
- **experiment** — hypothesis-driven A/B and funnel tests. Dispatches
  `data-analyst`. Feeds `build`. (in `operate`)

## Quality gates

Some transitions are **blocked** until a quality skill passes. The orchestrator
checks `## Meta → Gates` before running the next stage:

| Before | Gate |
|--------|------|
| `test` | `code-review` — no open high-confidence correctness/security issues |
| `deploy` | `secure` — no open high/critical findings |
| `launch` | `legal`, `accessibility`, `performance`, `instrument`, `polish` |

Overrides are allowed but must be logged in the Decision Log with a reason.

## Ground rules every skill follows

- **Check before you start.** A skill first checks that the ledger sections it
  reads are filled in, and sends you to the skill that fills them if not.
- **Show evidence.** Exit criteria are met only with evidence (test output,
  screenshots, measurements, links), not just a claim.
- **Rewind, don't patch.** If a later stage finds a root cause that belongs to
  an earlier one, `Stage` moves back to that stage and the rewind is logged.
- **Fixed scoring.** `test` uses a fixed 0–100 health score (ship at ≥ 85, zero
  blockers); accessibility, performance, and secure have concrete thresholds.

## The continuous loop

Once you reach `operate`, you are live. From here you cycle:

```
support (learn) ─► market (reach) ─► sell (convert) ─►
finance (measure) ─► operate (improve) ─► back to support
```

New features re-enter the build loop: `plan → design → build → test → deploy`.
