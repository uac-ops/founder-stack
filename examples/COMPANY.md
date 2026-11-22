<!--
  EXAMPLE — a fully worked Founder Stack ledger for a fictional company.
  Read this to see what a real COMPANY.md looks like once you've moved through
  the whole lifecycle. Yours starts mostly empty (see templates/COMPANY.md) and
  fills in stage by stage. Nothing here is real; it's a teaching artifact.
-->

# COMPANY.md

## Meta
- **Company / project name:** ShipDigest
- **One-liner:** ShipDigest turns a solo dev's GitHub activity into a weekly
  build-in-public email their audience actually reads.
- **Founder:** Alex Rivera
- **Stage:** `operate`
- **Created:** 2026-01-12
- **Last updated:** 2026-05-30
- **Production URL:** https://shipdigest.app
- **Repo:** https://github.com/alexr/shipdigest
- **Gates:** <!-- ticked by the gate skill, with evidence in its section; checked by the orchestrator -->
  - [x] code-review (before test)
  - [x] secure (before deploy)
  - [x] legal (before launch)
  - [x] accessibility (before launch)
  - [x] performance (before launch)
  - [x] instrument (before launch)
  - [x] polish (before launch)

---

## 01 · Idea  <!-- skill: ideate -->
- **Problem:** Indie devs want to "build in public" but writing a weekly update
  is friction they skip after week three.
- **Target customer:** Solo developers and tiny teams shipping a SaaS who already
  post on X but post inconsistently.
- **Proposed solution:** Connect GitHub; every Friday we draft a human-sounding
  weekly digest from commits/PRs/releases and email it for one-click send.
- **Why now / unfair advantage:** Build-in-public is mainstream; LLMs make the
  draft good enough to send with light edits. Alex has 4k followers to seed it.
- **Riskiest assumption:** Devs will trust an auto-drafted update enough to send
  it under their own name.

## 02 · Validation  <!-- skill: validate -->
- **Demand evidence:** 14 of 20 target devs interviewed said they'd tried and
  quit weekly updates. 9 said they'd pay to keep the habit. Smoke-test landing
  page got 180 waitlist signups in 10 days from two X posts.
- **Competitors / status quo:** Manual (Notion + memory), Buffer/Typefully
  (scheduling, not drafting), generic AI writers (no GitHub context). Gap:
  GitHub-aware drafting + the sending habit.
- **Pricing signal / willingness to pay:** Most named $5–15/mo. Anchored on
  Typefully (~$12.50/mo).
- **Go / pivot / kill decision:** GO — clear habit pain + willingness to pay.

## 03 · Plan  <!-- skill: plan -->
- **Scope (in / out):** IN: GitHub OAuth, weekly draft, email send, edit-before-
  send. OUT (fast-follow): X auto-post, teams, multiple repos per digest,
  analytics on opens.
- **MVP definition:** A user connects one repo and receives one good weekly
  digest they can edit and send.
- **Milestones:** W1 auth+ingest · W2 draft engine · W3 email+edit · W4 polish+
  deploy.
- **Tech choices:** Next.js + Postgres (Supabase), Resend for email, GitHub App,
  Claude for drafting. Hosted on Vercel.

## 04 · Design  <!-- skill: design -->
- **Brand / positioning:** Calm, credible, a little playful. "Your shipping,
  worth sharing."
