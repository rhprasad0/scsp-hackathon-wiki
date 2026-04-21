---
title: Decision Rule for Wiki Over Graph Memory
summary: A recommendation to prefer a compiled markdown wiki instead of a graph-memory service when the task is short-horizon, file-first, curated, and high-signal.
sources:
  - 2026-04-21-hackathon-knowledge-workflow-decision-public-research.md
createdAt: "2026-04-21T20:28:59.203Z"
updatedAt: "2026-04-21T20:28:59.203Z"
tags:
  - decision-making
  - architecture
  - knowledge-management
aliases:
  - decision-rule-for-wiki-over-graph-memory
  - DRFWOGM
---

# Decision Rule for Wiki Over Graph Memory

This decision rule favors a compiled, file-first wiki workflow over a heavier graph-memory stack when the work is short-horizon, centered on [[Curated note promotion]], and intended to produce a persistent, compounding wiki rather than repeatedly rediscovering information at query time. The supporting public sources describe this as a good fit for moderate-scale, high-signal corpora, where the system stays markdown-native, inspectable, and focused on iterative research loops. ^[2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

A compiled wiki approach is especially appropriate when the workflow can be organized around raw sources, LLM-maintained wiki pages, and a schema/instruction layer. In that model, the human curates sources and asks questions, while the LLM handles summarization, cross-linking, filing, and bookkeeping. The source material presents this division of labor as a practical alternative to heavier retrieval-heavy or graph-based systems for hackathon-style work. ^[2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

Operationally, the decision rule also favors systems that support a two-phase pipeline—first extracting concepts, then generating pages—because this reduces order dependence and partial updates. Hash-based incremental change detection further strengthens the wiki approach by allowing frequent small updates to be processed efficiently, and `query --save` style workflows can compound useful synthesis back into the wiki over time. ^[2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

Targeted public research can be added per promoted note without changing the underlying architecture. The source material says Exa-style search and page fetch are useful for fresh public context such as policy docs, product docs, or prior reporting, but the supplementary research should remain focused so it strengthens the note rather than adding low-value background material. ^[2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

## Decision criteria

Use [[compiled markdown wiki]] over [[graph memory]] when the corpus is curated, the work is short-term, and the goal is to promote notes into a compact, inspectable knowledge base. Prefer the wiki pattern when incremental ingestion, cross-linking, and note compounding matter more than broad retrieval over a large, dynamic memory structure. ^[2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

## When the rule does not apply

This rule is not presented as a fit for sprawling, noisy, or bulky material. The source material repeatedly emphasizes that the wiki workflow works best with a small, high-signal corpus, and that over-ingesting low-value material can undermine the benefits of incremental processing and focused supplementation. ^[2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

## Related concepts

- [[LLM Wiki pattern]]
- [[Three-Layer Wiki Architecture]]
- [[Hash-Based Incremental Ingestion]]
- [[compiled markdown wiki]]
- [[incremental compilation]]
- [[small high-signal corpus]]
- [[query-save workflow]]
- [[public research supplementation]]

## Sources

- `2026-04-21-hackathon-knowledge-workflow-decision-public-research.md`
