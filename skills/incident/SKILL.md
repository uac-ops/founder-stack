---
name: incident
description: Respond to a production incident — assess severity, mitigate fast, communicate, fix, and run a blameless postmortem. Use when the user says "site is down", "outage", "production is broken", "users can't log in", "data loss", "incident", or "postmortem". Cross-cutting once live.
---

# Incident — stop the bleeding, then learn

When production breaks, a solo founder has no on-call team. This skill is the
playbook: restore service first, tell users honestly, fix the cause, and make
sure the same failure can't happen silently again.

## Connected skills
- Reads:    `## 08 Deploy`
- Writes:   `## 16 Operations → Incident log`, `## 06 Test → Known bugs`
- Agents:   `devops-engineer`, `debugger`
- Previous: any live stage
- Next:     back to whatever stage was running

## Goal
Service restored fast, users informed, the cause fixed, and a postmortem with
actions that prevent a repeat.

## Inputs
- Hosting, rollback plan, health checks, and error tracking from `## 08 Deploy`.

## Before you start
Check that `## 08 Deploy` is filled in COMPANY.md. If a section you depend on is empty or still `_TBD_`, stop and tell the founder which skill fills it (see the orchestrator's stage table) instead of guessing.

## Process
1. **Assess severity (2 minutes).**
   - **SEV1** — product down, data loss or leak, payments broken.
   - **SEV2** — a core flow broken for many users.
   - **SEV3** — degraded, or a minor flow broken.
   A suspected data leak is always SEV1 and may carry legal deadlines (e.g. 72h
   breach notification under GDPR) — involve `legal`.
2. **Mitigate first, with `devops-engineer`.** Restore service before hunting the
   cause: roll back the last deploy, switch the feature off, scale up, or fail
   over. If a deploy happened recently, rollback is the default.
3. **Communicate.** For SEV1/2, post a short, honest update (status page, X, or
   email): what's affected, that you're on it, and when the next update comes.
   Keep updating until resolved.
4. **Fix the cause with `debugger`** using the `debug` method once service is
   stable. Ship the fix through normal CI, never a hand-edit in production.
5. **Postmortem (within 48h, blameless):** timeline, impact (users, duration,
   money), root cause, why detection took as long as it did, and 1–3 prevention
   actions (a test, an alert, a guardrail) with dates.
6. **Close the loop.** Add the missing alert or health check so this failure is
   caught in minutes next time.

## Exit criteria
- Service restored and verified on the live URL.
- Users informed (SEV1/2) and a resolved notice posted.
- Postmortem written with root cause and dated prevention actions.
- Evidence shown for each criterion above (command output, screenshot, link, or measurement), not just asserted.

## Update the ledger
- Append to `## 16 Operations → Incident log`: date · SEV · duration · cause · actions.
- Log follow-up bugs in `## 06 Test → Known bugs`.
- Decision Log: `YYYY-MM-DD · incident SEV<n> · <cause> · postmortem done`.
- Next Actions: each prevention action as a checkbox.

## Handoff
"Service is back and the failure is now guarded. Do the prevention actions
before the next feature."
