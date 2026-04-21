---
title: 2026 04 21 hackathon knowledge workflow decision
source: curated/2026-04-21-hackathon-knowledge-workflow-decision.md
ingestedAt: "2026-04-21T20:28:25.289Z"
---

---
title: Hackathon Knowledge Workflow Decision
date: 2026-04-21
sensitivity: private-redacted
source_type: workflow-decision
status: ready-for-ingest
---

# Context
- Thread/date: 2026-04-21
- Topic slug: hackathon-knowledge-workflow-decision
- Confidence: high
- Scope: internal tooling choice for a 1–2 day SCSP / GenAI.mil hackathon workflow

# Core observations
- A dedicated knowledge graph service was judged unnecessary for the time horizon and complexity budget of the hackathon.
- The preferred approach is a **Slack-only** capture workflow with a **private GitHub repo** as the durable working memory layer.
- `atomicmemory/llm-wiki-compiler` was selected as the practical knowledge compiler because it turns curated notes into an interlinked markdown wiki with incremental recompilation.
- The workflow should **not** ingest raw chat dumps directly.
- For each promoted note, Hermes should add a **public research supplement** using Exa-backed web search so the wiki compounds not only field notes but also relevant public context.
- `llmwiki` in this repo is configured to use the local **codex-bridge** path backed by the user's Codex subscription credentials.

# Workflow described
1. Capture rough observations, quotes, workflows, bottlenecks, artifacts, and trust boundaries in Slack.
2. Ask Hermes to promote a thread into a short, structured, redacted note in `curated/`.
3. Ask Hermes to use Exa-backed public search to create a companion note in `research/` with 3–5 relevant public sources.
4. Ingest both files into `llmwiki`.
5. Compile the wiki after each note pair or small batch.
6. Query the compiled wiki for repeated bottlenecks, recurring trust boundaries, artifacts, and the narrowest credible wedge.
7. Save only the high-value synthesis outputs that are worth compounding.

# Bottlenecks
- A graph service introduces setup, scoping, and operational overhead that is disproportionate for a 1–2 day hackathon.
- Raw chat is noisy and privacy-risky; direct ingestion would degrade output quality.
- Supplementary research can easily become generic filler unless constrained to sharpening the actual wedge.

# Artifacts mentioned
- Private GitHub repo: `rhprasad0/scsp-hackathon-wiki`
- `llm-wiki-compiler`
- `curated/` notes
- `research/` public supplements
- compiled `wiki/`
- `exports/` for draft spec fragments
- local codex-bridge OpenAI-compatible endpoint for llmwiki provider access

# Trust boundaries / approvals
- Slack is the capture surface, not the long-term source of truth.
- Only curated, redacted notes should be promoted into the wiki pipeline.
- Public-safe outputs should be derived from compiled/supplemented notes, not raw conversation history.
- Sensitive operational details, names, and secrets should stay out of exported/public-facing artifacts.

# Quotes worth preserving
- "Raw sources in, interlinked wiki out" was a useful framing for why `llm-wiki-compiler` fit the problem.
- The guiding workflow principle became: Slack capture -> curated note -> Exa supplement -> ingest -> compile -> query -> export.

# Open questions
- How aggressive should saved query answers be versus keeping the wiki lean?
- What are the best recurring synthesis questions for the hackathon domain itself once field notes start accumulating?
- When does a note pair justify additional manual cleanup before ingest?

# Public-safe summary
- The working decision was to avoid a heavier knowledge-graph setup and instead use a private markdown-based knowledge compiler workflow. Slack is used for live capture, each promoted note gets a public research supplement from Exa-backed search, and the combined note pair is ingested into `llmwiki` for incremental synthesis into a reusable, queryable wiki.
