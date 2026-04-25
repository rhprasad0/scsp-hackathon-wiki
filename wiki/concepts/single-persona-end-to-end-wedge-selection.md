---
title: Single-persona end-to-end wedge selection
summary: Teams are encouraged to choose one user persona and build a complete end-to-end solution for that specific workflow instead of a broad multi-user platform.
sources:
  - 2026-04-25-genai-mil-challenge-prompt-and-rubric.md
createdAt: "2026-04-25T16:28:22.302Z"
updatedAt: "2026-04-25T17:07:24.080Z"
tags:
  - product-design
  - hackathon
  - workflow
aliases:
  - single-persona-end-to-end-wedge-selection
  - SEWS
---

# Single-persona end-to-end wedge selection

Single-persona end-to-end wedge selection is a project design approach in which a team chooses one clearly defined user persona and builds one complete workflow for that persona from input to output. In the GenAI.mil context, this means focusing on a narrow administrative or back-office need rather than trying to solve a broad platform problem or a tactical use case. ^[2026-04-25-genai-mil-challenge-prompt-and-rubric.md]

The challenge materials explicitly recommend this pattern: “Pick one user persona … and build an end-to-end solution for them.” The suggested starting point is a small retrieval-augmented generation pipeline over Army publications or Field Manuals, with accurate retrieval working before adding form generation or logistics planning. ^[2026-04-25-genai-mil-challenge-prompt-and-rubric.md]

This selection strategy is useful because the source material frames the most immediate military AI opportunities as administrative friction in the “administrative trenches,” including paperwork, logistics, regulation navigation, and other back-office tasks. Example wedges include a regulation navigator, form auto-filler, TDY planner, and contract intelligence tool. ^[2026-04-25-genai-mil-challenge-prompt-and-rubric.md]

A single-persona wedge also aligns with related workflow guidance that favors narrow, evidence-backed drafting, visible human review, and public-safe output. The design pattern is intended to keep scope small enough to build and demo well while still leaving room for a technically interesting mechanism such as controlled retrieval, citations, structured generation, or auditability. Related concepts include [[Scoped Prototype Wedge]], [[Administrative trenches as the GenAI.mil problem frame]], [[Back-office military workflow use cases]], and [[Boring workflow, spicy mechanism]]. ^[2026-04-24-hackathon-operating-context.md, 2026-04-25-genai-mil-challenge-prompt-and-rubric.md, 2026-04-25-organizer-judging-signal.md]

## Sources

- [2026-04-25-genai-mil-challenge-prompt-and-rubric.md]
- [2026-04-24-hackathon-operating-context.md]
- [2026-04-25-organizer-judging-signal.md]
