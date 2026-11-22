---
name: ai-evals
description: Measure and guard the quality of AI/LLM features — a golden eval set, graded outputs, regression checks on every prompt or model change, and prompt-injection defenses. Use when the product has an AI feature or the user says "evals", "LLM quality", "the AI gives bad answers", "prompt engineering", "hallucination", or "prompt injection".
---

# AI evals — make AI quality measurable

An AI feature that works in the demo can fail on real inputs, and a prompt tweak
can quietly break it. This skill makes AI output quality a number you track and
a test that blocks regressions.

## Connected skills
- Reads:    `## 03 Plan`, `## 05 Build`
- Writes:   `### AI Evals` (under Quality & Discovery)
- Agents:   `ai-evaluator`
- Previous: `build`
- Next:     `test`; rerun on every prompt or model change

## Goal
A golden eval set with graded results, a pass threshold, and an eval run that
blocks regressions in CI.

## Inputs
- The AI features and model choices (`## 03 Plan`, `## 05 Build`). Skip this skill if the product has no AI feature.

## Before you start
Check that `## 03 Plan`, `## 05 Build` are filled in COMPANY.md. If a section you depend on is empty or still `_TBD_`, stop and tell the founder which skill fills it (see the orchestrator's stage table) instead of guessing.

## Process
1. **Define "good" per AI feature** with `ai-evaluator`: what a correct output
   must contain, must never contain, and its format. Write it as a rubric.
2. **Build a golden set:** 30–100 real or realistic inputs covering common
   cases, edge cases, adversarial inputs, and past failures, each with an
   expected output or rubric notes.
3. **Grade outputs.** Use code checks wherever possible (format, required fields,
   exact answers). Use an LLM grader with the rubric for open-ended output, and
   check the grader against your own judgment on 10+ cases.
4. **Set the threshold** (e.g. ≥ 90% pass, 0 safety failures) and record the
   baseline for the current prompt and model.
5. **Guard the trust boundary.** Treat model output as untrusted: validate it
   before acting on it, never let it trigger irreversible actions alone, and
   include prompt-injection cases (instructions hidden in user content or
   fetched pages) in the golden set.
6. **Wire it into CI.** Any change to prompts, model, or retrieval runs the
   evals; a drop below the threshold blocks the merge.
7. **Track cost and latency** per call alongside quality.

## Exit criteria
- Rubric and golden set (≥ 30 cases, including adversarial) committed to the repo.
- Baseline score meets the threshold, with 0 safety failures.
- Evals run in CI on prompt, model, or retrieval changes.
- Evidence shown for each criterion above (command output, screenshot, link, or measurement), not just asserted.

## Update the ledger
- Fill `### AI Evals` (features, rubric, set size, threshold, baseline, cost/latency).
- Decision Log: `YYYY-MM-DD · AI evals baseline <score> · model <name>`.
- Next Actions: "Add every AI failure users report to the golden set."

## Handoff
"AI quality is now measured and protected. Every new failure becomes a test
case."
