---
title: Single-persona end-to-end hackathon wedge
summary: Teams are advised to pick one user persona and build an end-to-end solution for that specific workflow rather than a broad, multi-user platform.
sources:
  - 2026-04-25-genai-mil-challenge-prompt-and-rubric.md
createdAt: "2026-04-25T16:14:35.142Z"
updatedAt: "2026-04-25T16:14:35.142Z"
tags:
  - hackathon
  - product-scope
  - user-centered-design
aliases:
  - single-persona-end-to-end-hackathon-wedge
  - SEHW
---

# Single-persona end-to-end hackathon wedge

A single-persona end-to-end hackathon wedge is a project shape that starts with one clearly defined user persona and delivers a complete workflow for that person, rather than a broad general-purpose assistant. In the GenAI.mil challenge framing, this means focusing on a narrow administrative or back-office problem, building end-to-end for one user, and using a small corpus of approved sources so the result is operationally legible and demoable within the hackathon window. ^[2026-04-25-genai-mil-challenge-prompt-and-rubric.md]

The source material recommends this approach as a practical starting point: pick one user persona, set up a RAG pipeline over a small corpus of Army publications or Field Manuals, get accurate retrieval working first, and only then add form generation or logistics planning. Example wedges include a regulation navigator, form auto-filler, TDY planner, or contract intel tool. ^[2026-04-25-genai-mil-challenge-prompt-and-rubric.md]

This pattern aligns with the broader idea of [[Scoped Prototype Wedge]] and [[Boring workflow, spicy mechanism]]: the user problem stays narrow and credible, while the implementation can still be technically interesting through controlled retrieval, citations, structured drafting, and reviewable output. The project is meant to be memorable without becoming an unbounded prototype. ^[2026-04-25-genai-mil-challenge-prompt-and-rubric.md, 2026-04-25-organizer-judging-signal.md]

A strong single-persona wedge keeps the workflow bounded around one real user need and one clear output, which helps judges quickly assess problem-solution fit. The source material also stresses that a winning demo should show technical novelty and a believable user, not just a chat interface over documents. ^[2026-04-25-genai-mil-challenge-prompt-and-rubric.md]

In practice, the wedge should preserve human review and visible trust boundaries. Related source material emphasizes that drafts should show sources, assumptions, missing fields, uncertainty, and review status, and that the assistant must not invent policy or bypass approval. That makes the end-to-end flow reviewable rather than autonomous. ^[2026-04-24-genai-mil-concept-seed.md, 2026-04-25-organizer-judging-signal.md]

## Related concepts

- [[Controlled Reference Retrieval]]
- [[AI-assisted spec with human review]]
- [[Citations and missing-field visibility]]
- [[Boring workflow, spicy mechanism]]
- [[Creative but bounded framing]]
- [[Human-in-the-Loop Review and Approval]]
- [[Scoped Prototype Wedge]]

## Sources

- [2026-04-25-genai-mil-challenge-prompt-and-rubric.md]
- [2026-04-25-organizer-judging-signal.md]
- [2026-04-24-genai-mil-concept-seed.md]
