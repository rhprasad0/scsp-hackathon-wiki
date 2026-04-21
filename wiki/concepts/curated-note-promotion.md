---
title: Curated note promotion
summary: The process of converting noisy Slack threads into short, structured, redacted notes suitable for ingestion into the knowledge workflow.
sources:
  - 2026-04-21-hackathon-knowledge-workflow-decision.md
createdAt: "2026-04-21T20:29:00.205Z"
updatedAt: "2026-04-21T20:29:00.205Z"
tags:
  - curation
  - redaction
  - knowledge-workflow
aliases:
  - curated-note-promotion
  - CNP
---

# Curated note promotion

Curated note promotion is the step in the workflow where rough observations, quotes, workflows, bottlenecks, artifacts, and trust boundaries captured in Slack are turned into a short, structured, redacted note in `curated/`. The source material presents this as the first promotion step before any public research supplement is added or the note is ingested into the wiki compiler. ^[2026-04-21-hackathon-knowledge-workflow-decision.md]

The purpose of promotion is to move from noisy live capture to a curated artifact that can safely enter the markdown-based knowledge workflow. Only curated, redacted notes are meant to be promoted; raw chat dumps are explicitly not ingested directly, and sensitive operational details, names, and secrets should stay out of exported or public-facing artifacts. ^[2026-04-21-hackathon-knowledge-workflow-decision.md]

In the described workflow, promoted notes are paired with an Exa-backed public research supplement in `research/`, then both files are ingested into `llmwiki` and compiled incrementally. This keeps Slack as the capture surface while allowing the wiki to compound high-signal synthesis over time. ^[2026-04-21-hackathon-knowledge-workflow-decision.md]

## Workflow position

1. Capture rough material in Slack.
2. Promote a thread into a short, structured, redacted note in `curated/`.
3. Add a companion public research note in `research/` using Exa-backed web search.
4. Ingest both files into `llmwiki`.
5. Compile the wiki after each note pair or small batch.
6. Query for recurring bottlenecks, trust boundaries, artifacts, and the narrowest credible wedge.
7. Save only the highest-value synthesis outputs. ^[2026-04-21-hackathon-knowledge-workflow-decision.md]

## Related concepts

- [[LLM Wiki Compiler]]
- [[Exa Public Research Supplementation]]
- [[LLM Wiki Pattern]]
- [[Query-and-Save Compounding Workflow]]
- [[Hash-Based Incremental Ingestion]]
- [[curated notes]]
- [[public research supplements]]
- [[Slack capture]]

## Sources

- `2026-04-21-hackathon-knowledge-workflow-decision.md`
