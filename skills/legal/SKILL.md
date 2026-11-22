---
name: legal
description: Cover the legal basics — business entity, Terms of Service, Privacy Policy, IP, and compliance. Cross-cutting — run before launch. Use when COMPANY.md Stage is legal, or the user says "terms of service", "privacy policy", "legal", "GDPR", "entity", "LLC", or "compliance".
---

# Legal — stay out of trouble

> Not legal advice. This is a checklist to get a solo founder to "good enough to
> launch" and to know when to pay a real lawyer.

Legal is cheap insurance when done early and expensive panic when ignored.

## Connected skills
- Reads:    `## 01 Idea`, `## 08 Deploy`, `## 14 Finance`
- Writes:   `## 15 Legal`
- Agents:   `legal-advisor`
- Previous: cross-cutting (run before `launch`)
- Next:     returns to the stage you came from (usually `launch`)

## Goal
The legal floor under a public launch: an entity (if needed), enforceable terms,
an honest privacy policy, clear IP, and the compliance basics for your users.

## Inputs
- What data you collect (`## 05 Build` / `## 08 Deploy`), where customers are.

## Before you start
Check that `## 01 Idea`, `## 08 Deploy`, `## 14 Finance` are filled in COMPANY.md. If a section you depend on is empty or still `_TBD_`, stop and tell the founder which skill fills it (see the orchestrator's stage table) instead of guessing.

## Process
1. **Business entity.** With `legal-advisor`, decide whether to incorporate now
   (liability, taxes, taking payment). Sole proprietor vs. LLC/Ltd depends on
   country and risk. Get a business bank account if you take money.
2. **Terms of Service.** What users can/can't do, your liability limits,
   termination, governing law. Start from a reputable template; customize.
3. **Privacy Policy.** Be truthful: what you collect, why, who you share it with
   (analytics, payment, email), and how users delete it.
4. **Compliance for your users' regions:**
   - **GDPR** (EU) — lawful basis, consent for tracking, data rights, DPA with
     processors.
   - **CCPA** (California) and similar — disclosure and opt-out.
   - **Payments (PCI)** — use a provider (Stripe/Paddle); never store card data.
   - **Cookies** — consent banner if you track.
5. **IP and licenses.** Confirm you can use your dependencies' licenses. Decide
   your own license/terms. Make sure you own (or are licensed for) your assets.
6. **Know your limits.** Flag anything high-stakes (health, finance, kids' data,
   big contracts) for a real lawyer.

## Exit criteria
- Entity decision made.
- ToS + Privacy published and linked in the footer.
- Compliance basics handled for your audience.
- Evidence shown for each criterion above (command output, screenshot, link, or measurement), not just asserted.

## Update the ledger
- Tick `## Meta → Gates → legal` once exit criteria are met.
- Fill `## 15 Legal` (entity, ToS/Privacy status, licenses/IP, compliance).
- Decision Log: `YYYY-MM-DD · legal floor set · entity = <X> · ToS/Privacy live`.
- Next Actions: return to `launch` (or your previous stage).

## Handoff
"The legal floor is in. You're clear to `launch`. Re-check `legal` when you add
data collection, payments, or new regions."
