---
name: performance
description: Measure and improve product speed — Core Web Vitals, bundle size, images, caching, database queries, and API latency. Use when the user says "performance", "speed", "it's slow", "Core Web Vitals", "page load", "optimize", or "bundle size", typically before launch and during operate.
---

# Performance — speed is a feature

Users feel slowness as low quality and bounce. This stage measures real
performance, fixes the biggest offenders, and verifies the gain.

## Connected skills
- Reads:    `## 05 Build`, `## 08 Deploy`
- Writes:   `### Performance` (under Quality & Discovery)
- Agents:   `performance-engineer`
- Previous: `build` / `deploy`
- Next:     back to the flow (run before `launch`, repeat in `operate`)

## Goal
Core flows that load and respond fast on real-world devices and networks, with
measurements to prove it.

## Inputs
- The live or staging build and its key pages.

## Process
1. **Measure first — never guess.** With `performance-engineer`, capture a
   baseline:
   - **Frontend:** Core Web Vitals (LCP, INP, CLS), Lighthouse score, bundle
     size, time-to-interactive on a throttled mid-tier device.
   - **Backend:** p95 latency on key endpoints, slow queries, N+1s.
2. **Find the biggest wins.** Rank by impact × effort. Usually:
   - Oversized images (compress, resize, modern formats, lazy-load).
   - Heavy JS bundles (code-split, drop unused deps, defer).
   - Missing caching (CDN, HTTP cache, memoization).
   - Slow/duplicated DB queries (index, batch, fix N+1).
   - Render-blocking resources.
3. **Fix the top few,** not everything. Avoid premature micro-optimization.
4. **Re-measure.** Prove the improvement against the baseline. Keep a budget
   (e.g. LCP < 2.5s) so it doesn't regress.

## Exit criteria
- Core Web Vitals in the "good" range on key pages.
- Key endpoints within their latency budget.
- A before/after measurement recorded.

## Update the ledger
- Fill `### Performance` (baseline, fixes, after numbers, budget).
- Decision Log: `YYYY-MM-DD · perf pass · LCP <baseline>→<after>`.
- Next Actions: set a perf budget; recheck in `operate`.

## Handoff
"It's fast. Continue toward `launch`. Re-run `performance` in `operate` to catch
regressions as the product grows."
