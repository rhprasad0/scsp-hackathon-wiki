---
title: Exa-Backed Public Supplementary Research
summary: Using Exa web search and page fetch to attach fresh public context to curated notes, enriching them with references, docs, and reporting without adding a graph-memory layer.
sources:
  - 2026-04-21-hackathon-knowledge-workflow-decision-public-research.md
createdAt: "2026-04-21T21:15:03.699Z"
updatedAt: "2026-04-21T21:15:03.699Z"
tags:
  - search
  - research
  - context-enrichment
aliases:
  - exa-backed-public-supplementary-research
  - EPSR
---

# Exa-Backed Public Supplementary Research

Exa-Backed Public Supplementary Research is the workflow step of pairing a promoted, curated note with a targeted public research note created from Exa search and page fetch results. It is used after a Slack thread has been converted into a short, structured, redacted note and before both files are ingested into the wiki compiler. ^[2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

The purpose of this supplementary research is to add relevant public context and evidentiary depth without changing the underlying file-first, markdown-native wiki architecture. The source material describes it as a way to strengthen a note with focused external references such as policy documents, product documentation, or prior reporting, while keeping the overall workflow compact and inspectable. ^[2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

Exa is used because its search and fetch capabilities are intended to surface fresh web context and clean page content for AI-assisted research. The workflow typically uses about 3–5 relevant public sources per supplement and keeps the research narrowly targeted so it sharpens the note rather than adding generic background material. ^[2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

In the broader process, Slack serves as the capture surface, promoted notes are stored in `curated/`, supplements are written in `research/`, and both are compiled incrementally in `llmwiki`. This approach is presented as especially suitable for short-horizon, high-signal work and as an alternative to heavier graph-memory systems. ^[2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

A key constraint is focus: if the research question is too broad, the supplement can degrade into generic filler instead of evidence that sharpens the question. The source material also emphasizes that only curated, redacted notes and their focused public supplements should enter the compiler pipeline; raw chat dumps and sensitive operational details are not meant to be ingested directly or exposed in public-facing artifacts. ^[2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

## Related concepts

- [[Curated note promotion]]
- [[Exa-backed Research Supplement]]
- [[LLM Wiki Compiler]]
- [[compiled markdown wiki]]
- [[Hash-Based Incremental Ingestion]]
- [[Query-and-Save Compounding Workflow]]
- [[Slack capture]]

## Sources

- `2026-04-21-hackathon-knowledge-workflow-decision-public-research.md`
