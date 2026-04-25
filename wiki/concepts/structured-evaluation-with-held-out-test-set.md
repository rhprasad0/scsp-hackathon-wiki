---
title: Structured evaluation with held-out test set
summary: The prototype should include a visible eval set with pass/fail results to prove retrieval accuracy, refusal behavior, and readiness for the demo.
sources:
  - 2026-04-25-genai-mil-deep-research-synthesis.md
createdAt: "2026-04-25T16:14:50.902Z"
updatedAt: "2026-04-25T16:14:50.902Z"
tags:
  - evaluation
  - llm-ops
  - testing
aliases:
  - structured-evaluation-with-held-out-test-set
  - SEWHTS
---

# Structured evaluation with held-out test set

A structured evaluation with a held-out test set is a way to measure whether a system can handle a predefined set of cases that are kept separate from the build-and-tune process. In the source material, this is described as a built-in eval that proves the system refuses what it does not know, with measured pass/fail on examples that are not part of the development set. ^[2026-04-25-genai-mil-deep-research-synthesis.md]

In the GenAI.mil context, the held-out set is used to test specific behaviors such as paragraph-level retrieval, correct handling of policy questions, and explicit refusal when the corpus does not support an answer. Example cases include questions about leave accrual, whether a four-day pass can run Tuesday-Friday, and whether PTDY can be combined with ordinary leave. The goal is to demonstrate that the system can answer grounded questions and refuse ungrounded ones with citations. ^[2026-04-25-genai-mil-deep-research-synthesis.md]

The evaluation is intended to be visible in the demo, not hidden behind a general claim of quality. The source material recommends showing a measured pass/fail scoreboard, along with the system’s refusals and citations, so judges can see both capability and trust boundaries. This fits a broader pattern of reviewable drafting and visible uncertainty rather than autonomous correctness claims. ^[2026-04-25-genai-mil-deep-research-synthesis.md, 2026-04-24-genai-mil-concept-seed.md]

Structured evaluation is especially useful when the system is narrow and workflow-specific. It helps confirm that the assistant can support a bounded task, reduce rework, and avoid inventing unsupported details, while still keeping the prototype operationally legible and human-governed. Related concepts include [[Citations and missing-field visibility]], [[AI-assisted spec with human review]], [[Controlled Reference Retrieval]], and [[Scoped Prototype Wedge]]. ^[2026-04-25-genai-mil-deep-research-synthesis.md, 2026-04-24-genai-mil-concept-seed.md]

## Sources

- [2026-04-25-genai-mil-deep-research-synthesis.md]
- [2026-04-24-genai-mil-concept-seed.md]
