---
title: Exa-Backed Research Supplements
summary: Each curated note is paired with a companion research note built from Exa-powered public search to add relevant outside context and sharpen the synthesis.
sources:
  - 2026-04-21-hackathon-knowledge-workflow-decision.md
createdAt: "2026-04-21T20:29:05.225Z"
updatedAt: "2026-04-21T21:15:15.538Z"
tags:
  - search
  - research
  - public-context
aliases:
  - exa-backed-research-supplements
  - ERS
---

# Exa-Backed Research Supplements

Exa-backed research supplements are companion public research notes created for each promoted curated note. In the workflow described in the source material, they are used to add relevant public context to a note pair before ingestion into the wiki compiler. The goal is to compound field notes with external evidence while keeping the workflow markdown-native and file-first. ^[2026-04-21-hackathon-knowledge-workflow-decision.md]

These supplements are produced with Exa-backed web search, and the workflow calls for 3–5 relevant public sources per supplement. Exa is chosen because its search and fetch capabilities are intended to provide fresh web context and clean page content, making it suitable for supplementing notes with public references, policy documents, product documentation, or prior reporting. ^[2026-04-21-hackathon-knowledge-workflow-decision.md, 2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

In the described process, a public research supplement is created after a Slack thread has been promoted into a short, structured, redacted note in `curated/`. The companion supplement goes in `research/`, and both files are then ingested into `llmwiki` for compilation and later query-and-save synthesis. This keeps Slack as the capture surface while the wiki becomes the reusable source of truth for synthesized knowledge. ^[2026-04-21-hackathon-knowledge-workflow-decision.md]

Exa-backed supplements are meant to increase evidentiary depth without changing the underlying compiled markdown wiki architecture or introducing a heavier memory or graph system. They are best used in a small, high-signal corpus where incremental compilation and repeated synthesis can compound useful knowledge over time. ^[2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

A key constraint is focus: if the research prompt is too broad, public supplementation can produce generic filler rather than evidence that sharpens the question. The source material therefore treats Exa-backed supplements as most useful when they remain targeted and specific, with the objective of narrowing the wedge rather than adding background noise. ^[2026-04-21-hackathon-knowledge-workflow-decision.md, 2026-04-21-hackathon-knowledge-workflow-decision-public-research.md]

## Related concepts

- [[Exa Public Research Supplementation]]
- [[LLM Wiki Compiler]]
- [[LLM Wiki Pattern]]
- [[Query-and-Save Compounding Workflow]]
- [[Hash-Based Incremental Ingestion]]
- [[compiled markdown wiki]]
- [[curated notes]]
- [[public research supplementation]]

## Sources

- `2026-04-21-hackathon-knowledge-workflow-decision.md`
- `2026-04-21-hackathon-knowledge-workflow-decision-public-research.md`
