---
title: Redacted Curated Notes
summary: Promoted Slack threads are transformed into short, structured, privacy-safe notes in a curated directory before entering the wiki pipeline.
sources:
  - 2026-04-21-hackathon-knowledge-workflow-decision.md
createdAt: "2026-04-21T21:15:08.722Z"
updatedAt: "2026-04-21T21:15:08.722Z"
tags:
  - privacy
  - note-taking
  - redaction
aliases:
  - redacted-curated-notes
  - RCN
---

# Redacted Curated Notes

Redacted curated notes are the short, structured notes created by promoting rough observations from Slack into a `curated/` file so that only high-value, safe content enters the wiki pipeline. They are the first step in the file-first workflow before any public research supplement is added or the note is ingested into the wiki compiler. ^[2026-04-21-hackathon-knowledge-workflow-decision.md]

These notes are meant to replace noisy live chat with a curated artifact that can safely enter a markdown-based knowledge workflow. The source material says raw chat dumps should not be ingested directly, and that sensitive operational details, names, and secrets should stay out of exported or public-facing artifacts. ^[2026-04-21-hackathon-knowledge-workflow-decision.md]

In the described workflow, a redacted curated note is paired with a focused public research supplement in `research/`, then both files are ingested into `llmwiki` and compiled incrementally. This lets the wiki compound high-signal synthesis over time while keeping Slack as the capture surface and preserving privacy boundaries. ^[2026-04-21-hackathon-knowledge-workflow-decision.md]

## Workflow position

1. Capture rough material in Slack.
2. Promote it into a short, structured, redacted note in `curated/`.
3. Add a companion public research note in `research/` using Exa-backed web search.
4. Ingest both files into `llmwiki`.
5. Compile the wiki after each note pair or small batch.
6. Query for recurring bottlenecks, trust boundaries, artifacts, and the narrowest credible wedge.
7. Save only the highest-value synthesis outputs. ^[2026-04-21-hackathon-knowledge-workflow-decision.md]

## What redaction is doing here

Redaction keeps the curated note safe for the wiki pipeline by removing material that should not appear in exported or public-facing artifacts. The source material specifically calls out sensitive operational details, names, and secrets as content that should remain out of the compiled output. ^[2026-04-21-hackathon-knowledge-workflow-decision.md]

## Why the notes are curated

The notes are curated so the wiki receives only useful, high-signal material rather than unfiltered conversation history. This supports incremental recompilation, makes the knowledge base easier to inspect, and helps the workflow compound rather than repeatedly rediscover the same information. ^[2026-04-21-hackathon-knowledge-workflow-decision.md]

## Related concepts

- [[Curated Note Promotion]]
- [[Exa Backed Public Research Supplement]]
- [[LLM Wiki Compiler]]
- [[compiled markdown wiki]]
- [[Hash-Based Incremental Ingestion]]
- [[Slack capture]]
- [[Query-and-Save Compounding Workflow]]

## Sources

- `2026-04-21-hackathon-knowledge-workflow-decision.md`
