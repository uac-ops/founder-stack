# Changelog

All notable changes to Founder Stack are documented here. Format follows
[Keep a Changelog](https://keepachangelog.com/), versions follow
[SemVer](https://semver.org/).

## [Unreleased]

## [0.1.2] — 2026-06-08

### Fixed
- Install instructions now use the correct `plugin-name@marketplace-name` syntax
  (`/plugin install founder-stack@founder-stack`) in the README and
  getting-started guide, plus update instructions. Verified against the current
  Claude Code plugin-marketplace docs.

### Added
- **8 quality skills** (cross-cutting, not on the linear Stage machine):
  `prototype`, `code-review`, `accessibility`, `performance`, `onboarding`,
  `polish`, `research`, `experiment`. They write to a new `## Q · Quality &
  Discovery` block in the ledger.
- **7 specialist agents**: `code-reviewer`, `accessibility-specialist`,
  `performance-engineer`, `ux-designer`, `copywriter`, `ux-researcher`,
  `data-analyst`.
- Quality & Discovery block added to the `COMPANY.md` template and the worked
  example.

### Changed
- Stages now suggest the relevant quality skills: `design`→`prototype`/
  `onboarding`, `build`→`code-review`/`accessibility`/`performance`,
  `validate`→`research`, and the `operate` loop pulls in `research`/`experiment`.
- `launch` pre-flight gate now requires the `accessibility`, `performance`, and
  `polish` passes.
- Orchestrator documents and suggests the quality skills at the right moments.
- Totals are now 25 skills and 20 agents (README, WORKFLOW, ARCHITECTURE,
  marketplace updated).

## [0.1.1] — 2026-06-08

### Fixed
- `/new-company` now resolves the ledger template via `${CLAUDE_PLUGIN_ROOT}`, so
  it works when installed as a plugin (previously used a path that only resolved
  in a clone).
- Lifecycle numbering is consistent: 14 linear stages with `finance` and `legal`
  marked cross-cutting. Fixed the README table and the `/status` "step N of 14".

### Added
- Worked example: `examples/COMPANY.md` (a complete filled-in ledger) + README.
- Community files: `SECURITY.md`, `CODE_OF_CONDUCT.md`, issue templates, and a
  pull request template.
- CI: `scripts/validate.sh` and a GitHub Actions workflow that validate skill,
  agent, and command frontmatter, name/folder matching, and the plugin JSON.
- `.gitattributes` to normalize line endings across platforms.
- Analytics + error tracking are now an explicit part of the `deploy` stage.
- The orchestrator now guards the cross-cutting stages (blocks `launch` until
  `legal` is done; nudges `finance` after validate and monthly).

## [0.1.0] — 2026-06-08

### Added
- Initial release of Founder Stack.
- The `COMPANY.md` ledger contract and template.
- 17 lifecycle skills: `orchestrator`, `ideate`, `validate`, `plan`, `design`,
  `build`, `test`, `secure`, `deploy`, `document`, `launch`, `market`, `sell`,
  `support`, `finance`, `legal`, `operate`.
- 13 specialist agents: `market-researcher`, `product-strategist`, `architect`,
  `builder`, `qa-engineer`, `security-auditor`, `devops-engineer`,
  `technical-writer`, `growth-marketer`, `sales-closer`, `support-rep`,
  `finance-clerk`, `legal-advisor`.
- 4 orchestration commands: `/new-company`, `/company`, `/next`, `/status`.
- Documentation: `WORKFLOW`, `ARCHITECTURE`, `LEDGER`, `GETTING-STARTED`.
- Claude Code plugin + marketplace manifests.