- **Design system (color, type, layout):** Ink-on-paper neutrals + one signal
  green (#1F9D55). Inter for UI, a mono accent for commit snippets. 8px spacing.
- **Key screens / flows:** Connect repo → preview first digest → schedule →
  weekly review email. Empty state shows a sample digest.
- **Link to mockups:** ./design/DESIGN.md

## 05 · Build  <!-- skill: build -->
- **Architecture summary:** Next.js app + a weekly cron worker that pulls GitHub
  events, calls the draft engine, and queues emails. Draft engine isolated behind
  one interface so the model is swappable.
- **Repos / services:** monorepo (web + worker), Supabase, Resend.
- **Feature status:** Auth ✅ · ingest ✅ · draft engine ✅ · email/edit ✅.
- **Tech debt log:** Cron is a single Vercel scheduled function (fine < 5k users,
  revisit then). No retry on Resend failures yet (logged).

## 06 · Test  <!-- skill: test -->
- **Test strategy:** Unit tests on the draft formatter; integration test on the
  GitHub→draft path with fixture events; one e2e for connect→preview.
- **Coverage / health score:** Critical paths covered; health 8.5/10 (lint clean,
  no console errors, e2e green).
- **Known bugs:** Long PR titles overflow the email on mobile (low, logged).

## 07 · Security  <!-- skill: secure -->
- **Threat model summary:** Main assets: GitHub tokens + user emails. Risks:
  token leakage, draft prompt-injection from repo content.
- **Findings + status:** Tokens encrypted at rest ✅. Repo text treated as
  untrusted in the draft prompt ✅. Rate-limited send endpoint ✅. No high/critical
  open.
- **Secrets management:** All in Vercel env + Supabase vault; none in repo.

## 08 · Deploy  <!-- skill: deploy -->
- **Hosting / infra:** Vercel (web + cron), Supabase (db), Resend (email).
- **CI/CD:** GitHub Actions: test → build → deploy on push to main; red tests
  block.
- **Environments:** Production + Vercel preview per PR.
- **Rollback plan:** Vercel "Promote previous deployment" (one click, tested).
- **Analytics:** Plausible (privacy-friendly) + Sentry for errors, both verified.

## 09 · Docs  <!-- skill: document -->
- **README status:** Done — one-liner, GIF, 60-sec quick start.
- **User docs:** How-to (connect a repo), reference (what data we read), FAQ.
- **Changelog:** Live at /changelog, updated per release.

## 10 · Launch  <!-- skill: launch -->
- **Launch channels:** Product Hunt + Show HN + the 180-person waitlist + X
  thread with a demo clip.
- **Launch assets:** Tagline, 5 gallery images, 45-sec demo, PH first comment.
- **Launch date:** 2026-03-04.
- **Results:** #4 Product Hunt product of the day. 1,250 visits, 320 signups, 41
  paid in week one.

## 11 · Marketing  <!-- skill: market -->
- **Positioning / messaging:** For solo devs who want to build in public without
  the weekly writing chore. Promise: a sendable update in 2 minutes.
- **Channels:** Primary = build-in-public on X (dogfooding our own product).
  Secondary = SEO.
- **Content calendar:** 1 X thread/week (auto-drafted by ShipDigest), 1 blog
  post/2 weeks.
- **SEO / keywords:** "build in public tools", "weekly dev update", "changelog
  email".

## 12 · Sales  <!-- skill: sell -->
- **Pricing & packaging:** Free (1 repo, manual send) · Pro $9/mo (auto-draft +
  schedule) · Team $29/mo (3 seats). Pro is the default.
- **Funnel:** Landing → connect repo (aha) → preview digest → paywall on
  scheduling.
- **Outreach list:** Self-serve; no manual outreach at this price.
- **Conversion notes:** 13% free→paid after the first sent digest; biggest drop
  is connect→preview (improving onboarding copy).

## 13 · Support  <!-- skill: support -->
- **Support channels:** Email + in-app widget; 1-business-day response.
- **FAQ / canned replies:** Connect issues, "why is a commit missing", billing.
- **Top issues:** GitHub permission confusion (→ fixing the connect screen copy).

## 14 · Finance  <!-- skill: finance -->
- **Runway / burn:** Bootstrapped. Costs ~$140/mo (Vercel, Supabase, Resend,
  Plausible). Revenue covers it as of April.
- **Revenue (MRR):** $1,180 MRR (118 paying), up from $370 at launch.
- **Costs:** Infra $140/mo + Claude API ~$60/mo at current volume.
- **Pricing economics:** ~$1.10 cost to serve a Pro user/mo vs $9 price. Healthy
  margin.

## 15 · Legal  <!-- skill: legal -->
- **Business entity:** Single-member LLC (US).
- **ToS / Privacy status:** Both live, linked in footer.
- **Licenses / IP:** Deps audited (MIT/Apache). Brand assets original.
- **Compliance (GDPR, etc.):** Plausible = no cookie banner needed; DPA with
  Resend & Supabase; data export + delete implemented.

## 16 · Operations  <!-- skill: operate -->
- **Key metrics (north star):** Digests *sent* per week (captures real value).
- **Dashboards:** One Notion page pulling Plausible + Stripe + Sentry weekly.
- **Recurring routines:** Mon metrics review, Wed content, Fri support sweep.
- **Automations:** Onboarding email sequence, payment-failure alerts, weekly
  metrics digest (built with ShipDigest itself).

---

## Q · Quality & Discovery

### Spec            <!-- skill: spec -->
### Data Model      <!-- skill: data-model -->
### Instrumentation <!-- skill: instrument -->
### Retention       <!-- skill: retention -->
### AI Evals        <!-- skill: ai-evals -->
### Research        <!-- skill: research -->
Monthly: 4 user interviews. Latest finding — users distrust the draft until they
see it match their *voice*, so we added a one-time tone calibration. JTBD: "make
me look consistent without the weekly chore."

### Prototype       <!-- skill: prototype -->
Pre-build clickable Figma of the connect→preview flow tested with 5 devs. 3 of 5
missed the "edit before send" affordance → moved Edit to a primary button before
building.

### Code Review     <!-- skill: code-review -->
Gate on every PR (solo, but reviewed via the code-review skill). Caught an
unescaped repo description flowing into the email HTML (XSS) before it shipped.

### Accessibility   <!-- skill: accessibility -->
WCAG 2.2 AA on connect + preview + settings. Keyboard + VoiceOver pass; fixed
unlabeled icon buttons and low-contrast secondary text. No blockers open.

### Performance     <!-- skill: performance -->
Baseline LCP 3.1s → 1.8s after image compression + code-split of the editor.
Digest cron p95 4.2s → 1.1s after fixing an N+1 on commit fetch. Budget: LCP <2.5s.

### Onboarding      <!-- skill: onboarding -->
Aha = "previewed your first digest." Cut signup→aha from 6 steps to 3 with GitHub
one-click + a sample digest on empty state. Activation = preview within 10 min of
signup (currently 61%).

### Polish          <!-- skill: polish -->
Pre-launch pass: unified spacing scale, added loading/empty/error states to the
digest list, rewrote 12 microcopy strings, removed the generic gradient hero for
a real sample-digest screenshot.

### Experiments     <!-- skill: experiment -->
A/B: "Send test to myself" button on preview. Hypothesis: lowers send anxiety,
raises free→paid. Result: +3.1pp free→paid (p<0.05, 2-week run) → shipped.

---

## Decision Log
- 2026-01-12 · Started the company · ran /new-company
- 2026-01-15 · ideate · riskiest assumption = devs will send auto-drafted updates
- 2026-01-26 · validate = GO · 9/20 would pay, 180 waitlist
- 2026-01-27 · finance · first unit-economics sketch; margins fine at $9
- 2026-01-31 · plan · MVP = one repo → one sendable digest; X auto-post deferred
- 2026-02-21 · build · MVP feature-complete, e2e green
- 2026-02-26 · secure · treated repo text as untrusted in draft prompt
- 2026-03-01 · legal · LLC + ToS/Privacy live ahead of launch
- 2026-03-04 · launched · PH #4, 320 signups, 41 paid
- 2026-04-10 · sell · raised Pro $7→$9 after no churn signal
- 2026-05-30 · operate · north star = weekly digests sent

## Next Actions
- [ ] Improve connect→preview onboarding (biggest funnel drop)
- [ ] Ship X auto-post (top fast-follow request from support)
- [ ] Monthly finance refresh (due ~2026-06-12)
