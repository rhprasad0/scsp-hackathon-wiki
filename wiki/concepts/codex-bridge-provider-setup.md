---
title: Codex-bridge provider setup
summary: A local OpenAI-compatible endpoint configuration used by llmwiki, backed by the user's Codex subscription credentials.
sources:
  - 2026-04-21-hackathon-knowledge-workflow-decision.md
createdAt: "2026-04-21T20:29:03.337Z"
updatedAt: "2026-04-21T20:29:03.337Z"
tags:
  - llm-integration
  - codex
  - provider-setup
aliases:
  - codex-bridge-provider-setup
  - CPS
---

# Codex-bridge provider setup

Codex-bridge provider setup refers to configuring `llmwiki` to use the local `codex-bridge` path as an OpenAI-compatible endpoint for provider access, backed by the user's Codex subscription credentials. In the described hackathon workflow, this setup sits within a broader file-first knowledge pipeline that keeps Slack as the capture surface, promotes curated notes, and compiles them into a markdown wiki. ^[2026-04-21-hackathon-knowledge-workflow-decision.md]

The setup is described as part of the practical infrastructure for `llmwiki`, alongside the private GitHub repo, `curated/` notes, `research/` public supplements, and compiled `wiki/` outputs. It supports the workflow's incremental compilation and query-and-save loop without introducing a heavier graph-memory or knowledge-graph service. ^[2026-04-21-hackathon-knowledge-workflow-decision.md]

In context, the provider configuration exists to make the wiki compiler usable as a durable working-memory layer in a short-horizon, high-signal workflow. The source material emphasizes that only curated, redacted notes should be promoted, and that public-safe outputs should be derived from compiled and supplemented notes rather than raw conversation history. ^[2026-04-21-hackathon-knowledge-workflow-decision.md]

## Related concepts

- [[LLM Wiki Compiler]]
- [[compiled markdown wiki]]
- [[Hash-Based Incremental Ingestion]]
- [[curated note promotion]]
- [[Exa Public Research Supplementation]]
- [[Slack capture]]

## Sources

- `2026-04-21-hackathon-knowledge-workflow-decision.md`
