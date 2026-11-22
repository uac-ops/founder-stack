---
name: secure
description: Threat-model the product, run an OWASP-style pass, and lock down secrets before going live. Use when COMPANY.md Stage is secure, or the user says "security review", "is this secure", "threat model", "secrets", "auth review", or "OWASP".
---

# Secure — don't get owned

A breach can end a one-person company before it starts. This stage finds the
real risks for *your* product and fixes the ones that matter.

## Connected skills
- Reads:    `## 05 Build`, `## 08 Deploy`
- Writes:   `## 07 Security`
- Agents:   `security-auditor`
- Previous: `test`
- Next:     `deploy`

## Goal
A short threat model, fixed high-severity findings, and clean secrets hygiene.

## Inputs
- Architecture and stack from `## 05 Build`.

## Before you start
Check that `## 05 Build`, `## 08 Deploy` are filled in COMPANY.md. If a section you depend on is empty or still `_TBD_`, stop and tell the founder which skill fills it (see the orchestrator's stage table) instead of guessing.

## Process
1. **Threat model (lightweight STRIDE).** With `security-auditor`, ask for each
   entry point: what can be spoofed, tampered, leaked, denied, or escalated?
   Focus on auth, data, and money flows.
2. **OWASP pass on the basics:**
   - **Auth & sessions** — strong defaults, no broken access control.
   - **Input handling** — validate/escape; parameterized queries (no SQL injection).
   - **Secrets** — none in the repo; use env vars / a secret manager. Rotate any
     that leaked.
   - **Dependencies** — audit for known CVEs; update the risky ones.
   - **Transport** — HTTPS everywhere; secure cookies.
   - **Errors** — no stack traces or secrets in responses.
3. **AI/LLM surfaces (if any).** Treat model output as untrusted; guard against
   prompt injection at trust boundaries.
4. **Fix by severity.** High and critical now. Log medium/low with a plan.
5. **Verify the fixes.** Re-test the exploit paths you found.

## Exit criteria
- Threat model documented.
- No open high/critical findings.
- Secrets out of the repo and managed properly (a secret scan of the full git
  history is clean).
- Tick `## Meta → Gates → secure`.
- Evidence shown for each criterion above (command output, screenshot, link, or measurement), not just asserted.

## Update the ledger
- Fill `## 07 Security` (threat model summary, findings + status, secrets mgmt).
- Decision Log: `YYYY-MM-DD · security pass · high/critical = 0`.
- Set `Stage: deploy`.
- Next Actions: "Run `deploy` to get it live with CI/CD and rollback."

## Handoff
"Security holds. Next run `deploy` to ship it live, repeatably."
