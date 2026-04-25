---
title: GenAI.mil track wedge selection
summary: The track rewards a narrowly scoped end-to-end workflow assistant rather than a generic military copilot, so teams should choose a concrete admin or knowledge task to demo.
sources:
  - 2026-04-25-genai-mil-deep-research-synthesis.md
createdAt: "2026-04-25T16:14:49.115Z"
updatedAt: "2026-04-25T16:28:38.074Z"
tags:
  - hackathon
  - product-strategy
  - genai-mil
aliases:
  - genaimil-track-wedge-selection
  - GTWS
---

# GenAI.mil track wedge selection

GenAI.mil track wedge selection is the process of choosing a narrowly scoped, end-to-end prototype for the GenAI.mil hackathon track. The track is aimed at the rank-and-file administrative tail: paperwork, logistics, bureaucracy, and other back-office work rather than combat or tactical operations. The strongest wedges are concrete, reviewable, and feasible to demo with public DoD text, a defined user persona, and a clear output artifact. ^[2026-04-25-genai-mil-deep-research-synthesis.md]

A good wedge is usually small enough to build end to end, but specific enough to demonstrate real workflow value. The source material emphasizes selecting one user persona, one workflow, and one output, then grounding the system in approved references with retrieval before adding generation or planning. This is why the track favors [[Scoped Prototype Wedge]]-style projects and discourages broad “generic military copilot” concepts. ^[2026-04-25-genai-mil-deep-research-synthesis.md, 2026-04-25-genai-mil-challenge-prompt-and-rubric.md]

The most emphasized wedge pattern is a “form-honest” administrative assistant: an AI system that drafts a reviewable artifact from a user request, flags missing fields, and preserves human approval. Examples in the source material include a regulation navigator, a form auto-filler, a TDY planner, a contract-intel tool, and a DA 31 leave assistant. These wedges are attractive because they map to real, frequent pain points and can be evaluated against known public references. ^[2026-04-25-genai-mil-challenge-prompt-and-rubric.md, 2026-04-25-genai-mil-deep-research-synthesis.md, 2026-04-24-genai-mil-concept-seed.md]

The track’s explicit “and does it offline” language is a major selection factor. In context, the source material reads this as a call for an edge- or DDIL-capable complement to the existing GenAI.mil cloud platform, not a duplicate of it. That makes offline-first or network-disconnected wedges especially compelling when they can still rely on public, unclassified DoD text and visible citations. Related concepts include [[Administrative trenches as the GenAI.mil problem frame]] and [[Boring workflow, spicy mechanism]]. ^[2026-04-25-genai-mil-deep-research-synthesis.md, 2026-04-25-genai-mil-challenge-prompt-and-rubric.md]

The strongest selection criteria in the source material are problem-solution fit, technical difficulty, novelty, and national impact. A wedge should feel operationally legible to a non-specialist judge, while still showing a technically interesting mechanism such as retrieval, structured generation, citations, evaluation, auditability, or self-review. The materials also stress trust boundaries: the system should cite its sources, show uncertainty and missing fields, preserve human review, and avoid autonomous submission or approval. ^[2026-04-25-genai-mil-challenge-prompt-and-rubric.md, 2026-04-25-genai-mil-deep-research-synthesis.md, 2026-04-25-organizer-judging-signal.md]

Among the candidate wedges, the DA 31 leave assistant is presented as the top recommendation for a weekend build. It combines a high-frequency administrative form, a clear public reference chain, and a strong demo shape: turn a plain-English leave request into a cited, missing-field-flagged draft that a human can review and submit. The TDY pre-flight checker is another strong choice, especially where voucher rejection and JTR compliance are the core pain points. A doctrine-at-the-edge retrieval assistant is compelling when the team wants to emphasize offline capability and paragraph-level citation. ^[2026-04-25-genai-mil-deep-research-synthesis.md]

A weaker wedge is a generic regulation Q&A system with no other differentiator. The source material treats this as the baseline pattern and warns that it will likely look like a simple “chat over PDFs” submission unless it adds structured output, evaluation discipline, offline posture, or another distinctive mechanism. In other words, the wedge should be more than a search box; it should be a bounded workflow with a clear before-and-after. ^[2026-04-25-genai-mil-deep-research-synthesis.md, 2026-04-25-genai-mil-challenge-prompt-and-rubric.md]

In practice, wedge selection is about balancing utility and demo clarity. The best candidate is the one that can be explained in one sentence, tied to a believable user, grounded in a public source set, and demonstrated with one happy path and one refusal or edge case. That shape gives the team a credible administrative use case while leaving room for a memorable mechanism such as citations, reviewability, or offline operation. ^[2026-04-25-genai-mil-deep-research-synthesis.md, 2026-04-25-organizer-judging-signal.md]

## Sources

- [2026-04-25-genai-mil-deep-research-synthesis.md]
