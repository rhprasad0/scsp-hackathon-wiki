---
title: Hash-Based Incremental Ingestion
summary: A change-detection mechanism that reprocesses notes only when their content changes, supporting frequent small updates efficiently.
sources:
  - 2026-04-21-hackathon-knowledge-workflow-decision-public-research.md
createdAt: "2026-04-21T20:28:51.403Z"
updatedAt: "2026-04-21T20:28:51.403Z"
tags:
  - incremental-processing
  - ingestion
  - tooling
aliases:
  - hash-based-incremental-ingestion
  - HII
---

# Hash-Based Incremental Ingestion

Hash-based incremental ingestion is an update strategy where a compiler or ingestion pipeline uses content hashes to detect what has changed, so it can process only new or modified material rather than re-ingesting an entire corpus. In the `llmwiki` workflow described in the source material, this incremental behavior is presented as especially useful for frequent small note updates during a hackathon, because it supports a file-first, inspectable, markdown-native process without requiring heavier retrieval or memory infrastructure. ^[2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

In the `llm-wiki-compiler` approach, hash-based change detection is paired with a two-phase pipeline: first extract concepts, then generate pages. This structure is intended to reduce order dependence and partial updates, while keeping the system well suited to small, high-signal corpora. The same workflow also supports compounding useful synthesis back into the wiki through query-and-save operations. ^[2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

In practice, hash-based incremental ingestion fits a compiled markdown wiki model better than a heavier graph-memory stack when the goal is short-horizon research and iterative note promotion. The source material emphasizes that the most important constraint is to keep ingestion focused on curated, high-signal content, since noisy or bulky material can undermine the benefits of incremental processing. ^[2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

## Related concepts

- [[LLM Wiki pattern]]
- [[compiled markdown wiki]]
- [[incremental compilation]]
- [[content hashing]]
- [[two-phase pipeline]]
- [[small high-signal corpus]]
- [[query-save workflow]]
- [[Exa-backed supplementary research]]

## Sources

- `2026-04-21-hackathon-knowledge-workflow-decision-public-research.md`
