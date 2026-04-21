---
title: Two-Phase Concept Extraction Pipeline
summary: A wiki compilation method that first extracts concepts and then generates pages, reducing order dependence and avoiding partial updates.
sources:
  - 2026-04-21-hackathon-knowledge-workflow-decision-public-research.md
createdAt: "2026-04-21T20:28:57.097Z"
updatedAt: "2026-04-21T21:14:59.150Z"
tags:
  - pipeline
  - information-extraction
  - wiki
aliases:
  - two-phase-concept-extraction-pipeline
  - TCEP
---

# Two-Phase Concept Extraction Pipeline

A two-phase concept extraction pipeline is a wiki compilation approach that first extracts concepts from source material and then generates pages from those concepts. In the public `llmwiki` implementation, this separation is intended to avoid order dependence and partial updates, making incremental note compilation more stable. The approach fits a file-first, markdown-native workflow designed for small, high-signal corpora and short iterative research loops. ^[2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

In practice, the pipeline supports a compiled wiki model where human curation selects source notes and the system produces structured pages from them. The surrounding public documentation also highlights incremental behavior through hash-based change detection, plus `query --save` operations that can compound useful synthesis back into the wiki. These characteristics make the pipeline suitable for frequent small updates in a hackathon-style workflow. ^[2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

The broader design context is the [[LLM Wiki Pattern]], which frames knowledge management as a persistent, compounding wiki rather than repeated query-time rediscovery. That pattern is organized around immutable raw sources, LLM-maintained wiki pages, and a schema/instruction layer, with the human responsible for curation and the model responsible for summarization, cross-linking, filing, and bookkeeping. A two-phase concept extraction pipeline is a concrete implementation of that general [[LLM Wiki]] approach. ^[2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

This pipeline is best suited to curated, moderate-scale knowledge bases rather than sprawling retrieval-heavy systems. It works particularly well when the goal is to promote a small number of high-signal notes into durable wiki pages, and when the architecture should remain inspectable and simple instead of relying on a heavier [[graph memory]] stack. ^[2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

## Related concepts

- [[LLM Wiki]]
- [[Compiled markdown wiki]]
- [[Incremental compilation]]
- [[Hash-based change detection]]
- [[Query save synthesis]]
- [[File-first workflow]]

## Sources

- [2026-04-21-hackathon-knowledge-workflow-decision-public-research.md](2026-04-21-hackathon-knowledge-workflow-decision-public-research.md)
