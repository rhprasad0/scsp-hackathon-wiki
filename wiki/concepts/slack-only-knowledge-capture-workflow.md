---
title: Slack-only Knowledge Capture Workflow
summary: A workflow that uses Slack as the live capture surface for rough observations, quotes, bottlenecks, artifacts, and trust boundaries before promotion into more durable notes.
sources:
  - 2026-04-21-hackathon-knowledge-workflow-decision.md
createdAt: "2026-04-21T21:12:46.934Z"
updatedAt: "2026-04-21T21:12:46.934Z"
tags:
  - workflow
  - slack
  - knowledge-management
aliases:
  - slack-only-knowledge-capture-workflow
  - SKCW
---

# Slack-only Knowledge Capture Workflow

Slack-only Knowledge Capture Workflow is the preferred approach described for a short-horizon, high-signal hackathon workflow. It uses Slack as the live capture surface, a private GitHub repo as the durable working-memory layer, and a markdown-based wiki compiler to turn curated inputs into an interlinked wiki. A dedicated knowledge-graph service was considered unnecessary because its setup, scoping, and operational overhead were disproportionate to the 1–2 day time horizon. ^[2026-04-21-hackathon-knowledge-workflow-decision.md]

The workflow intentionally avoids ingesting raw chat dumps directly. Instead, rough observations, quotes, workflows, bottlenecks, artifacts, and trust boundaries are first promoted into short, structured, redacted notes in `curated/`. This curation step is meant to move from noisy, privacy-risky live conversation into artifacts that are suitable for the knowledge pipeline. ^[2026-04-21-hackathon-knowledge-workflow-decision.md]

Each promoted note is paired with a public research supplement created from Exa-backed web search and page fetches, typically with 3–5 relevant public sources in `research/`. The combined note pair is then ingested into `llmwiki`, which compiles the notes incrementally into a reusable markdown wiki. This keeps the workflow file-first and markdown-native while compounding both field notes and public context over time. ^[2026-04-21-hackathon-knowledge-workflow-decision.md]

Operationally, the sequence is: capture in Slack, promote to `curated/`, add a companion note in `research/`, ingest both files into `llmwiki`, compile after each note pair or small batch, query for recurring bottlenecks and the narrowest credible wedge, and save only the highest-value synthesis outputs. The source material frames this as a “raw sources in, interlinked wiki out” loop that supports incremental recompilation and repeated synthesis without a heavier memory stack. ^[2026-04-21-hackathon-knowledge-workflow-decision.md]

The workflow also defines clear trust boundaries: Slack is only the capture surface, only curated and redacted notes should be promoted, and public-safe outputs should be derived from compiled and supplemented notes rather than raw conversation history. Sensitive operational details, names, and secrets are excluded from exported or public-facing artifacts. ^[2026-04-21-hackathon-knowledge-workflow-decision.md]

## Workflow steps

1. Capture rough material in Slack.
2. Promote a thread into a short, structured, redacted note in `curated/`.
3. Create a companion public research note in `research/` using Exa-backed search.
4. Ingest both files into `llmwiki`.
5. Compile the wiki after each note pair or small batch.
6. Query the compiled wiki for repeated bottlenecks, recurring trust boundaries, artifacts, and the narrowest credible wedge.
7. Save only the high-value synthesis outputs worth compounding. ^[2026-04-21-hackathon-knowledge-workflow-decision.md]

## Why this workflow

The source material presents this workflow as a practical fit for a small, high-signal corpus and a short project horizon. It favors inspectable, markdown-native compilation over broader retrieval-heavy or graph-based systems, and it relies on focused public supplementation to sharpen the original question rather than add generic background noise. ^[2026-04-21-hackathon-knowledge-workflow-decision.md]

## Related concepts

- [[Curated note promotion]]
- [[Exa-backed research supplements]]
- [[LLM Wiki Compiler]]
- [[compiled markdown wiki]]
- [[Hash-Based Incremental Ingestion]]
- [[Query-and-Save Compounding Workflow]]
- [[Slack capture]]

## Sources

- `2026-04-21-hackathon-knowledge-workflow-decision.md`
