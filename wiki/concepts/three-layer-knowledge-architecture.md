---
title: Three-Layer Knowledge Architecture
summary: An architecture composed of immutable raw sources, LLM-maintained wiki pages, and a schema/instruction layer that separates source truth from synthesized knowledge.
sources:
  - 2026-04-21-hackathon-knowledge-workflow-decision-public-research.md
createdAt: "2026-04-21T21:14:59.689Z"
updatedAt: "2026-04-21T21:14:59.689Z"
tags:
  - architecture
  - knowledge-base
  - llm
aliases:
  - three-layer-knowledge-architecture
  - TKA
---

# Three-Layer Knowledge Architecture

Three-Layer Knowledge Architecture is the public [[LLM Wiki Pattern]] described as a way to maintain a persistent, compounding wiki rather than repeatedly rediscovering knowledge at query time. In the source material, the architecture is presented as having three layers: immutable raw sources, LLM-maintained wiki pages, and a schema/instruction layer. The human curates sources and asks questions, while the LLM handles summarization, cross-linking, filing, and bookkeeping. ^[2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

This architecture is positioned as a fit for moderate-scale, curated corpora and short, iterative research loops. The sources describe it as markdown-native and inspectable, with a file-first structure that supports durable knowledge compounding without requiring heavier infrastructure. ^[2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

In the hackathon workflow, the architecture is operationalized through a three-step content flow: rough material is captured in Slack, promoted into short structured redacted notes in `curated/`, and then supplemented with focused public research in `research/` before both files are ingested into `llmwiki`. The compiled wiki can then be updated incrementally, with query-and-save loops used to preserve useful synthesis. ^[2026-04-21-hackathon-knowledge-workflow-decision.md, 2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

A key part of the architecture is that the wiki compiler works best on a small, high-signal corpus. The source material emphasizes hash-based incremental change detection, two-phase compilation that extracts concepts before generating pages, and `query --save` workflows that compound useful outputs back into the wiki over time. ^[2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

The same source set also supports adding Exa-backed public research per promoted note. This supplement is intended to provide fresh public context and evidentiary depth using web search and page fetch, while staying narrowly targeted so it sharpens the note rather than adding generic background material. ^[2026-04-21-hackathon-knowledge-workflow-decision.md, 2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

## Related concepts

- [[LLM Wiki pattern]]
- [[compiled markdown wiki]]
- [[Curated note promotion]]
- [[Exa-backed Research Supplement]]
- [[Hash-Based Incremental Ingestion]]
- [[Query-and-Save Compounding Workflow]]
- [[Slack capture]]

## Sources

- `2026-04-21-hackathon-knowledge-workflow-decision-public-research.md`
- `2026-04-21-hackathon-knowledge-workflow-decision.md`
