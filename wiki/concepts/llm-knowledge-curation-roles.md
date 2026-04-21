---
title: LLM Knowledge Curation Roles
summary: A division of labor where humans curate sources and ask questions, while the LLM handles summarization, cross-linking, filing, and bookkeeping.
sources:
  - 2026-04-21-hackathon-knowledge-workflow-decision-public-research.md
createdAt: "2026-04-21T21:12:40.494Z"
updatedAt: "2026-04-21T21:12:40.494Z"
tags:
  - human-ai-collaboration
  - workflow
  - knowledge-management
aliases:
  - llm-knowledge-curation-roles
  - LKCR
---

# LLM Knowledge Curation Roles

LLM knowledge curation roles describe the division of labor in a file-first, markdown-native knowledge workflow. In the source material, the human curates sources and asks questions, while the LLM handles summarization, cross-linking, filing, and bookkeeping. This role split is presented as part of a persistent, compounding wiki approach rather than a query-time retrieval system. ^[2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

The curation workflow begins with capturing rough material in Slack and then promoting a thread into a short, structured, redacted note in `curated/`. Only curated, redacted notes are meant to be promoted; raw chat dumps are not ingested directly, and sensitive operational details, names, and secrets should be excluded from exported or public-facing artifacts. ^[2026-04-21-hackathon-knowledge-workflow-decision.md]

After promotion, each note is paired with an Exa-backed public research supplement in `research/`. This adds targeted public context—such as policy documents, product documentation, or prior reporting—without changing the underlying compiled markdown wiki workflow or introducing a heavier graph-memory system. ^[2026-04-21-hackathon-knowledge-workflow-decision.md, 2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

Operationally, the workflow assigns the LLM to incremental compilation and synthesis tasks. The source material describes a two-phase pipeline in which concepts are extracted first and pages are generated second, reducing order dependence and partial updates. It also notes hash-based incremental change detection and `query --save` style compounding as mechanisms for preserving useful synthesis back into the wiki over time. ^[2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

This role structure is most appropriate for short-horizon, high-signal work. The sources emphasize that the approach fits a small, curated corpus where the wiki remains inspectable and markdown-native, and where focused public supplementation sharpens the note rather than adding low-value background material. ^[2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

## Role breakdown

- **Human curator**: captures rough material, promotes threads into redacted notes, selects focused public research, and asks questions.
- **LLM compiler**: summarizes, cross-links, files, and maintains bookkeeping across wiki pages.
- **External research layer**: supplies fresh public context through Exa-backed search and page fetch for each promoted note.
- **Persistent wiki**: stores compiled, compounding knowledge in a file-first markdown format. ^[2026-04-21-hackathon-knowledge-workflow-decision-public-research.md, 2026-04-21-hackathon-knowledge-workflow-decision.md]

## Workflow constraints

The workflow depends on keeping the corpus small, curated, and high-signal. The sources warn that over-ingesting noisy or bulky material can undermine incremental processing, and that broad research prompts can produce generic filler instead of evidence that narrows the question. ^[2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

## Related concepts

- [[Curated note promotion]]
- [[Exa Public Research Supplementation]]
- [[LLM Wiki pattern]]
- [[LLM Wiki Compiler]]
- [[Hash-Based Incremental Ingestion]]
- [[compiled markdown wiki]]
- [[Query-and-Save Compounding Workflow]]
- [[Slack capture]]

## Sources

- `2026-04-21-hackathon-knowledge-workflow-decision.md`
- `2026-04-21-hackathon-knowledge-workflow-decision-public-research.md`
