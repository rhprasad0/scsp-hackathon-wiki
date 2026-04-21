---
title: Private GitHub repo as working memory
summary: Using a private GitHub repository as the durable storage layer for curated notes, research supplements, and compiled wiki outputs.
sources:
  - 2026-04-21-hackathon-knowledge-workflow-decision.md
createdAt: "2026-04-21T20:29:02.017Z"
updatedAt: "2026-04-21T20:29:02.017Z"
tags:
  - github
  - knowledge-management
  - workflow
aliases:
  - private-github-repo-as-working-memory
  - PGRAWM
---

# Private GitHub repo as working memory

A private GitHub repo can serve as a durable working-memory layer in a hackathon knowledge workflow. In the source material, the repo is used alongside Slack capture and `llm-wiki-compiler` to hold curated, redacted notes, public research supplements, and compiled wiki output, while avoiding a heavier knowledge-graph service. The approach is framed as file-first, markdown-based, inspectable, and suitable for a short 1–2 day workflow. ^[2026-04-21-hackathon-knowledge-workflow-decision.md, 2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

The repo’s role is not to store raw chat dumps, but to preserve curated source material that has been promoted from Slack. The workflow keeps Slack as the capture surface and uses the private repository as the long-term source of truth for synthesized knowledge, with `curated/` notes, `research/` supplements, compiled `wiki/` pages, and `exports/` for draft fragments. ^[2026-04-21-hackathon-knowledge-workflow-decision.md]

This working-memory model relies on incremental recompilation. Notes are ingested into `llmwiki`, the wiki is compiled after each note pair or small batch, and useful query results can be saved back into the wiki so the knowledge base compounds over time. The material emphasizes that this fits small, high-signal corpora better than sprawling retrieval-heavy or graph-based systems. ^[2026-04-21-hackathon-knowledge-workflow-decision-public-research.md, 2026-04-21-hackathon-knowledge-workflow-decision.md]

The repository also supports a clear trust boundary. Only curated, redacted notes are promoted into the pipeline, while sensitive operational details, names, and secrets stay out of exported or public-facing artifacts. Public-safe outputs are derived from compiled and supplemented notes rather than raw conversation history. ^[2026-04-21-hackathon-knowledge-workflow-decision.md]

## How it is used

1. Capture rough observations, quotes, workflows, bottlenecks, artifacts, and trust boundaries in Slack.
2. Promote the thread into a short, structured, redacted note in `curated/`.
3. Add a companion public research note in `research/` using Exa-backed search.
4. Ingest both files into `llmwiki`.
5. Compile the wiki after each note pair or small batch.
6. Query the wiki for repeated themes and the narrowest credible wedge.
7. Save only the highest-value synthesis outputs.

This makes the private repo a persistent working set for iteratively refining what the team knows, rather than a place where information is merely archived. ^[2026-04-21-hackathon-knowledge-workflow-decision.md]

## Why this approach

The source material says a dedicated knowledge graph service was considered unnecessary because its setup, scoping, and operational overhead would be disproportionate for a 1–2 day hackathon. The private repo plus markdown compiler approach was preferred because it is simpler, inspectable, and aligned with the team’s short iterative loop. ^[2026-04-21-hackathon-knowledge-workflow-decision.md, 2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

The workflow also avoids direct ingestion of noisy raw chat, which would degrade quality and create privacy risk. Instead, it depends on promotion and redaction before content enters the durable memory layer. That keeps the repository focused on curated, high-signal material that can be repeatedly compiled and queried. ^[2026-04-21-hackathon-knowledge-workflow-decision.md]

## Related concepts

- [[LLM Wiki Compiler]]
- [[LLM Wiki Pattern]]
- [[Query-and-Save Compounding Workflow]]
- [[Three-Layer Wiki Architecture]]
- [[Hash-Based Incremental Ingestion]]
- [[Slack capture]]
- [[curated notes]]

## Sources

- `2026-04-21-hackathon-knowledge-workflow-decision.md`
- `2026-04-21-hackathon-knowledge-workflow-decision-public-research.md`
