---
title: Incremental Hash-Based Wiki Compilation
summary: A change-detection approach using hashes to update only modified content, enabling frequent small note updates efficiently.
sources:
  - 2026-04-21-hackathon-knowledge-workflow-decision-public-research.md
createdAt: "2026-04-21T21:12:44.460Z"
updatedAt: "2026-04-21T21:12:44.460Z"
tags:
  - incremental-updates
  - compilation
  - tooling
aliases:
  - incremental-hash-based-wiki-compilation
  - IHWC
---

# Incremental Hash-Based Wiki Compilation

Incremental hash-based wiki compilation is a workflow for compiling a markdown wiki in small updates, using hash-based change detection to process only what has changed. In the described workflow, it is part of a file-first, markdown-native knowledge pipeline that ingests curated notes and public research supplements, then compiles the wiki after each note pair or small batch. ^[2026-04-21-hackathon-knowledge-workflow-decision-public-research.md, 2026-04-21-hackathon-knowledge-workflow-decision.md]

The compilation approach is closely associated with `llmwiki`, which uses a two-phase pipeline: first extracting concepts, then generating pages. This separation is presented as a way to reduce order dependence and partial updates while keeping the wiki reusable as a persistent, compounding knowledge base. ^[2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

Hash-based incrementality makes the workflow practical for frequent small note updates, such as those produced during a hackathon or other short-horizon research loop. The source material emphasizes that this works best in a small, high-signal corpus, where the compiler can repeatedly incorporate new material without needing a heavier memory or graph system. ^[2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

In the broader process, a curated note in `curated/` is paired with a targeted public research supplement in `research/`, and both are ingested into the compiler. After compilation, the workflow supports `query --save` style synthesis, allowing useful outputs to be written back into the wiki so knowledge compounds over time rather than being rediscovered at query time. ^[2026-04-21-hackathon-knowledge-workflow-decision.md, 2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

The approach is intended to stay focused and inspectable: only curated, redacted notes and focused public supplements should enter the pipeline. Over-ingesting noisy or bulky material is described as a risk, because it can undermine the benefits of incremental processing and targeted supplementation. ^[2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

## Related concepts

- [[LLM Wiki Compiler]]
- [[compiled markdown wiki]]
- [[Query-and-Save Compounding Workflow]]
- [[curated note promotion]]
- [[Exa Public Research Supplementation]]
- [[LLM Wiki pattern]]
- [[small high-signal corpus]]

## Sources

- `2026-04-21-hackathon-knowledge-workflow-decision-public-research.md`
- `2026-04-21-hackathon-knowledge-workflow-decision.md`
