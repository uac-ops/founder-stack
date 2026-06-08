# Contributing to Founder Stack

Thanks for helping make the solo-founder toolkit better. The best contributions
come from people who *ran a stage on a real project* and learned something.

## Ways to contribute

- **Improve a skill.** Ran `validate` or `launch` for real? Open a PR with the
  steps, prompts, or checklists that actually worked.
- **Add an agent.** A sharp new specialist that several skills could dispatch.
- **Fix the connective tissue.** Better handoffs, clearer ledger sections.
- **Docs and examples.** A worked example company is hugely valuable.

## Ground rules

1. **Keep the ledger contract.** Any skill you touch must still read from and
   write to `COMPANY.md` per [`docs/LEDGER.md`](docs/LEDGER.md).
2. **Follow the skill anatomy.** Match the structure in
   [`docs/ARCHITECTURE.md`](docs/ARCHITECTURE.md): `Connected skills`, `Goal`,
   `Inputs`, `Process`, `Exit criteria`, `Update the ledger`, `Handoff`.
3. **Readable without the tool.** Every skill must work as a plain playbook a
   human can follow. No magic.
4. **Stay lean.** One file, one job. Resist scope creep inside a skill.
5. **No external dependencies.** Clone-and-go must keep working.

## Skill frontmatter

```markdown
---
name: kebab-case-name
description: One line — when should Claude reach for this skill?
---
```

The `name` must match the folder under `skills/`.

## Pull requests

- One logical change per PR.
- Update [`CHANGELOG.md`](CHANGELOG.md) under "Unreleased".
- If you add a skill or agent, link it from the README table and
  `docs/WORKFLOW.md`.

## License

By contributing you agree your work is released under the [MIT License](LICENSE).
