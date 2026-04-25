---
title: Over-refusal when grounding is missing
summary: If the corpus does not support an answer, the system should refuse rather than generate a plausible-sounding response without evidence, because hallucinations can create real operational risk.
sources:
  - 2026-04-25-genai-mil-user-workflows-and-trust-boundaries.md
createdAt: "2026-04-25T16:15:10.619Z"
updatedAt: "2026-04-25T16:15:10.619Z"
tags:
  - safety
  - retrieval-augmented-generation
  - reliability
aliases:
  - over-refusal-when-grounding-is-missing
  - OWGIM
---

# Over-refusal when grounding is missing

Over-refusal when grounding is missing is a trust-boundary behavior in which an AI system refuses to answer unless it can anchor the response in approved source material. In the GenAI.mil context, this is presented as a deliberate safety posture: hallucination is treated as mission risk, and a wrong answer without support is considered more dangerous than no answer at all. ^[2026-04-25-genai-mil-user-workflows-and-trust-boundaries.md]

This behavior is especially relevant in retrieval-grounded workflows such as Army regulation Q&A, where the assistant is expected to quote and cite the relevant paragraph rather than produce a free-form answer. The source material explicitly recommends hard refusal when the corpus does not support the answer, along with paragraph-level citations when it does. ^[2026-04-25-genai-mil-user-workflows-and-trust-boundaries.md]

The same pattern appears across other administrative workflows in the source material: AI-assisted spec drafting should identify missing fields and flag uncertainty, but must not invent operational facts; back-office outputs should show sources, assumptions, unresolved fields, uncertainty, and review status; and draft artifacts should remain reviewable and public-safe. In this framing, over-refusal is not a bug so much as an enforcement mechanism for [[AI-assisted spec with human review]] and [[Citations and missing-field visibility]]. ^[2026-04-24-hackathon-operating-context.md, 2026-04-24-genai-mil-concept-seed.md, 2026-04-25-organizer-judging-signal.md]

The intended tradeoff is operational discipline rather than conversational fluency. For a public-safe, back-office assistant, the system should refuse ungrounded claims, surface what evidence is missing, and preserve the human’s role in decision-making and submission. That makes the refusal behavior consistent with [[Controlled Reference Retrieval]] and with the broader [[Human-in-the-Loop Review and Approval]] posture. ^[2026-04-25-genai-mil-user-workflows-and-trust-boundaries.md, 2026-04-24-genai-mil-concept-seed.md]

## Sources

- [2026-04-25-genai-mil-user-workflows-and-trust-boundaries.md]
- [2026-04-24-hackathon-operating-context.md]
- [2026-04-24-genai-mil-concept-seed.md]
- [2026-04-25-organizer-judging-signal.md]
