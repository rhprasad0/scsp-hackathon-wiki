---
title: Human-in-the-loop submission boundary
summary: The AI may draft, retrieve, cite, and pre-flight artifacts, but humans retain authority to approve, sign, submit, or file official military documents.
sources:
  - 2026-04-25-genai-mil-user-workflows-and-trust-boundaries.md
createdAt: "2026-04-25T16:15:08.266Z"
updatedAt: "2026-04-25T17:07:53.016Z"
tags:
  - human-in-the-loop
  - governance
  - workflow
aliases:
  - human-in-the-loop-submission-boundary
  - HSB
---

# Human-in-the-loop submission boundary

The human-in-the-loop submission boundary is the line between what AI may help prepare and what a human must approve, submit, sign, or file. In the described operating context, AI can draft, retrieve, cite, structure, and pre-flight outputs, but it must not approve, autonomously submit, classify, sign, file, or take a kinetic action. The boundary is part of the broader governable and traceable posture for public-safe GenAI.mil workflows. ^[2026-04-25-genai-mil-user-workflows-and-trust-boundaries.md]

This boundary is explicit across the example workflows. For Army regulation Q&A, the assistant may quote and cite authoritative paragraphs, but the user remains responsible for the decision and any leadership conversation. For leave requests, the AI may prepare a DA Form 31 draft, but the chain of command performs approval and the human submits through official systems. For travel, the AI may pre-flight or lint a draft itinerary or voucher, but the traveler or Authorizing Official completes booking and final submission in DTS. For contracting, the AI may surface prior awards and relevant clauses, but it does not advise on award decisions or source selection. ^[2026-04-25-genai-mil-user-workflows-and-trust-boundaries.md]

The source material treats this boundary as a trust and safety requirement, not just a product choice. A wrong citation, an invented policy fact, or an unsupported answer can create real leadership, pay-record, travel, or procurement problems, so the system should over-refuse when it is not grounded. Human review is therefore required before export or submission, and outputs should remain visible, reviewable, and evidence-backed. ^[2026-04-25-genai-mil-user-workflows-and-trust-boundaries.md, 2026-04-24-genai-mil-concept-seed.md]

A practical implementation of the boundary is to let AI produce a draft artifact with sources, assumptions, unresolved fields, uncertainty, and review status clearly shown, while reserving the final action for an authorized person. In the source material, this includes draft-and-review workflows over controlled documents, public-safe exports, and refusal to claim authority where the corpus does not support the answer. Related concepts include [[AI-assisted spec with human review]], [[Human-in-the-Loop Review and Approval]], [[Citations and missing-field visibility]], and [[Controlled Reference Retrieval]]. ^[2026-04-24-hackathon-operating-context.md, 2026-04-24-genai-mil-concept-seed.md, 2026-04-25-genai-mil-user-workflows-and-trust-boundaries.md]

## Sources

- [2026-04-25-genai-mil-user-workflows-and-trust-boundaries.md]
- [2026-04-24-genai-mil-concept-seed.md]
- [2026-04-24-hackathon-operating-context.md]
