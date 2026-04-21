---
title: llm-wiki-compiler
summary: A markdown-based knowledge compiler that converts curated notes into an interlinked wiki and supports incremental recompilation after new inputs are added.
sources:
  - 2026-04-21-hackathon-knowledge-workflow-decision.md
createdAt: "2026-04-21T20:28:55.793Z"
updatedAt: "2026-04-21T21:15:11.372Z"
tags:
  - knowledge-management
  - markdown
  - compilation
aliases: []
---

# llm-wiki-compiler

`llm-wiki-compiler` is a markdown-based knowledge compiler used in a file-first workflow to turn curated source material into an interlinked wiki. In the hackathon decision, `atomicmemory/llm-wiki-compiler` was chosen because it compiles promoted notes into reusable wiki pages, supports incremental recompilation, and fits a short, inspectable workflow better than a heavier knowledge-graph service. ^[2026-04-21-hackathon-knowledge-workflow-decision.md]

## What it is

The compiler acts as a durable working-memory layer built from markdown files rather than a specialized graph database. In the described workflow, it ingests curated notes and public research supplements, compiles them into wiki pages, and supports repeated query-and-save cycles so useful synthesis can be folded back into the corpus. It is positioned as a strong fit for a small, high-signal corpus. ^[2026-04-21-hackathon-knowledge-workflow-decision.md]

## Why it was chosen

A dedicated knowledge-graph service was considered unnecessary for the hackathon’s 1–2 day time horizon because the setup and operational overhead would be disproportionate. The file-first compiler approach was preferred because it is inspectable, incremental, and aligned with short iterative research loops. Public research also describes the tool as better suited to moderate-scale, curated corpora than to sprawling retrieval-heavy systems. ^[2026-04-21-hackathon-knowledge-workflow-decision.md, 2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

## Core workflow

The workflow described for `llm-wiki-compiler` is:

1. Capture rough observations, quotes, workflows, bottlenecks, artifacts, and trust boundaries in Slack.
2. Promote a thread into a short, structured, redacted note in `curated/`.
3. Create a companion public research note in `research/` using Exa-backed web search, with 3–5 relevant public sources.
4. Ingest both files into `llmwiki`.
5. Compile the wiki after each note pair or small batch.
6. Query the wiki for repeated bottlenecks, recurring trust boundaries, artifacts, and the narrowest credible wedge.
7. Save only the highest-value synthesis outputs.

This keeps Slack as the capture surface while making the wiki compiler the reusable source of truth for synthesized knowledge. ^[2026-04-21-hackathon-knowledge-workflow-decision.md]

## How it works conceptually

The public [[LLM Wiki pattern]] describes the system as three layers: immutable raw sources, LLM-maintained wiki pages, and a schema/instruction layer. In that model, the human curates sources and asks questions, while the LLM handles summarization, cross-linking, filing, and bookkeeping. The compiler implementation reinforces this approach with a two-phase pipeline: extract concepts first, then generate pages, which helps avoid order dependence and partial updates. ^[2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

## Incremental compounding

A key feature of `llm-wiki-compiler` is hash-based change detection, which makes it suitable for frequent small updates. The workflow is designed so each new note pair can be compiled quickly, queried, and optionally saved back into the wiki if the synthesis is worth compounding. Over time, this creates a denser and more useful knowledge base. ^[2026-04-21-hackathon-knowledge-workflow-decision-public-research.md, 2026-04-21-hackathon-knowledge-workflow-decision.md]

## Role of public research supplements

Each promoted note can be paired with an Exa-backed public research supplement to add fresh web context and clean page content. These supplements are intended to enrich curated field notes with public references such as policy docs, product docs, or prior reporting, without changing the underlying markdown-native architecture. ^[2026-04-21-hackathon-knowledge-workflow-decision.md, 2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

## Constraints and cautions

The compiler is framed as a good fit for small, high-signal corpora, so it should not be fed noisy raw chat dumps or bulky material. Exa supplements can become generic filler if the search prompt is too broad, so the research step should stay focused on sharpening the actual wedge. The approach also depends on keeping sensitive details out of exported or public-facing artifacts and on promoting only curated, redacted notes. ^[2026-04-21-hackathon-knowledge-workflow-decision.md, 2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

## Related concepts

- [[LLM Wiki pattern]]
- [[markdown-native workflow]]
- [[knowledge compounding]]
- [[incremental compilation]]
- [[public research supplementation]]
- [[Exa]]
- [[Slack capture]]
- [[curated notes]]

## Sources

- `2026-04-21-hackathon-knowledge-workflow-decision.md`
- `2026-04-21-hackathon-knowledge-workflow-decision-public-research.md`
