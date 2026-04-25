---
title: Public-safe GenAI.mil workflow wedge selection
summary: Choose a narrowly scoped, public-safe military admin workflow that maps to a real user need and can be demonstrated end-to-end in a hackathon.
sources:
  - 2026-04-25-genai-mil-user-workflows-and-trust-boundaries.md
createdAt: "2026-04-25T16:28:50.529Z"
updatedAt: "2026-04-25T16:28:50.529Z"
tags:
  - hackathon
  - product-strategy
  - military-ai
aliases:
  - public-safe-genaimil-workflow-wedge-selection
  - PGWWS
---

# Public-safe GenAI.mil workflow wedge selection

Public-safe GenAI.mil workflow wedge selection is the practice of choosing a narrowly scoped, unclassified military AI workflow that can be demonstrated safely on public sources, with a clear user, a bounded output, and human review preserved. In the GenAI.mil context, the recommended wedges are administrative, back-office tasks rather than tactical or kinetic applications, and they should be grounded in public references with explicit citations and refusal when the system lacks support. ^[2026-04-25-genai-mil-user-workflows-and-trust-boundaries.md, 2026-04-25-genai-mil-challenge-prompt-and-rubric.md]

The source material frames the strongest candidates as one-workflow, one-persona problems such as regulation Q&A, leave-form drafting, TDY planning, and contract-intel scaffolding. These use cases are operationally legible, rely on public documents like Army regulations, DA Form 31, the Joint Travel Regulations, SAM.gov, USAspending.gov, and eCFR Title 48, and fit a retrieval-grounded or structured-drafting approach rather than a broad chatbot. ^[2026-04-25-genai-mil-user-workflows-and-trust-boundaries.md]

A good wedge keeps the system’s role narrow: it may retrieve approved references, quote and cite the relevant paragraph, identify missing fields, draft a structured artifact, and flag uncertainty, but it must not approve, submit, sign, or invent policy. Human review remains the control boundary, and the user or chain of command retains responsibility for decisions and official submissions. ^[2026-04-24-genai-mil-concept-seed.md, 2026-04-25-genai-mil-user-workflows-and-trust-boundaries.md]

The public-safe posture also means avoiding PII, PHI, classified data, and any claim of production deployment. The source material emphasizes public/unclassified inputs, sanitized outputs, and a prototype that is honest about its trust boundaries: the AI drafts and pre-flights, while a human approves and files through official systems. ^[2026-04-25-genai-mil-user-workflows-and-trust-boundaries.md]

In practice, wedge selection favors a workflow that is small enough to build quickly but rich enough to show value through retrieval grounding, paragraph-level citations, structured output, and reviewable uncertainty. This makes the project legible as a [[Scoped Prototype Wedge]] and aligned with [[Controlled Reference Retrieval]] and [[AI-assisted spec with human review]]. ^[2026-04-24-hackathon-operating-context.md, 2026-04-25-genai-mil-challenge-prompt-and-rubric.md]

## Sources

- [2026-04-25-genai-mil-user-workflows-and-trust-boundaries.md]
- [2026-04-25-genai-mil-challenge-prompt-and-rubric.md]
- [2026-04-24-genai-mil-concept-seed.md]
- [2026-04-24-hackathon-operating-context.md]
