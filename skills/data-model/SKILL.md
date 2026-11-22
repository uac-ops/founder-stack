---
name: data-model
description: Design the database schema, API contract, and data lifecycle before code depends on them — the hardest decisions to undo. Use when the user says "database schema", "data model", "API design", "what tables do I need", "endpoints", or "migrations", typically between spec and build.
---

# Data model — get the irreversible parts right

Code is cheap to change; data is not. This skill designs the schema, the API
contract, and how data is created, migrated, and deleted, so `build` rests on a
foundation that won't need a painful rewrite.

## Connected skills
- Reads:    `## 03 Plan`, `### Spec`
- Writes:   `### Data Model` (under Quality & Discovery), updates `## 05 Build → Architecture summary`
- Agents:   `architect`
- Previous: `spec`
- Next:     `build`

## Goal
A reviewed schema, an API contract, and a migration and deletion plan that
support every spec'd feature.

## Inputs
- Tech choices (`## 03 Plan`) and feature specs (`### Spec`).

## Before you start
Check that `## 03 Plan`, `### Spec` are filled in COMPANY.md. If a section you depend on is empty or still `_TBD_`, stop and tell the founder which skill fills it (see the orchestrator's stage table) instead of guessing.

## Process
1. **Find the entities** in the specs: nouns that persist (User, Project,
   Invoice). Note who owns each and how many exist per user.
2. **Design the schema with `architect`:**
   - Tables/collections, fields, types, nullability, defaults.
   - Primary keys, foreign keys, unique constraints — enforce invariants in the
     database, not only in code.
   - Indexes for every query the specs imply (list, filter, lookup by slug).
   - Multi-tenancy: how every row is scoped to its owner, so one user can never
     read another's data.
3. **Design the API contract:** each endpoint or action with input, output,
   errors, auth required, and whether it is idempotent. Version it from day one.
4. **Plan the data lifecycle:**
   - **Migrations** — forward-only, reviewed, tested on a copy of real data.
   - **Deletion** — what happens on account deletion (GDPR/CCPA: really delete
     or anonymize), and what cascades.
   - **Backups** — automated, with a restore you have actually tried.
   - **PII** — which fields are personal data; minimize and protect them.
5. **Walk every spec against the model.** Each acceptance criterion must be
   satisfiable with the schema and API as designed. Fix gaps now.

## Exit criteria
- Schema (with constraints and indexes) and API contract written down.
- Every spec'd feature is supported by the model (walkthrough done).
- Tenancy scoping, deletion, migration, and backup/restore plans recorded.
- Evidence shown for each criterion above (command output, screenshot, link, or measurement), not just asserted.

## Update the ledger
- Fill `### Data Model` (entities, schema link, API contract link, lifecycle).
- Add a one-line summary to `## 05 Build → Architecture summary`.
- Decision Log: `YYYY-MM-DD · data model locked · <n> entities`.
- Next Actions: "Run `build` against the specs and data model."

## Handoff
"The foundation is set. Run `build` — and treat any schema change from here as
a reviewed migration, not an edit."
