---
title: LLM Wiki Compiler
summary: A markdown-native implementation that compiles concepts from source notes into wiki pages using an incremental workflow suited to small, high-signal corpora.
sources:
  - 2026-04-21-hackathon-knowledge-workflow-decision-public-research.md
  - 2026-04-21-hackathon-knowledge-workflow-decision.md
createdAt: "2026-04-21T20:28:55.793Z"
updatedAt: "2026-04-21T20:28:55.793Z"
tags:
  - tooling
  - markdown
  - knowledge-management
aliases:
  - llm-wiki-compiler
  - LWC
---

# LLM Wiki Compiler

`LLM Wiki Compiler` refers to a markdown-native knowledge workflow and toolchain for turning curated inputs into an interlinked, compounding wiki. In the hackathon decision, `atomicmemory/llm-wiki-compiler` was chosen as the practical knowledge compiler because it converts promoted notes into a reusable wiki, supports incremental recompilation, and fits a short, file-first workflow better than a heavier knowledge-graph service. The broader pattern is to keep raw sources separate, promote only curated notes, and compound useful synthesis over time. ^[2026-04-21-hackathon-knowledge-workflow-decision.md, 2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

## What it is

The compiler is used as a durable working-memory layer built from markdown files rather than a specialized graph database. In the described workflow, it ingests curated notes and public research supplements, compiles them into wiki pages, and supports repeated query-and-save cycles so high-value synthesis can be folded back into the corpus. It is explicitly positioned as a good fit for a small, high-signal corpus. ^[2026-04-21-hackathon-knowledge-workflow-decision.md, 2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

## Why it was chosen

A dedicated knowledge graph service was judged unnecessary for a 1–2 day hackathon because the setup, scoping, and operational overhead would be disproportionate to the problem. The file-first compiler approach was preferred because it is inspectable, incremental, and aligned with short iterative research loops. Public documentation also emphasizes that the tool is better suited to moderate-scale, curated corpora than to sprawling retrieval-heavy systems. ^[2026-04-21-hackathon-knowledge-workflow-decision.md, 2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

## Core workflow

The workflow described for the hackathon is:

1. Capture rough observations, quotes, workflows, bottlenecks, artifacts, and trust boundaries in Slack.
2. Promote a thread into a short, structured, redacted note in `curated/`.
3. Create a companion public research note in `research/` using Exa-backed web search, with 3–5 relevant public sources.
4. Ingest both files into `llmwiki`.
5. Compile the wiki after each note pair or small batch.
6. Query the wiki for repeated bottlenecks, recurring trust boundaries, artifacts, and the narrowest credible wedge.
7. Save only the highest-value synthesis outputs.

This design keeps Slack as the capture surface, while the wiki compiler becomes the reusable source of truth for synthesized knowledge. ^[2026-04-21-hackathon-knowledge-workflow-decision.md]

## How it works conceptually

The public [[LLM Wiki Pattern]] describes the system as three layers: immutable raw sources, LLM-maintained wiki pages, and a schema/instruction layer. The human curates sources and asks questions, while the LLM handles summarization, cross-linking, filing, and bookkeeping. The compiler implementation reinforces this model by using a two-phase pipeline: extract concepts first, then generate pages. This helps avoid order dependence and partial updates. ^[2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

## Incremental compounding

A key feature of `llm-wiki-compiler` is incremental operation through hash-based change detection, which makes it suitable for frequent small note updates. The workflow is designed so that each new note pair can be compiled quickly, queried, and then optionally saved back into the wiki if the synthesis is worth compounding. This creates a feedback loop where the wiki gets denser and more useful over time. ^[2026-04-21-hackathon-knowledge-workflow-decision-public-research.md, 2026-04-21-hackathon-knowledge-workflow-decision.md]

## Role of public research supplements

The workflow adds an Exa-backed public research supplement for each promoted note. Exa’s search and fetch capabilities are intended to provide fresh web context and clean page content, which makes them useful for enriching curated field notes with public references, policy docs, product docs, or prior reporting. The intent is to increase evidentiary depth without changing the underlying markdown-based architecture. ^[2026-04-21-hackathon-knowledge-workflow-decision.md, 2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

## Constraints and cautions

The public materials also highlight a few limits. The compiler is framed as a strong fit for small, high-signal corpora, so it should not be fed noisy raw chat dumps or bulky material. Exa supplements can become generic filler if the search prompt is too broad, so the research step should stay focused on sharpening the actual wedge. The overall approach depends on keeping sensitive details out of exported or public-facing artifacts and on promoting only curated, redacted notes. ^[2026-04-21-hackathon-knowledge-workflow-decision.md, 2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

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
