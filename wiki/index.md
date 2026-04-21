# Knowledge Wiki

## Concepts

- **[[Codex-bridge provider setup]]** — A local OpenAI-compatible endpoint configuration used by llmwiki, backed by the user's Codex subscription credentials.
- **[[Compounding Query-to-Wiki Loop]]** — A workflow where useful query results can be saved back into the wiki, allowing synthesized knowledge to accumulate over time.
- **[[Curated Human-LMM Workflow]]** — A division of labor where humans curate sources and ask questions while the LLM handles summarization, cross-linking, filing, and bookkeeping.
- **[[Curated Note Promotion]]** — The process of converting a Slack thread into a short, structured, redacted note in a curated folder so only high-value, safe content enters the wiki pipeline.
- **[[Decision Rule for Wiki Over Graph Memory]]** — A recommendation to prefer a compiled markdown wiki instead of a graph-memory service when the task is short-horizon, file-first, curated, and high-signal.
- **[[Exa Backed Public Research Supplement]]** — A workflow that adds targeted web search and page fetch results to curated notes to enrich them with fresh public context and evidence.
- **[[Exa Public Research Supplementation]]** — Using Exa web search and page fetch to add fresh public context to curated notes without introducing a heavier memory or graph system.
- **[[Exa-Backed Public Supplementary Research]]** — Using Exa web search and page fetch to attach fresh public context to curated notes, enriching them with references, docs, and reporting without adding a graph-memory layer.
- **[[Exa-backed Research Supplement]]** — A companion note generated via Exa-backed web search that adds 3–5 public sources to each promoted note to provide external context and sharpen the synthesis wedge.
- **[[Exa-Backed Research Supplements]]** — Each curated note is paired with a companion research note built from Exa-powered public search to add relevant outside context and sharpen the synthesis.
- **[[Hackathon-Sized Tooling Tradeoff]]** — For a 1–2 day hackathon, a dedicated knowledge graph service was rejected as too costly in setup and operations compared with a simpler markdown/wiki approach.
- **[[Hash-Based Incremental Ingestion]]** — A change-detection mechanism that reprocesses notes only when their content changes, supporting frequent small updates efficiently.
- **[[Incremental Hash-Based Wiki Compilation]]** — A change-detection approach using hashes to update only modified content, enabling frequent small note updates efficiently.
- **[[Incremental Wiki Compilation]]** — A hash-based change detection approach that updates only changed notes, making frequent small edits efficient during iterative work.
- **[[LLM Knowledge Curation Roles]]** — A division of labor where humans curate sources and ask questions, while the LLM handles summarization, cross-linking, filing, and bookkeeping.
- **[[LLM Wiki Pattern]]** — A file-first knowledge management approach where a persistent, compounding wiki is maintained by LLMs instead of relying on repeated query-time retrieval.
- **[[llm-wiki-compiler]]** — A markdown-based knowledge compiler that converts curated notes into an interlinked wiki and supports incremental recompilation after new inputs are added.
- **[[Private GitHub Repo as Durable Working Memory]]** — A private GitHub repository serves as the long-lived storage layer for curated notes, research supplements, and the compiled wiki during the hackathon.
- **[[Private GitHub Repo as Working Memory]]** — A private GitHub repository serves as the durable storage layer for curated notes, research supplements, compiled wiki output, and exports during the hackathon.
- **[[Query-and-Save Compounding Workflow]]** — A workflow where query results can be saved back into the wiki so useful synthesis accumulates over time.
- **[[Raw Chat Ingestion Avoidance]]** — A deliberate decision not to ingest raw chat dumps directly because they are noisy, privacy-risky, and likely to degrade output quality.
- **[[Redacted Curated Notes]]** — Promoted Slack threads are transformed into short, structured, privacy-safe notes in a curated directory before entering the wiki pipeline.
- **[[Slack-only Capture Workflow]]** — A lightweight workflow that uses Slack as the live capture surface for observations, quotes, bottlenecks, artifacts, and trust boundaries before anything is promoted into the knowledge pipeline.
- **[[Slack-only Knowledge Capture Workflow]]** — A workflow that uses Slack as the live capture surface for rough observations, quotes, bottlenecks, artifacts, and trust boundaries before promotion into more durable notes.
- **[[Small High-Signal Corpus Strategy]]** — An approach that favors a small, curated, high-signal corpus over sprawling retrieval-heavy systems, especially for short hackathon-style workflows.
- **[[Three-Layer Knowledge Architecture]]** — An architecture composed of immutable raw sources, LLM-maintained wiki pages, and a schema/instruction layer that separates source truth from synthesized knowledge.
- **[[Three-Layer Wiki Architecture]]** — An architecture consisting of immutable raw sources, LLM-maintained wiki pages, and a schema/instruction layer to organize and update knowledge.
- **[[Trust Boundaries in Knowledge Pipelines]]** — Sensitive details should remain inside the capture and curation process, while only curated, redacted, public-safe outputs are allowed into compiled or exportable artifacts.
- **[[Trust Boundary Management for Knowledge Artifacts]]** — A set of boundaries ensuring Slack remains only a capture surface, sensitive details stay out of exports, and only curated redacted notes and public-safe outputs are propagated.
- **[[Two-Phase Concept Extraction Pipeline]]** — A wiki compilation method that first extracts concepts and then generates pages, reducing order dependence and avoiding partial updates.

## Saved Queries

- **[[Summarize the current hackathon knowledge workflow in one compact paragraph.]]** — The current hackathon knowledge workflow is a file-first, markdown-native pipeline where Slack is used only for live cap
- **[[What resilience checks are now built into the hackathon wiki query path?]]** — The wiki says the hackathon wiki query path is now guarded by a few resilience-oriented checks, but it does **not** give

_32 pages | Generated 2026-04-21T21:21:03.450Z_
