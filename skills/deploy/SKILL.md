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

## Process
1. **Pick hosting that fits a solo founder.** With `devops-engineer`, favor
   managed platforms (Vercel/Netlify/Fly/Render) over hand-rolled infra. Less to
   babysit.
2. **Environments.** At least production; a staging/preview if cheap. Keep config
   in env vars, secrets in the platform's secret store.
3. **CI/CD.** On push to main: run tests, build, deploy. Block deploys on red
   tests. Keep it simple and fast.
4. **Health checks.** A health endpoint and an uptime check. Know within minutes
   if prod is down.
5. **Rollback plan.** One command or one click to revert to the last good
   release. Test it before you need it.
6. **First deploy + smoke test.** Deploy, then walk the critical flow on the live
   URL. Check logs and errors.
7. **Domain + HTTPS.** Custom domain, TLS, redirects.

## Exit criteria
- Live production URL with HTTPS.
- Automated deploy on push; red tests block it.
- Health check live; rollback tested.

## Update the ledger
- Fill `## 08 Deploy` (hosting/infra, CI/CD, environments, rollback plan).
- Set `## Meta → Production URL`.
- Decision Log: `YYYY-MM-DD · live at <url> · CI/CD + rollback in place`.
- Set `Stage: document`.
- Next Actions: "Run `document` to write the README and user docs."

## Handoff
"You're live and shipping repeatably. Next run `document` so people can
understand and use it."
