---
title: Paragraph-level citation and refusal discipline
summary: Every generated claim should be tied to a source paragraph, and the system should refuse or flag unsupported answers instead of guessing.
sources:
  - 2026-04-25-genai-mil-deep-research-synthesis.md
  - 2026-04-25-genai-mil-user-workflows-and-trust-boundaries.md
createdAt: "2026-04-25T16:14:51.412Z"
updatedAt: "2026-04-25T16:28:37.522Z"
tags:
  - citations
  - safety
  - rag
aliases:
  - paragraph-level-citation-and-refusal-discipline
  - refusal discipline and Paragraph-level citation
  - PCARD
---

# Paragraph-level citation and refusal discipline

Paragraph-level citation and refusal discipline is a drafting pattern in which each claim-bearing paragraph is anchored to its source documents, and the system refuses to answer when the available material does not support a grounded response. The practice is used to preserve trust boundaries, keep outputs reviewable, and prevent the invention of operational facts. It is especially important in narrow, evidence-backed workflows where the citation is part of the artifact itself. ^[2026-04-25-genai-mil-deep-research-synthesis.md, 2026-04-25-genai-mil-user-workflows-and-trust-boundaries.md]

In this pattern, citations appear at the end of prose paragraphs and identify the source file or files that support the paragraph. The associated operating guidance says the AI may retrieve approved references, draft structured content, identify missing fields, and flag uncertainty, but it must not invent policy, bypass review, or submit anything autonomously. Human review remains required before approval or export. ^[2026-04-25-genai-mil-user-workflows-and-trust-boundaries.md]

Refusal discipline means the system should explicitly say when the corpus is insufficient, the question is ungrounded, or the needed field is missing. The source material treats a generative answer with no anchored paragraph as worse than no answer, because hidden assumptions and unsupported claims weaken trust. Visible uncertainty, unresolved fields, and review status are therefore part of the response, not an optional appendix. ^[2026-04-25-genai-mil-deep-research-synthesis.md, 2026-04-25-genai-mil-user-workflows-and-trust-boundaries.md]

The discipline is closely tied to [[Controlled Reference Retrieval]] and human-in-the-loop review. The workflow described in the source material uses approved references from a controlled document set, generates a structured draft, and then routes the result to a human reviewer who can accept, reject, edit, or request follow-up. This keeps the system narrow, evidence-backed, and publicly safe rather than a broad autonomous assistant. ^[2026-04-25-genai-mil-user-workflows-and-trust-boundaries.md]

In practice, paragraph-level citation and refusal discipline is used to support reviewable drafting in administrative and back-office workflows, including leave forms, TDY planning, regulation navigation, and contract-intel scaffolds. The pattern is also associated with reviewable outputs that show sources, assumptions, unresolved fields, and uncertainty before submission. Related concepts include [[Citations and missing-field visibility]], [[AI-assisted spec with human review]], [[Controlled Reference Retrieval]], and [[Human-in-the-Loop Review and Approval]]. ^[2026-04-25-genai-mil-deep-research-synthesis.md, 2026-04-25-genai-mil-user-workflows-and-trust-boundaries.md]

## Sources

- [2026-04-25-genai-mil-deep-research-synthesis.md]
- [2026-04-25-genai-mil-user-workflows-and-trust-boundaries.md]
