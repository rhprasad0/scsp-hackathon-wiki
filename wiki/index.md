# Knowledge Wiki

## Concepts

- **[[Codex-bridge provider setup]]** — A local OpenAI-compatible endpoint configuration used by llmwiki, backed by the user's Codex subscription credentials.
- **[[Curated note promotion]]** — The process of converting noisy Slack threads into short, structured, redacted notes suitable for ingestion into the knowledge workflow.
- **[[Decision Rule for Wiki Over Graph Memory]]** — A recommendation to prefer a compiled markdown wiki instead of a graph-memory service when the task is short-horizon, file-first, curated, and high-signal.
- **[[Exa Public Research Supplementation]]** — Using Exa web search and page fetch to add fresh public context to curated notes without introducing a heavier memory or graph system.
- **[[Exa-backed research supplements]]** — Companion notes created from public web search to add relevant external context to each promoted internal note.
- **[[Hash-Based Incremental Ingestion]]** — A change-detection mechanism that reprocesses notes only when their content changes, supporting frequent small updates efficiently.
- **[[Incremental wiki compilation]]** — Rebuilding the compiled wiki after each note pair or small batch so knowledge can compound continuously over time.
- **[[LLM Wiki Compiler]]** — A markdown-native implementation that compiles concepts from source notes into wiki pages using an incremental workflow suited to small, high-signal corpora.
- **[[LLM Wiki Pattern]]** — A file-first knowledge management approach that maintains a persistent, compounding wiki instead of repeatedly rediscovering information through retrieval at query time.
- **[[Private GitHub repo as working memory]]** — Using a private GitHub repository as the durable storage layer for curated notes, research supplements, and compiled wiki outputs.
- **[[Query-and-Save Compounding Workflow]]** — A workflow where query results can be saved back into the wiki so useful synthesis accumulates over time.
- **[[Slack-only capture workflow]]** — A lightweight knowledge capture process that records rough observations and artifacts in Slack before promoting them into more durable notes.
- **[[Three-Layer Wiki Architecture]]** — The architecture of immutable raw sources, LLM-maintained wiki pages, and a schema/instruction layer for organizing and compounding knowledge.
- **[[Trust boundaries in knowledge pipelines]]** — A practice of keeping Slack as the capture surface while ensuring only redacted, public-safe derivatives enter the wiki and exports.
- **[[Two-Phase Concept Extraction Pipeline]]** — A workflow that first extracts concepts and then generates pages, reducing order dependence and avoiding partial updates.

_15 pages | Generated 2026-04-21T20:29:05.333Z_
