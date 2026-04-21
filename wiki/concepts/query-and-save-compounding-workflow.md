---
title: Query-and-Save Compounding Workflow
summary: A workflow where query results can be saved back into the wiki so useful synthesis accumulates over time.
sources:
  - 2026-04-21-hackathon-knowledge-workflow-decision-public-research.md
createdAt: "2026-04-21T20:28:55.133Z"
updatedAt: "2026-04-21T20:28:55.133Z"
tags:
  - workflow
  - knowledge-management
  - retrieval
aliases:
  - query-and-save-compounding-workflow
  - QCW
---

# Query-and-Save Compounding Workflow

The query-and-save compounding workflow is a pattern in which useful synthesis from a query is saved back into a wiki so the knowledge base compounds over time instead of being rediscovered repeatedly at query time. In the source material, this behavior is part of the `llmwiki` workflow, where `llmwiki query --save` supports adding useful outputs back into the wiki. The approach fits a file-first, markdown-native, inspectable workflow oriented toward curated, high-signal corpora rather than heavyweight retrieval systems. ^[2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

This workflow is supported by a two-phase compilation pipeline that first extracts concepts and then generates pages. That design helps avoid order dependence and partial updates, and it works with incremental change detection so small updates can be incorporated efficiently. Querying with save is therefore not just a retrieval action, but part of a compounding loop that promotes valuable synthesis into the persistent wiki. ^[2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

In the broader [[LLM Wiki Pattern]], the workflow aligns with a division of labor in which the human curates sources and asks questions, while the LLM performs summarization, cross-linking, filing, and bookkeeping. Saving query results back into the wiki reinforces the pattern’s goal of maintaining a persistent, compounding wiki rather than repeatedly rediscovering knowledge through query-time retrieval. ^[2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

Related concepts include [[LLM Wiki Pattern]], [[compiled markdown wiki]], [[incremental compilation]], [[query-time retrieval]], and [[high-signal corpus]].

## Sources

- [2026-04-21-hackathon-knowledge-workflow-decision-public-research.md](2026-04-21-hackathon-knowledge-workflow-decision-public-research.md)
