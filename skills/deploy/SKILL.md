---
name: deploy
description: Get the product live with hosting, CI/CD, environments, health checks, and a rollback plan. Use when COMPANY.md Stage is deploy, or the user says "deploy", "ship it", "go live", "set up CI/CD", "hosting", or "release".
---

# Deploy — get it live and repeatable

Shipping once is luck; shipping repeatably is a system. This stage makes
deployment a single, reversible command.

## Connected skills
- Reads:    `## 03 Plan`, `## 05 Build`, `## 07 Security`
- Writes:   `## 08 Deploy`
- Agents:   `devops-engineer`
- Previous: `secure`
- Next:     `document`

## Goal
A live production URL, a one-command (or auto) deploy, and a tested rollback.

## Inputs
- Stack and hosting choice from `## 03 Plan` / `## 05 Build`.

## Before you start
Check that `## 03 Plan`, `## 05 Build`, `## 07 Security` are filled in COMPANY.md. If a section you depend on is empty or still `_TBD_`, stop and tell the founder which skill fills it (see the orchestrator's stage table) instead of guessing.

## Process
1. **Pick hosting that fits a solo founder.** With `devops-engineer`, favor
   managed platforms (Vercel/Netlify/Fly/Render) over hand-rolled infra. Less to
   babysit.
2. **Environments.** At least production; a staging/preview if cheap. Keep config
   in env vars, secrets in the platform's secret store.
3. **CI/CD.** On push to main: run tests, build, deploy. Block deploys on red
   tests. Keep it simple and fast.
4. **Health checks + analytics.** A health endpoint and an uptime check so you
   know within minutes if prod is down. Also wire up **product analytics** now
   (a privacy-respecting tool is fine) and confirm events fire — `launch`,
   `market`, and `operate` all depend on this data existing, so it must be live
   before you go public. Add error tracking too.
5. **Rollback plan.** One command or one click to revert to the last good
   release. Test it before you need it.
6. **First deploy + smoke test.** Deploy, then walk the critical flow on the live
   URL. Check logs and errors.
7. **Domain + HTTPS.** Custom domain, TLS, redirects.

## Exit criteria
- Live production URL with HTTPS.
- Automated deploy on push; red tests block it.
- Health check live; rollback tested.
- Product analytics + error tracking live and verified.
- Evidence shown for each criterion above (command output, screenshot, link, or measurement), not just asserted.

## Update the ledger
- Fill `## 08 Deploy` (hosting/infra, CI/CD, environments, rollback plan).
- Set `## Meta → Production URL`.
- Decision Log: `YYYY-MM-DD · live at <url> · CI/CD + rollback in place`.
- Set `Stage: document`.
- Next Actions: "Run `document` to write the README and user docs."

## Handoff
"You're live and shipping repeatably. Next run `document` so people can
understand and use it."
