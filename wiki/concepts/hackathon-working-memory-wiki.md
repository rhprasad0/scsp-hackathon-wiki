---
title: Hackathon working-memory wiki
summary: A private llm-wiki repository used as the working-memory layer for a short hackathon sprint, compiling curated notes into searchable context.
sources:
  - 2026-04-24-hackathon-operating-context.md
createdAt: "2026-04-24T21:22:55.156Z"
updatedAt: "2026-04-24T21:22:55.156Z"
tags:
  - knowledge-management
  - hackathon
  - wiki
aliases:
  - hackathon-working-memory-wiki
  - HWW
---

# Hackathon working-memory wiki

The hackathon working-memory wiki is a private compiled wiki used during a short hackathon sprint to turn field notes and SME conversations into a narrow, evidence-backed GenAI.mil spec. It serves as a working-memory layer rather than a public source of truth, and public-facing exports must be separately sanitized. The emphasis is on interview-driven synthesis, visible trust boundaries, and sanitized downstream outputs. ^[2026-04-24-hackathon-operating-context.md]

This wiki is fed by a workflow that starts with capturing raw observations, screenshots, voice notes, and interview notes in Slack or local private inboxes, then promoting that material into short, structured, redacted curated notes before ingest. Those curated markdown notes are ingested into llm-wiki, compiled into the wiki, and queried for repeated pain points, workflows, artifacts, trust boundaries, and candidate wedges. The resulting material is intended to support a narrow reusable spec rather than broad prototype sprawl. ^[2026-04-24-hackathon-operating-context.md]

The operating context treats the early evidence base as hypothesis scaffolding, not validated SME signal. Outside or public research should not be automatic; it should be used only when a specific evidence gap is worth filling. Because the hackathon environment may make access to DoD-experienced participants uneven, discovery is meant to be opportunistic and interview-efficient. ^[2026-04-24-hackathon-operating-context.md]

Trust boundaries are central to the wiki’s use. Raw notes and working synthesis remain private by default, the compiled wiki is not a public source of truth, and any AI-generated spec should preserve human review and avoid inventing operational facts. Public exports are limited to sanitized, billboard-safe summaries or spec fragments. ^[2026-04-24-hackathon-operating-context.md]

Related concepts include [[controlled document set]], [[human review]], [[workflow drafting]], [[traceability]], and [[trust boundaries]]. ^[2026-04-24-hackathon-operating-context.md]

## Sources

- [2026-04-24-hackathon-operating-context.md]
