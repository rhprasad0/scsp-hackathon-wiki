---
title: Private GitHub Repo as Durable Working Memory
summary: A private GitHub repository serves as the long-lived storage layer for curated notes, research supplements, and the compiled wiki during the hackathon.
sources:
  - 2026-04-21-hackathon-knowledge-workflow-decision.md
createdAt: "2026-04-21T21:12:47.956Z"
updatedAt: "2026-04-21T21:12:47.956Z"
tags:
  - github
  - storage
  - knowledge-management
aliases:
  - private-github-repo-as-durable-working-memory
  - PGRADWM
---

# Private GitHub Repo as Durable Working Memory

A private GitHub repo can serve as the durable working memory layer in a short-horizon, file-first knowledge workflow. In the described hackathon decision, the team chose Slack for live capture, promoted only curated and redacted notes into the pipeline, and used the private repo to hold the markdown-based artifacts that feed incremental compilation and later synthesis. The repo in this role supports a reusable, queryable wiki rather than a heavier graph-memory service. ^[2026-04-21-hackathon-knowledge-workflow-decision.md]

The repo-based workflow is organized around `curated/` notes, `research/` public supplements, compiled `wiki/` outputs, and `exports/` for draft spec fragments. `llmwiki` compiles these raw sources into an interlinked markdown wiki, and the workflow encourages saving only high-value synthesis outputs that are worth compounding over time. ^[2026-04-21-hackathon-knowledge-workflow-decision.md]

This approach is explicitly file-first and markdown-native: raw chat dumps are not ingested directly, Slack remains the capture surface, and public-safe outputs are derived from curated and supplemented notes rather than conversation history. The source material frames this as a practical alternative to a dedicated knowledge graph for a 1–2 day hackathon workflow with limited setup and operational overhead. ^[2026-04-21-hackathon-knowledge-workflow-decision.md]

The private repo also fits the incremental loop used by the workflow: capture, promote, supplement with Exa-backed public research, ingest into `llmwiki`, compile after each note pair or small batch, query for recurring bottlenecks and trust boundaries, and save the strongest synthesis. In this model, the repo is the persistent source of truth for the compounding markdown corpus. ^[2026-04-21-hackathon-knowledge-workflow-decision.md]

## Related concepts

- [[Slack capture]]
- [[Curated note promotion]]
- [[Exa-backed research supplements]]
- [[LLM Wiki Compiler]]
- [[compiled markdown wiki]]
- [[Query-and-Save Compounding Workflow]]
- [[Hash-Based Incremental Ingestion]]
- [[codex-bridge provider setup]]

## Sources

- `2026-04-21-hackathon-knowledge-workflow-decision.md`
