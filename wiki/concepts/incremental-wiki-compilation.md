---
title: Incremental Wiki Compilation
summary: A hash-based change detection approach that updates only changed notes, making frequent small edits efficient during iterative work.
sources:
  - 2026-04-21-hackathon-knowledge-workflow-decision-public-research.md
  - 2026-04-21-hackathon-knowledge-workflow-decision.md
createdAt: "2026-04-21T20:29:03.849Z"
updatedAt: "2026-04-21T21:14:58.911Z"
tags:
  - incremental-updates
  - compilation
  - automation
aliases:
  - incremental-wiki-compilation
  - IWC
---

# Incremental Wiki Compilation

Incremental wiki compilation is a file-first workflow in which a compiled markdown wiki is rebuilt after each promoted note pair or small batch, rather than after a full corpus rebuild. The source material describes it as a way to keep the system markdown-native, inspectable, and suited to short-horizon, iterative research loops. ^[2026-04-21-hackathon-knowledge-workflow-decision.md, 2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

The workflow uses hash-based change detection so only new or modified notes are reprocessed. This makes frequent small updates efficient while preserving a compounding knowledge base built from curated notes and their supplementary context. ^[2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

Incremental compilation is typically paired with a two-phase pipeline: first extract concepts, then generate pages. This separation is intended to reduce order dependence and partial updates, and it works especially well when the corpus is curated and high-signal. ^[2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

In the described workflow, each promoted note can be paired with a public research supplement, ingested into the compiler, queried, and then saved back when the output is valuable. This creates a feedback loop that gradually densifies the wiki over time. ^[2026-04-21-hackathon-knowledge-workflow-decision.md, 2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

This approach is presented as preferable to a heavier graph-memory stack when the task is short-horizon, curated, and file-first. It is most effective with a small, high-signal corpus; noisy chat logs, bulky material, or overly broad supplementation can reduce its value. ^[2026-04-21-hackathon-knowledge-workflow-decision.md, 2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

Incremental wiki compilation often sits alongside [[LLM Wiki pattern]], [[compiled markdown wiki]], [[Hash-Based Incremental Ingestion]], [[query-save workflow]], and [[public research supplementation]]. It can also be combined with targeted public research so curated notes gain fresh context without changing the underlying markdown-based architecture. ^[2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

## Sources

- `2026-04-21-hackathon-knowledge-workflow-decision.md`
- `2026-04-21-hackathon-knowledge-workflow-decision-public-research.md`
