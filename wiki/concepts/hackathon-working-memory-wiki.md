---
title: Hackathon working-memory wiki
summary: A private llm-wiki repository serves as the working-memory layer for a short hackathon sprint, compiling curated notes into searchable context.
sources:
  - 2026-04-24-hackathon-operating-context.md
createdAt: "2026-04-24T21:22:55.156Z"
updatedAt: "2026-04-25T16:27:57.036Z"
tags:
  - knowledge-management
  - hackathon
  - workflow
aliases:
  - hackathon-working-memory-wiki
  - HWW
---

# Hackathon working-memory wiki

The hackathon working-memory wiki is a private compiled wiki used during a short hackathon sprint to support discovery and synthesis. It serves as the working-memory layer for turning field notes and SME conversations into a narrow, evidence-backed GenAI.mil spec, rather than acting as a public source of truth. Public-facing exports from this workflow must be separately sanitized. ^[2026-04-24-hackathon-operating-context.md]

The workflow begins with capturing raw observations, screenshots, voice notes, and interview notes in Slack or local private inboxes. That material is then promoted into short, structured, redacted curated notes before ingest. Curated markdown notes are ingested into llm-wiki, compiled into the wiki, and queried for repeated pain points, workflows, artifacts, trust boundaries, and candidate wedges. The goal is to support synthesis into a narrow reusable spec rather than broad prototype sprawl. ^[2026-04-24-hackathon-operating-context.md]

The operating context treats the early evidence base as hypothesis scaffolding, not validated SME signal. Outside or public research is not automatic; it is used only when there is a specific evidence gap worth filling. Because access to DoD-experienced participants may be uneven during a hackathon, discovery is meant to be opportunistic and interview-efficient. ^[2026-04-24-hackathon-operating-context.md]

Trust boundaries are central to the wiki’s purpose and use. Raw notes and working synthesis remain private by default, the compiled wiki is not a public source of truth, and any AI-generated spec should preserve human review and avoid inventing operational facts. Downstream exports are limited to sanitized, billboard-safe summaries or spec fragments. ^[2026-04-24-hackathon-operating-context.md]

Related concepts include [[controlled document set]], [[human review]], [[workflow drafting]], [[traceability]], and [[trust boundaries]]. ^[2026-04-24-hackathon-operating-context.md]

## Sources

- [2026-04-24-hackathon-operating-context.md]
