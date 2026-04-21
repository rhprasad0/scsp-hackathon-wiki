# SCSP Hackathon Wiki

Private research repo for the SCSP / GenAI.mil hackathon.

This repo is the working memory layer for the hackathon:
- **Slack** is the capture surface
- **curated markdown notes** are the promoted source material
- **llm-wiki-compiler** turns those notes into an interlinked wiki
- **saved query answers and exports** become draft spec inputs

## Repo layout

```text
curated/     human/Hermes-authored debrief notes ready to ingest
research/    Hermes-authored public-source supplements found via Exa-backed web search
sources/     llmwiki-managed source copies
wiki/        compiled wiki output
exports/     draft outlines, summaries, public-safe spec fragments
templates/   note templates
scripts/     helper scripts
prompts/     copy-paste Slack prompts for Hermes
docs/        workflow docs
```

## Setup

### 1) Install repo-local dependencies

```bash
cd /home/ryan/scsp-hackathon-wiki
npm install
```

### 2) Configure provider env

Preferred on this machine: reuse the local **codex-bridge** that is already backed by Ryan's Codex subscription login.

```bash
npm run setup:codex-bridge
```

That writes a local `.env` with:
- `LLMWIKI_PROVIDER=openai`
- `OPENAI_BASE_URL=http://127.0.0.1:4000/v1`
- `OPENAI_API_KEY=<local codex-bridge key>`
- `LLMWIKI_MODEL=gpt-5.4-mini`
- `LLMWIKI_FORCE_NON_STREAMING=1` (required because the local codex-bridge does not implement streaming chat completions yet)

Manual alternative:

```bash
cp .env.example .env
# fill in credentials locally; do not commit .env
```

`llmwiki` reads provider configuration from environment variables.

### 3) Create a fresh note pair

```bash
npm run note:new -- maintenance-planner-01
```

This creates:
- `curated/YYYY-MM-DD-maintenance-planner-01.md`
- `research/YYYY-MM-DD-maintenance-planner-01-public-research.md`

## Core workflow

1. Capture notes in Slack
2. Ask Hermes to promote them into a **curated** note
3. Ask Hermes to use **Exa-backed public search** to create a **research supplement**
4. Ingest both files
5. Compile the wiki
6. Query for patterns
7. Save only the useful synthesized answers

Detailed workflow:
- `docs/workflow.md`
- `prompts/slack-prompts.md`

## Common commands

```bash
npm run note:new -- some-slug
npm run wiki:ingest -- curated/2026-04-21-some-slug.md research/2026-04-21-some-slug-public-research.md
npm run wiki:compile
npm run wiki:lint
npm run wiki:serve
npm run wiki:query -- "What repeated bottlenecks are showing up?"
npm run wiki:query:save -- "What repeated bottlenecks are showing up?"
```

## Design rules

- Do **not** ingest raw chat dumps directly
- Do **not** put names, secrets, or sensitive operational details into public-facing exports
- Do ingest short, structured, redacted notes
- Do create a public research supplement for each promoted note when useful
- Do favor a narrow, evidence-backed spec over broad solutioning
