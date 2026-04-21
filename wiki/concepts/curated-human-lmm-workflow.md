---
title: Curated Human-LMM Workflow
summary: A division of labor where humans curate sources and ask questions while the LLM handles summarization, cross-linking, filing, and bookkeeping.
sources:
  - 2026-04-21-hackathon-knowledge-workflow-decision-public-research.md
createdAt: "2026-04-21T21:15:04.793Z"
updatedAt: "2026-04-21T21:15:04.793Z"
tags:
  - workflow
  - human-in-the-loop
  - llm
aliases:
  - curated-human-lmm-workflow
  - CHW
---

# Curated Human-LMM Workflow

Curated Human-LMM Workflow is a file-first, markdown-native workflow for short-horizon, high-signal knowledge work. It centers on moving from Slack capture to curated, redacted notes, adding targeted public research supplements, and compiling the results into a persistent wiki that compounds useful synthesis over time. The workflow is designed so the human curates sources and asks questions while the LLM handles summarization, cross-linking, filing, bookkeeping, and incremental compilation. ^[2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

The workflow prefers a compiled markdown wiki over a heavier graph-memory stack when the corpus is curated and the goal is to build an inspectable, persistent knowledge base rather than repeatedly rediscovering information at query time. It is presented as especially well suited to moderate-scale, high-signal corpora and iterative research loops, where incremental ingestion and `query --save` style compounding matter more than broad retrieval over a large dynamic memory structure. [[compiled markdown wiki]] [[graph memory]] [[LLM Wiki pattern]] ^[2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

## Workflow structure

1. Capture rough material in Slack.
2. Promote the thread into a short, structured, redacted note in `curated/`.
3. Add a companion public research note in `research/` using Exa-backed web search.
4. Ingest both files into `llmwiki`.
5. Compile the wiki incrementally after each note pair or small batch.
6. Query for recurring bottlenecks, trust boundaries, artifacts, and the narrowest credible wedge.
7. Save only the highest-value synthesis outputs. ^[2026-04-21-hackathon-knowledge-workflow-decision.md]

[[Curated Note Promotion]] is the first step that turns rough observations, quotes, workflows, bottlenecks, artifacts, and trust boundaries into a safe artifact for the pipeline. Raw chat dumps are not ingested directly, and sensitive operational details, names, and secrets are kept out of exported or public-facing artifacts. [[Curated note promotion]] [[Slack capture]] ^[2026-04-21-hackathon-knowledge-workflow-decision.md]

## Human and model roles

The workflow assigns the human the job of selecting and curating sources, while the LLM performs the mechanical knowledge-work tasks. In the source material, this division of labor includes summarization, cross-linking, filing, bookkeeping, and generating wiki pages from a schema and instruction layer. The aim is to preserve human judgment at the point of promotion while letting the system compound structure and synthesis. [[LLM Wiki pattern]] [[Three-Layer Wiki Architecture]] ^[2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

## Public research supplementation

Each promoted note can be paired with a focused public research supplement created with Exa search and page fetch. The supplement is meant to add relevant public context and evidentiary depth without changing the underlying file-first wiki architecture, and the source material recommends keeping it narrow and using about 3–5 relevant public sources. Useful source types include policy documents, product documentation, and prior reporting. [[Exa Backed Public Research Supplement]] [[Exa-backed Research Supplement]] [[Exa Public Research Supplementation]] ^[2026-04-21-hackathon-knowledge-workflow-decision.md, 2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

## Operational constraints

The workflow works best with a small, high-signal corpus. The source material warns that over-ingesting noisy or bulky material can undermine incremental processing and focused supplementation, and that overly broad research prompts can produce low-value filler instead of evidence that sharpens the question. Only curated, redacted notes and targeted public supplements should enter the compiler pipeline. [[Hash-Based Incremental Ingestion]] [[Query-and-Save Compounding Workflow]] [[small high-signal corpus]] ^[2026-04-21-hackathon-knowledge-workflow-decision-public-research.md, 2026-04-21-hackathon-knowledge-workflow-decision.md]

## Related concepts

- [[Curated note promotion]]
- [[Exa Backed Public Research Supplement]]
- [[Decision Rule for Wiki Over Graph Memory]]
- [[LLM Wiki Compiler]]
- [[Hash-Based Incremental Ingestion]]
- [[Query-and-Save Compounding Workflow]]
- [[Slack capture]]

## Sources

- `2026-04-21-hackathon-knowledge-workflow-decision.md`
- `2026-04-21-hackathon-knowledge-workflow-decision-public-research.md`
