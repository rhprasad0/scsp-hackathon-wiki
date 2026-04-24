---
title: Slack-to-curated-notes workflow
summary: A process where raw observations are captured in Slack or local inboxes, then promoted into short structured redacted markdown notes before ingestion.
sources:
  - 2026-04-24-hackathon-operating-context.md
createdAt: "2026-04-24T21:22:55.665Z"
updatedAt: "2026-04-24T21:22:55.665Z"
tags:
  - workflow
  - slack
  - documentation
aliases:
  - slack-to-curated-notes-workflow
---

# Slack-to-curated-notes workflow

The Slack-to-curated-notes workflow uses Slack as the capture and coordination surface, then promotes raw material into short, structured, redacted curated notes before ingesting them into llm-wiki for compilation. The intended purpose is to turn field notes and SME conversations into durable source material while keeping the working memory layer private by default and preserving human review before any public-facing export. ^[2026-04-24-hackathon-operating-context.md]

In this workflow, raw observations, screenshots, voice notes, interview notes, and other working materials may be captured in Slack or local private inboxes. Curated notes are then used as the safer intermediary format for ingest, especially because raw hackathon notes can contain sensitive details, names, or operational context that should not be pushed into public-facing artifacts. The compiled wiki is treated as a working-memory boundary rather than a public source of truth. ^[2026-04-24-hackathon-operating-context.md]

A typical flow is: capture raw material, promote it into structured redacted curated notes, ingest those notes into llm-wiki and compile the wiki, query the wiki for repeated pain points, workflows, artifacts, trust boundaries, and candidate wedges, then export only public-safe summaries or spec fragments downstream. This sequence is designed to support synthesis into a narrow reusable spec rather than broad prototype sprawl. ^[2026-04-24-hackathon-operating-context.md]

The workflow also reflects several constraints. Slack attachment ingestion should not be treated as the only reliable path for important audio or files, outside or public research should not be automatic, and the evidence base should be treated as early hypothesis scaffolding rather than validated SME signal. AI-generated specs should preserve human review and avoid inventing operational facts. ^[2026-04-24-hackathon-operating-context.md]

## Related concepts

- [[working memory]]
- [[curated markdown notes]]
- [[private source material]]
- [[public-safe exports]]
- [[human review]]
- [[trust boundaries]]
- [[evidence gaps]]

## Sources

- `2026-04-24-hackathon-operating-context.md`
