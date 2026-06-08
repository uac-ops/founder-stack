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

## The continuous loop

Once you reach `operate`, you are live. From here you cycle:

```
support (learn) ─► market (reach) ─► sell (convert) ─►
finance (measure) ─► operate (improve) ─► back to support
```

New features re-enter the build loop: `plan → design → build → test → deploy`.
