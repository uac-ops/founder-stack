<!--
  COMPANY.md — Founder Stack Ledger
  =================================
  This is the single source of truth for your one-person company.
  Copy it into the ROOT of your project, then let the founder-stack
  skills read and update it as you move from idea to production.

  Rules of the ledger:
  - Every skill READS this file for context before it acts.
  - Every skill WRITES its results back into its section.
  - `Stage` is the one field that drives the whole pipeline. The
    orchestrator (/company, /next) reads it to know what runs next.
  - Never delete history. Append. The Decision Log is your memory.
-->

# COMPANY.md

## Meta
- **Company / project name:** _TBD_
- **One-liner:** _What you do, for whom, in one sentence._
- **Founder:** _your name_
- **Stage:** `ideate`
  <!-- ideate → validate → plan → design → build → test → secure →
       deploy → document → launch → market → sell → support → operate -->
- **Created:** _YYYY-MM-DD_
- **Last updated:** _YYYY-MM-DD_
- **Production URL:** _TBD_
- **Repo:** _TBD_
- **Gates:** <!-- ticked by the gate skill, with evidence in its section; checked by the orchestrator -->
  - [ ] code-review (before test)
  - [ ] secure (before deploy)
  - [ ] legal (before launch)
  - [ ] accessibility (before launch)
  - [ ] performance (before launch)
  - [ ] instrument (before launch)
  - [ ] polish (before launch)

---

## 01 · Idea  <!-- skill: ideate -->
- **Problem:**
- **Target customer:**
- **Proposed solution:**
- **Why now / unfair advantage:**
- **Riskiest assumption:**

## 02 · Validation  <!-- skill: validate -->
- **Demand evidence:**
- **Competitors / status quo:**
- **Pricing signal / willingness to pay:**
- **Go / pivot / kill decision:**

## 03 · Plan  <!-- skill: plan -->
- **Scope (in / out):**
- **MVP definition:**
- **Milestones:**
- **Tech choices:**

## 04 · Design  <!-- skill: design -->
- **Brand / positioning:**
- **Design system (color, type, layout):**
- **Key screens / flows:**
- **Link to mockups:**

## 05 · Build  <!-- skill: build -->
- **Architecture summary:**
- **Repos / services:**
- **Feature status:**
- **Tech debt log:**

## 06 · Test  <!-- skill: test -->
- **Test strategy:**
- **Coverage / health score:**
- **Known bugs:**

## 07 · Security  <!-- skill: secure -->
- **Threat model summary:**
- **Findings + status:**
- **Secrets management:**

## 08 · Deploy  <!-- skill: deploy -->
- **Hosting / infra:**
- **CI/CD:**
- **Environments:**
- **Rollback plan:**

## 09 · Docs  <!-- skill: document -->
- **README status:**
- **User docs:**
- **Changelog:**

## 10 · Launch  <!-- skill: launch -->
- **Launch channels (PH / HN / Reddit / X):**
- **Launch assets:**
- **Launch date:**
- **Results:**

## 11 · Marketing  <!-- skill: market -->
- **Positioning / messaging:**
- **Channels:**
- **Content calendar:**
- **SEO / keywords:**

## 12 · Sales  <!-- skill: sell -->
- **Pricing & packaging:**
- **Funnel:**
- **Outreach list:**
- **Conversion notes:**

## 13 · Support  <!-- skill: support -->
- **Support channels:**
- **FAQ / canned replies:**
- **Top issues:**

## 14 · Finance  <!-- skill: finance -->
- **Runway / burn:**
- **Revenue (MRR):**
- **Costs:**
- **Pricing economics:**

## 15 · Legal  <!-- skill: legal -->
- **Business entity:**
- **ToS / Privacy status:**
- **Licenses / IP:**
- **Compliance (GDPR, etc.):**

## 16 · Operations  <!-- skill: operate -->
- **Key metrics (north star):**
- **Dashboards:**
- **Recurring routines:**
- **Automations:**
- **Incident log:** <!-- skill: incident · date · SEV · duration · cause · actions -->

---

## Q · Quality & Discovery
<!-- Cross-cutting quality skills. Run when relevant, not at a fixed step. -->

### Spec            <!-- skill: spec -->
### Data Model      <!-- skill: data-model -->
### Instrumentation <!-- skill: instrument -->
### Retention       <!-- skill: retention -->
### AI Evals        <!-- skill: ai-evals -->
### Research        <!-- skill: research -->
### Prototype       <!-- skill: prototype -->
### Code Review     <!-- skill: code-review -->
### Accessibility   <!-- skill: accessibility -->
### Performance     <!-- skill: performance -->
### Onboarding      <!-- skill: onboarding -->
### Polish          <!-- skill: polish -->
### Experiments     <!-- skill: experiment -->

---

## Decision Log
<!-- Append-only. One line per decision. Date · what · why. -->
- _YYYY-MM-DD · Started the company · ran /new-company_

## Next Actions
<!-- The orchestrator and /next maintain this list. -->
- [ ] Run `/company` (or the `ideate` skill) to sharpen the idea.
