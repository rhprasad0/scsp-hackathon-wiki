---
title: Three-Layer Wiki Architecture
summary: An architecture consisting of immutable raw sources, LLM-maintained wiki pages, and a schema/instruction layer to organize and update knowledge.
sources:
  - 2026-04-21-hackathon-knowledge-workflow-decision-public-research.md
createdAt: "2026-04-21T20:28:53.666Z"
updatedAt: "2026-04-21T21:12:42.659Z"
tags:
  - architecture
  - knowledge-management
  - llm
aliases:
  - three-layer-wiki-architecture
  - TWA
---

---
title: Three-Layer Wiki Architecture
summary: The architecture of immutable raw sources, LLM-maintained wiki pages, and a schema/instruction layer for organizing and compounding knowledge.
sources:
  - 2026-04-21-hackathon-knowledge-workflow-decision-public-research.md
createdAt: "2026-04-21T20:28:53.666Z"
updatedAt: "2026-04-21T20:28:53.666Z"
tags:
  - architecture
  - knowledge-management
  - llm
aliases:
  - three-layer-wiki-architecture
  - TWA
---

# Three-Layer Wiki Architecture

Three-Layer Wiki Architecture is a wiki pattern for building a persistent, compounding knowledge system from three layers: immutable raw sources, LLM-maintained wiki pages, and a schema/instruction layer. The model treats the human as a curator and question-asker, while the LLM handles summarization, cross-linking, filing, and bookkeeping. It is described as a good fit for moderate-scale, curated corpora rather than heavyweight infrastructure. ^[2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

## Layers

### 1. Raw sources
This layer contains immutable source material that serves as the factual base of the wiki. The sources are curated rather than continuously rewritten. ^[2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

### 2. LLM-maintained wiki pages
This layer consists of compiled markdown pages that accumulate synthesized knowledge over time. The goal is to compound useful information instead of repeatedly rediscovering it through query-time retrieval. ^[2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

### 3. Schema/instruction layer
This layer defines the rules and structure that guide organization and updates. It supports a file-first, inspectable, markdown-native workflow. ^[2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

## Operational roles

In this architecture, the human curates sources and asks questions. The LLM summarizes material, creates cross-links, files content appropriately, and maintains bookkeeping. This division supports short, iterative research loops over a high-signal corpus. ^[2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

## Related workflow properties

The pattern aligns with compiled markdown wiki workflows that favor ingest, compile, query, save, and lint operations. A two-phase pipeline—first extracting concepts, then generating pages—helps avoid order dependence and partial updates. Incremental change detection also supports frequent small note updates. ^[2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

## When it is a good fit

This architecture is best suited to short-horizon, file-first work where the corpus is curated and high-signal. It is positioned as a better fit than heavier retrieval-heavy or graph-based systems when the goal is to promote notes into a compact, inspectable wiki. ^[2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

## Public-context supplementation

The workflow can be extended with targeted public search and page fetch for each promoted field note. This adds fresh public context such as policy docs, product docs, or prior reporting without changing the underlying architecture. The key constraint is to keep the supplementary research focused so it strengthens the note rather than adding low-value background material. ^[2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

## Related concepts

- [[LLM Wiki pattern]]
- [[compiled markdown wiki]]
- [[incremental compilation]]
- [[two-phase pipeline]]
- [[public research supplementation]]
- [[file-first workflow]]

## Sources

- [2026-04-21-hackathon-knowledge-workflow-decision-public-research.md](2026-04-21-hackathon-knowledge-workflow-decision-public-research.md)
