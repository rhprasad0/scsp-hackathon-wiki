---
title: 2026 04 21 hackathon knowledge workflow decision public research
source: research/2026-04-21-hackathon-knowledge-workflow-decision-public-research.md
ingestedAt: "2026-04-21T20:28:26.034Z"
---

---
title: Hackathon Knowledge Workflow Decision Public Research Supplement
date: 2026-04-21
source_type: exa-public-research
status: ready-for-ingest
curated_note: curated/2026-04-21-hackathon-knowledge-workflow-decision.md
---

# Research question
- What public sources best support the decision to use a compiled markdown wiki workflow instead of a heavier graph-memory stack for a short hackathon, and what do they imply about adding Exa-backed supplementary research per note?

# Public sources
## Source 1
- URL: https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f
- Why it matters: This is the public formulation of the LLM Wiki pattern that directly motivated the repo and workflow choice.
- Key takeaways:
  - The central idea is to maintain a **persistent, compounding wiki** rather than repeatedly rediscover knowledge via query-time retrieval.
  - Karpathy frames the architecture as three layers: immutable raw sources, LLM-maintained wiki pages, and a schema/instruction layer.
  - The human's role is to curate sources and ask questions; the LLM's role is summarization, cross-linking, filing, and bookkeeping.
  - The pattern is explicitly designed for moderate-scale, curated corpora rather than heavyweight infrastructure.

## Source 2
- URL: https://raw.githubusercontent.com/atomicmemory/llm-wiki-compiler/main/README.md
- Why it matters: This is the public productized implementation being used in the hackathon repo.
- Key takeaways:
  - `llmwiki` uses a **two-phase pipeline** (extract concepts first, then generate pages), which helps avoid order dependence and partial updates.
  - It is **incremental** via hash-based change detection, which is valuable for frequent small note updates during a hackathon.
  - `llmwiki query --save` supports compounding useful synthesis back into the wiki.
  - The tool explicitly positions itself as better for a **small, high-signal corpus** than for sprawling retrieval-heavy setups.

## Source 3
- URL: https://docs.exa.ai/reference/exa-mcp
- Why it matters: This documents the public search/fetch capabilities that justify adding an external public-context supplement for each promoted field note.
- Key takeaways:
  - Exa supports web search and page fetch workflows designed for AI assistants.
  - The toolset is optimized for finding fresh web context and clean page content rather than relying on stale model memory.
  - This makes it a good fit for enriching curated field notes with public references, policy docs, product docs, or prior reporting.

# Reinforcing signals
- The LLM Wiki pattern and `llm-wiki-compiler` both reinforce a file-first, inspectable, markdown-native approach that is well-matched to short, iterative research loops.
- The public documentation around `llmwiki` supports the exact operations the hackathon workflow needs: ingest, compile, query, save, and lint.
- Exa's public docs reinforce that the search layer can supply up-to-date, public supplementary context without requiring a more complex memory or graph system.

# Contradictions / tensions
- The Karpathy pattern is intentionally abstract, while `llm-wiki-compiler` is a specific early implementation with acknowledged limitations.
- Public descriptions of the compiler emphasize small, high-signal corpora, which supports the hackathon use case but also warns against over-ingesting noisy or bulky material.
- Exa can enrich notes with strong public context, but if the research prompt is too broad it can introduce low-value background material instead of wedge-sharpening evidence.

# Supplementary synthesis
- Public sources support a decision rule of **compiled wiki over graph service** when the problem is short-horizon, file-first, and driven by curated note promotion. They also support the added step of pairing each curated note with targeted public search, because that increases evidentiary depth without changing the underlying architecture. The most important operational constraint remains the same: only high-signal, redacted notes and focused public supplements should enter the compiler pipeline.
