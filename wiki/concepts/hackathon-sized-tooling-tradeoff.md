---
title: Hackathon-Sized Tooling Tradeoff
summary: For a 1–2 day hackathon, a dedicated knowledge graph service was rejected as too costly in setup and operations compared with a simpler markdown/wiki approach.
sources:
  - 2026-04-21-hackathon-knowledge-workflow-decision.md
createdAt: "2026-04-21T21:15:14.212Z"
updatedAt: "2026-04-21T21:15:14.212Z"
tags:
  - architecture
  - tradeoffs
  - hackathon
aliases:
  - hackathon-sized-tooling-tradeoff
  - HTT
---

# Hackathon-Sized Tooling Tradeoff

Hackathon-Sized Tooling Tradeoff refers to choosing a lightweight, file-first knowledge workflow instead of a heavier graph-memory or knowledge-graph service when the time horizon is short and the complexity budget is limited. In the described hackathon context, the preferred stack is Slack capture, curated redacted notes, a [[Private GitHub Repo as Durable Working Memory]], and a markdown wiki compiler that supports incremental recompilation. ^[2026-04-21-hackathon-knowledge-workflow-decision.md]

The tradeoff is driven by practicality: a graph service adds setup, scoping, and operational overhead that is disproportionate for a 1–2 day hackathon, while raw chat dumps are too noisy and privacy-risky to ingest directly. The workflow instead preserves human curation at the promotion step and keeps only curated, redacted material and focused public research supplements in the pipeline. ^[2026-04-21-hackathon-knowledge-workflow-decision.md]

In this model, `atomicmemory/llm-wiki-compiler` is used as the knowledge compiler because it turns curated notes into an interlinked markdown wiki with incremental recompilation. For each promoted note, a companion public research supplement is added using Exa-backed web search so the wiki compounds both field notes and relevant public context without changing the underlying file-first architecture. ^[2026-04-21-hackathon-knowledge-workflow-decision.md]

The workflow centers on a narrow loop: capture in Slack, promote into `curated/`, add a focused `research/` note, ingest both files into `llmwiki`, compile incrementally, query for recurring bottlenecks or trust boundaries, and save only high-value synthesis outputs. This is intended to produce a reusable, queryable wiki while avoiding the cost and maintenance burden of heavier [[graph memory]] systems. ^[2026-04-21-hackathon-knowledge-workflow-decision.md]

## Practical implications

- Use Slack as the capture surface, not the long-term source of truth.
- Promote only short, structured, redacted notes into the wiki pipeline.
- Keep public research supplements narrow so they sharpen the note rather than adding filler.
- Prefer incremental compilation and compounding synthesis over broad retrieval infrastructure. ^[2026-04-21-hackathon-knowledge-workflow-decision.md]

## Related concepts

- [[Curated note promotion]]
- [[LLM Wiki Compiler]]
- [[compiled markdown wiki]]
- [[Hash-Based Incremental Ingestion]]
- [[Query-and-Save Compounding Workflow]]
- [[Slack capture]]
- [[Decision Rule for Wiki Over Graph Memory]]

## Sources

- `2026-04-21-hackathon-knowledge-workflow-decision.md`
