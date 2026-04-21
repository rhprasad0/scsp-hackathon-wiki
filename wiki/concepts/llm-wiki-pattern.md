---
title: LLM Wiki Pattern
summary: A file-first knowledge management approach where a persistent, compounding wiki is maintained by LLMs instead of relying on repeated query-time retrieval.
sources:
  - 2026-04-21-hackathon-knowledge-workflow-decision-public-research.md
createdAt: "2026-04-21T20:28:51.374Z"
updatedAt: "2026-04-21T21:14:58.312Z"
tags:
  - knowledge-management
  - llm
  - wiki
aliases:
  - llm-wiki-pattern
  - LWP
---

# LLM Wiki Pattern

The LLM Wiki Pattern is a file-first approach to working with LLMs that aims to maintain a persistent, compounding wiki instead of repeatedly rediscovering knowledge through query-time retrieval. It is organized into three layers: immutable raw sources, LLM-maintained wiki pages, and a schema/instruction layer. In this model, the human curates sources and asks questions, while the LLM handles summarization, cross-linking, filing, and bookkeeping. The pattern is intended for moderate-scale, curated corpora rather than heavyweight infrastructure. ^[2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

A public implementation of the pattern, `llm-wiki-compiler`, uses a two-phase pipeline that first extracts concepts and then generates pages. This design reduces order dependence and partial updates, and it supports incremental updates through hash-based change detection. The tool also supports querying with `--save`, so useful synthesis can be compounded back into the wiki. It is positioned as a better fit for a small, high-signal corpus than for sprawling retrieval-heavy systems. ^[2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

The pattern aligns well with short, iterative research loops because it is markdown-native, inspectable, and centered on [[Curated note promotion]]. In the workflow described by the source material, this approach is favored over a heavier [[graph memory]] stack when the problem is short-horizon and file-first. ^[2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

Related concepts include [[compiled markdown wiki]], [[incremental compilation]], [[query-time retrieval]], [[knowledge workflow]], and [[high-signal corpus]].

## Sources

- [2026-04-21-hackathon-knowledge-workflow-decision-public-research.md](2026-04-21-hackathon-knowledge-workflow-decision-public-research.md)
