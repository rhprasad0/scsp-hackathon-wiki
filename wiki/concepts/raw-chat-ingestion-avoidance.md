---
title: Raw Chat Ingestion Avoidance
summary: A deliberate decision not to ingest raw chat dumps directly because they are noisy, privacy-risky, and likely to degrade output quality.
sources:
  - 2026-04-21-hackathon-knowledge-workflow-decision.md
createdAt: "2026-04-21T21:12:49.985Z"
updatedAt: "2026-04-21T21:12:49.985Z"
tags:
  - privacy
  - data-quality
  - ingestion
aliases:
  - raw-chat-ingestion-avoidance
  - RCIA
---

# Raw Chat Ingestion Avoidance

Raw chat ingestion avoidance is the practice of not feeding Slack or other live chat dumps directly into the knowledge pipeline. In the described workflow, Slack is used as the capture surface, but only curated, structured, redacted notes are promoted into `curated/` and then ingested into the wiki compiler. This avoids the noise, privacy risk, and output-quality degradation associated with direct ingestion of raw conversation history. ^[2026-04-21-hackathon-knowledge-workflow-decision.md]

The workflow treats raw chat as a source of rough observations, quotes, workflows, bottlenecks, artifacts, and trust boundaries, not as a durable source of truth. Promotion converts that material into a short note that is safe to enter the markdown-based wiki workflow, while sensitive operational details, names, and secrets stay out of exported or public-facing artifacts. ^[2026-04-21-hackathon-knowledge-workflow-decision.md]

This avoidance is part of a broader file-first, short-horizon knowledge workflow. After promotion, a companion public research supplement may be added in `research/`, and both files are ingested into `llmwiki` for incremental compilation and later query-and-save synthesis. The source material frames this as a way to compound high-signal knowledge without relying on raw chat history. ^[2026-04-21-hackathon-knowledge-workflow-decision.md]

## Why raw chat is avoided

- Raw chat is noisy.
- Raw chat is privacy-risky.
- Direct ingestion would degrade output quality.
- Raw conversation history is not intended to be the long-term source of truth. ^[2026-04-21-hackathon-knowledge-workflow-decision.md]

## Related concepts

- [[Slack capture]]
- [[Curated note promotion]]
- [[Exa-backed research supplements]]
- [[LLM Wiki Compiler]]
- [[compiled markdown wiki]]
- [[Query-and-Save Compounding Workflow]]

## Sources

- `2026-04-21-hackathon-knowledge-workflow-decision.md`
