---
title: Slack-only Capture Workflow
summary: A lightweight workflow that uses Slack as the live capture surface for observations, quotes, bottlenecks, artifacts, and trust boundaries before anything is promoted into the knowledge pipeline.
sources:
  - 2026-04-21-hackathon-knowledge-workflow-decision.md
createdAt: "2026-04-21T20:28:59.962Z"
updatedAt: "2026-04-21T21:15:03.585Z"
tags:
  - knowledge-management
  - slack
  - workflow
aliases:
  - slack-only-capture-workflow
  - SCW
---

# Slack-only Capture Workflow

Slack-only capture workflow is a note-capture approach where Slack serves as the live capture surface and a private GitHub repo serves as the durable working memory layer. In the hackathon workflow described in the source material, this approach was chosen instead of a dedicated knowledge graph service because the time horizon and complexity budget did not justify heavier infrastructure. ^[2026-04-21-hackathon-knowledge-workflow-decision.md]

The workflow captures rough observations, quotes, workflows, bottlenecks, artifacts, and trust boundaries in Slack. Slack is not treated as the long-term source of truth; only curated, redacted notes are promoted into the wiki pipeline. Raw chat is not ingested directly because it is noisy, privacy-risky, and likely to degrade output quality. ^[2026-04-21-hackathon-knowledge-workflow-decision.md]

A typical flow is to have Hermes promote a Slack thread into a short, structured, redacted note in `curated/`, then create a companion public research note in `research/` using Exa-backed web search with 3–5 relevant public sources. Both files are then ingested into `llmwiki`, compiled after each note pair or small batch, and queried for recurring bottlenecks, trust boundaries, artifacts, and the narrowest credible wedge. High-value synthesis outputs can then be saved back into the wiki to compound over time. ^[2026-04-21-hackathon-knowledge-workflow-decision.md]

This workflow is paired with a private GitHub repo, `llm-wiki-compiler`, compiled `wiki/` output, and `exports/` for draft spec fragments. The source material also notes that `llmwiki` in this repo uses a local `codex-bridge` path backed by the user's Codex subscription credentials. Public-safe outputs should be derived from the compiled and supplemented notes, not from raw conversation history, and sensitive details, names, and secrets should stay out of exported artifacts. ^[2026-04-21-hackathon-knowledge-workflow-decision.md]

Related concepts include [[LLM Wiki Pattern]], [[Query-and-Save Compounding Workflow]], [[Hash-Based Incremental Ingestion]], and [[Three-Layer Wiki Architecture]].

## Sources

- `2026-04-21-hackathon-knowledge-workflow-decision.md`
