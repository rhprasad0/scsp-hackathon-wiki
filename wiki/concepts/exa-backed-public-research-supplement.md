---
title: Exa Backed Public Research Supplement
summary: A workflow that adds targeted web search and page fetch results to curated notes to enrich them with fresh public context and evidence.
sources:
  - 2026-04-21-hackathon-knowledge-workflow-decision-public-research.md
createdAt: "2026-04-21T21:12:44.812Z"
updatedAt: "2026-04-21T21:12:44.812Z"
tags:
  - search
  - research
  - external-context
aliases:
  - exa-backed-public-research-supplement
  - EBPRS
---

# Exa Backed Public Research Supplement

Exa Backed Public Research Supplement refers to the step of pairing a promoted curated note with a targeted public research note created from Exa search and page fetch results. In the described workflow, the supplement is added after a Slack thread has been converted into a short, structured, redacted note, and before both files are ingested into the wiki compiler. ^[2026-04-21-hackathon-knowledge-workflow-decision.md, 2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

The supplement’s purpose is to add relevant public context and evidentiary depth without changing the underlying file-first, markdown-native wiki architecture. It is intended to support a persistent, compounding knowledge base by strengthening each note with focused external references, such as policy documents, product documentation, or prior reporting. ^[2026-04-21-hackathon-knowledge-workflow-decision.md, 2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

The workflow treats Exa as useful because its search and fetch capabilities are designed to surface fresh web context and clean page content. The source material recommends using about 3–5 relevant public sources per supplement, while keeping the research narrowly targeted so it sharpens the note rather than adding generic background material. ^[2026-04-21-hackathon-knowledge-workflow-decision.md, 2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

Exa Backed Public Research Supplement fits within a broader process where Slack is the capture surface, curated notes are promoted into `curated/`, supplements are written into `research/`, and both are then compiled incrementally in `llmwiki`. This approach is presented as preferable to a heavier graph-memory system for short-horizon, high-signal work. ^[2026-04-21-hackathon-knowledge-workflow-decision.md, 2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

## Workflow role

1. Capture rough material in Slack.
2. Promote it into a short, structured, redacted note in `curated/`.
3. Create a companion public research supplement in `research/` using Exa-backed web search.
4. Ingest both files into `llmwiki`.
5. Compile incrementally and use query-and-save synthesis to compound useful outputs. ^[2026-04-21-hackathon-knowledge-workflow-decision.md]

## Constraints and scope

The supplement should stay focused on the specific question raised by the curated note. The source material warns that overly broad research prompts can produce low-value filler instead of evidence that meaningfully improves the note, so public supplementation works best when it remains narrow and selective. ^[2026-04-21-hackathon-knowledge-workflow-decision.md, 2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

The source material also emphasizes that only curated, redacted notes and their focused public supplements should enter the compiler pipeline. Raw chat dumps and sensitive operational details are not meant to be ingested directly or exposed in public-facing artifacts. ^[2026-04-21-hackathon-knowledge-workflow-decision.md]

## Related concepts

- [[Exa Public Research Supplementation]]
- [[Exa-backed research supplements]]
- [[Curated note promotion]]
- [[LLM Wiki Compiler]]
- [[compiled markdown wiki]]
- [[Hash-Based Incremental Ingestion]]
- [[Query-and-Save Compounding Workflow]]
- [[Slack capture]]

## Sources

- `2026-04-21-hackathon-knowledge-workflow-decision.md`
- `2026-04-21-hackathon-knowledge-workflow-decision-public-research.md`
