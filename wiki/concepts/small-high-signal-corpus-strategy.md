---
title: Small High-Signal Corpus Strategy
summary: An approach that favors a small, curated, high-signal corpus over sprawling retrieval-heavy systems, especially for short hackathon-style workflows.
sources:
  - 2026-04-21-hackathon-knowledge-workflow-decision-public-research.md
createdAt: "2026-04-21T21:15:28.317Z"
updatedAt: "2026-04-21T21:15:28.317Z"
tags:
  - corpus-design
  - hackathon
  - information-management
aliases:
  - small-high-signal-corpus-strategy
  - SHCS
---

# Small High-Signal Corpus Strategy

Small High-Signal Corpus Strategy is an approach to knowledge work that favors a compact, curated corpus over a large, noisy one. In the source material, this strategy is paired with a file-first, markdown-native workflow: capture rough material, promote only the most valuable and safe notes, add narrowly targeted public research where useful, and compile the results into a persistent wiki. The emphasis is on compounding useful synthesis over time rather than building a heavyweight retrieval or graph-memory system. ^[2026-04-21-hackathon-knowledge-workflow-decision-public-research.md, 2026-04-21-hackathon-knowledge-workflow-decision.md]

The strategy is explicitly recommended for moderate-scale, high-signal corpora and short-horizon work. It works best when the corpus stays curated, inspectable, and focused on iterative research loops. The source material warns that over-ingesting low-value or bulky material can undermine the benefits of incremental processing and make the wiki less effective as a compounding working-memory layer. ^[2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

A core operational pattern is to begin with rough capture in Slack, then promote a thread into a short, structured, redacted note in `curated/`. Sensitive operational details, names, and secrets are kept out of exported artifacts. This promotion step is what turns noisy live material into a small corpus suitable for downstream compilation. ^[2026-04-21-hackathon-knowledge-workflow-decision.md]

The corpus is strengthened by pairing each promoted note with a focused public research supplement in `research/`. The source material describes Exa-backed search and page fetch as a way to add fresh web context and clean page content, typically using about 3–5 relevant public sources per supplement. Suggested source types include policy documents, product documentation, and prior reporting. The supplement should sharpen the note, not add broad background noise. ^[2026-04-21-hackathon-knowledge-workflow-decision.md, 2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

This strategy also depends on incremental compilation. The compiler workflow described in the sources uses a two-phase pipeline—extract concepts first, then generate pages—to reduce order dependence and partial updates. [[Hash-Based Incremental Ingestion]] and `query --save` style compounding make frequent small updates practical, which fits a small corpus that is repeatedly refined rather than replaced. ^[2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

The source material positions this strategy as a practical alternative to a heavier graph-memory stack. It is a good fit when the goal is to produce a persistent, compounding wiki from curated sources, with the human curating and asking questions while the LLM handles summarization, cross-linking, filing, and bookkeeping. ^[2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

## Characteristics

- Curated rather than exhaustive
- Short-horizon and iterative
- Markdown-native and inspectable
- Built around promoted notes, not raw chat dumps
- Strengthened with targeted public supplementation
- Optimized for incremental compilation and synthesis ^[2026-04-21-hackathon-knowledge-workflow-decision.md, 2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

## Practical workflow

1. Capture rough material in Slack.
2. Promote it into a short, structured, redacted note in `curated/`.
3. Add a narrowly focused public research note in `research/`.
4. Ingest both into `llmwiki`.
5. Compile incrementally after each note pair or small batch.
6. Query for recurring bottlenecks, trust boundaries, artifacts, and the narrowest credible wedge.
7. Save only the highest-value synthesis outputs. ^[2026-04-21-hackathon-knowledge-workflow-decision.md]

## When it fits

This strategy fits when the work is file-first, the corpus is deliberately small, and the goal is to compound high-signal notes into a durable wiki. It is especially suitable when the workflow needs to stay lightweight, transparent, and focused on a narrow research wedge rather than broad retrieval over a large dynamic memory store. ^[2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

## Risks and constraints

The main constraint is focus. If the corpus grows too noisy, or if research prompts become too broad, the system can accumulate low-value filler instead of evidence that sharpens the question. The sources also emphasize that raw chat dumps should not be ingested directly, and that only curated, redacted notes plus focused supplements should enter the compiler pipeline. ^[2026-04-21-hackathon-knowledge-workflow-decision.md, 2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

## Related concepts

- [[Curated note promotion]]
- [[Exa-backed Research Supplement]]
- [[LLM Wiki pattern]]
- [[compiled markdown wiki]]
- [[Hash-Based Incremental Ingestion]]
- [[Query-and-Save Compounding Workflow]]
- [[Slack capture]]
- [[Decision Rule for Wiki Over Graph Memory]]

## Sources

- `2026-04-21-hackathon-knowledge-workflow-decision-public-research.md`
