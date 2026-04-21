---
title: Incremental wiki compilation
summary: Rebuilding the compiled wiki after each note pair or small batch so knowledge can compound continuously over time.
sources:
  - 2026-04-21-hackathon-knowledge-workflow-decision.md
createdAt: "2026-04-21T20:29:03.849Z"
updatedAt: "2026-04-21T20:29:03.849Z"
tags:
  - wiki
  - compilation
  - incremental-update
aliases:
  - incremental-wiki-compilation
  - IWC
---

# Incremental wiki compilation

Incremental wiki compilation is a file-first wiki workflow in which a compiler reprocesses only new or modified notes, rather than rebuilding an entire corpus every time. In the source material, this is implemented with content-hash change detection, so frequent small updates can be compiled efficiently while keeping the system markdown-native, inspectable, and suitable for short-horizon, iterative research loops. ^[2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

The workflow is typically paired with a two-phase pipeline: first extract concepts, then generate pages. This separation is meant to reduce order dependence and partial updates, and it works especially well when the corpus is curated and high-signal. ^[2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

Incremental compilation also supports compounding useful synthesis back into the wiki. In the described workflow, each promoted note pair can be compiled, queried, and then saved back if the output is valuable, creating a feedback loop that gradually densifies the wiki over time. ^[2026-04-21-hackathon-knowledge-workflow-decision-public-research.md, 2026-04-21-hackathon-knowledge-workflow-decision.md]

This approach is presented as preferable to a heavier graph-memory stack when the task is short-horizon, curated, and file-first. It is most effective when the input remains a small, high-signal corpus; noisy chat logs, bulky material, or overly broad supplementation can undermine the benefits of incremental processing. ^[2026-04-21-hackathon-knowledge-workflow-decision-public-research.md, 2026-04-21-hackathon-knowledge-workflow-decision.md]

Incremental wiki compilation often sits alongside [[LLM Wiki pattern]], [[compiled markdown wiki]], [[Hash-Based Incremental Ingestion]], [[query-save workflow]], and [[public research supplementation]]. It can also be combined with targeted public research such as Exa-backed search and page fetch, so curated notes gain fresh context without changing the underlying markdown-based architecture. ^[2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

## Sources

- `2026-04-21-hackathon-knowledge-workflow-decision-public-research.md`
- `2026-04-21-hackathon-knowledge-workflow-decision.md`
