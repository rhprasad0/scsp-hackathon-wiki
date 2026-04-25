---
title: Citations and missing-field visibility
summary: The system should expose its sources and clearly flag missing information so reviewers can assess the draft before approval.
sources:
  - 2026-04-25-organizer-judging-signal.md
createdAt: "2026-04-25T16:10:02.249Z"
updatedAt: "2026-04-25T16:10:02.249Z"
tags:
  - trust-boundaries
  - ai-safety
  - provenance
aliases:
  - citations-and-missing-field-visibility
  - missing-field visibility and Citations
  - CAMV
---

# Citations and missing-field visibility

Citations and missing-field visibility describe a drafting and review practice in which AI-generated output must show its sources, unresolved fields, assumptions, uncertainty, and review status before it is submitted or approved. The source material treats this visibility as part of trust: a draft is not reliable enough to use if the basis for its claims is hidden or if important inputs are still missing. ^[2026-04-24-genai-mil-concept-seed.md, 2026-04-25-organizer-judging-signal.md]

In the described workflow, the assistant may retrieve approved references, draft structured content, identify missing fields, and flag uncertainty, but it must not invent policy or bypass human review. The human reviewer remains responsible for edits, acceptance, rejection, follow-up questions, and final approval. Citations therefore support reviewable drafting rather than autonomous submission. ^[2026-04-24-genai-mil-concept-seed.md]

The visibility requirement is also tied to public safety and sanitization. Working notes, raw observations, and internal synthesis may remain private, but any downstream export should be public-safe, billboard-safe, and separately sanitized. Even when the system is helping produce a narrow spec or artifact, it should preserve trust boundaries by keeping hidden assumptions and unresolved items explicit to the reviewer. ^[2026-04-24-hackathon-operating-context.md, 2026-04-24-genai-mil-concept-seed.md]

This practice is especially useful in scoped, workflow-specific prototypes where the goal is a correct first draft faster, not a broad autonomous assistant. A reviewable draft with visible citations and missing fields helps reduce rework caused by wrong format, fragmented guidance, and tribal knowledge, while still keeping the workflow bounded and human-governed. ^[2026-04-24-genai-mil-concept-seed.md, 2026-04-24-prior-scsp-winning-project-observations.md]

Related concepts include [[Controlled Reference Retrieval]], [[Human-in-the-Loop Review and Approval]], [[AI-assisted spec with human review]], [[trust boundaries]], and [[draft review workspace]]. ^[2026-04-24-genai-mil-concept-seed.md, 2026-04-25-organizer-judging-signal.md]

## Sources

- [2026-04-24-genai-mil-concept-seed.md]
- [2026-04-25-organizer-judging-signal.md]
- [2026-04-24-hackathon-operating-context.md]
- [2026-04-24-prior-scsp-winning-project-observations.md]
