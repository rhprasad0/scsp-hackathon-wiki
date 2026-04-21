---
title: Compounding Query-to-Wiki Loop
summary: A workflow where useful query results can be saved back into the wiki, allowing synthesized knowledge to accumulate over time.
sources:
  - 2026-04-21-hackathon-knowledge-workflow-decision-public-research.md
createdAt: "2026-04-21T21:15:04.180Z"
updatedAt: "2026-04-21T21:15:04.180Z"
tags:
  - knowledge-compounding
  - retrieval
  - wiki
aliases:
  - compounding-query-to-wiki-loop
  - CQL
---

# Compounding Query-to-Wiki Loop

The compounding query-to-wiki loop is a workflow in which a user promotes a note into a compiled markdown wiki, queries the wiki for recurring patterns or the narrowest credible wedge, and then saves the highest-value synthesis back into the wiki so the knowledge base compounds over time. In the described hackathon workflow, this loop is used after [[Curated Note Promotion]] and public research supplementation, and it is designed to strengthen a persistent, inspectable, file-first knowledge base rather than repeatedly rediscovering information at query time. ^[2026-04-21-hackathon-knowledge-workflow-decision-public-research.md, 2026-04-21-hackathon-knowledge-workflow-decision.md]

The loop works best in a short-horizon, high-signal setting where the corpus remains small enough to stay markdown-native and manageable. The source material emphasizes that `llmwiki` supports incremental compilation, hash-based change detection, and `query --save` style workflows, which together let useful synthesis be folded back into the wiki after each note pair or small batch. ^[2026-04-21-hackathon-knowledge-workflow-decision-public-research.md, 2026-04-21-hackathon-knowledge-workflow-decision.md]

In practice, the loop sits inside a broader file-first pipeline: Slack is the capture surface, rough material is promoted into a short structured redacted note in `curated/`, a targeted public research supplement may be added in `research/`, both files are ingested into `llmwiki`, and the wiki is compiled incrementally. Queries then focus on recurring bottlenecks, trust boundaries, artifacts, and the narrowest credible wedge, with only the most valuable synthesis saved back into the wiki. ^[2026-04-21-hackathon-knowledge-workflow-decision.md]

This approach avoids heavier graph-memory systems when the work is curated, moderate-scale, and intended to produce a durable compounding wiki. The underlying model relies on the human to curate sources and ask questions, while the LLM handles summarization, cross-linking, filing, and bookkeeping. Targeted public research can improve each note’s evidentiary depth, but it should stay focused so it sharpens the note rather than adding broad background noise. ^[2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

## Workflow sketch

1. Capture rough material in Slack.
2. Promote it into a short, structured, redacted note in `curated/`.
3. Add a focused public research supplement in `research/` when useful.
4. Ingest both files into `llmwiki`.
5. Compile incrementally.
6. Query for recurring patterns, bottlenecks, trust boundaries, artifacts, and the narrowest credible wedge.
7. Save the highest-value synthesis back into the wiki. ^[2026-04-21-hackathon-knowledge-workflow-decision.md]

## Why it compounds

The loop compounds because each query can produce a refined synthesis that becomes part of the next round of wiki content. Over time, this reduces repeated rediscovery and makes the wiki more useful as a persistent working-memory layer. The source material presents this as especially effective when combined with incremental ingestion and selective supplementation from public sources. ^[2026-04-21-hackathon-knowledge-workflow-decision-public-research.md, 2026-04-21-hackathon-knowledge-workflow-decision.md]

## Related concepts

- [[Curated Note Promotion]]
- [[Exa-backed Research Supplement]]
- [[LLM Wiki Compiler]]
- [[compiled markdown wiki]]
- [[Hash-Based Incremental Ingestion]]
- [[Query-and-Save Compounding Workflow]]
- [[Slack capture]]
- [[LLM Wiki pattern]]

## Sources

- `2026-04-21-hackathon-knowledge-workflow-decision.md`
- `2026-04-21-hackathon-knowledge-workflow-decision-public-research.md`
