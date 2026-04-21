# Workflow

This repo is optimized for a **Slack-only** field-discovery workflow.

## Working model

```text
Slack thread
  -> Hermes promotion pass
  -> curated note
  -> Hermes Exa-backed public research
  -> public research supplement
  -> llmwiki ingest
  -> llmwiki compile
  -> wiki query / saved synthesis
  -> exports / draft spec
```

## Per-note operating procedure

### Step 1 — capture in Slack
Use Slack for:
- SME debrief bullets
- quote snippets
- observed workflows
- bottlenecks
- artifacts mentioned
- trust boundaries
- open questions

Do **not** rely on Slack itself as the durable knowledge store.

### Step 2 — promote to curated note
Ask Hermes to turn the thread or your bullets into a single structured, redacted note in `curated/`.

Requirements:
- short and structured
- one note per SME / topic cluster / conversation
- redact names and unnecessary specifics
- include a public-safe summary at the end

### Step 3 — add Exa-backed public supplement
For every curated note, Hermes should also run **public web research using the Exa-backed search tools** and create a companion note in `research/`.

The supplement should contain:
- 3–5 relevant public sources
- what each source adds
- facts or context that support / contrast with the field note
- open tensions or contradictions
- a short synthesis that is safe to ingest into the wiki

Good supplement targets:
- program docs
- defense acquisition or modernization guidance
- public policy / compliance docs
- procurement workflow references
- relevant product / process documentation
- previous public reporting on similar problems

The supplement is **not** for generic SEO fluff. It should tighten the wedge, not spray trivia everywhere like a broken leaf blower.

### Step 4 — ingest both notes
Ingest both files:
- curated note
- public research supplement

### Step 5 — compile after each note pair
Compile after each note pair or after a small batch.

For this hackathon, compiling after each promoted note pair is fine because the corpus should stay small.

### Step 6 — query for synthesis
After each few notes, ask:
- What repeated bottlenecks are emerging?
- Which trust boundaries keep appearing?
- What artifacts are central to the workflow?
- What narrow wedge is supported by the strongest evidence?
- What still needs validation?

Save only the answers that are worth compounding.
Use `npm run wiki:query:save -- "..."` for durable high-value synthesis.

## File conventions

### Curated note
Path pattern:
```text
curated/YYYY-MM-DD-topic-slug.md
```

### Public research supplement
Path pattern:
```text
research/YYYY-MM-DD-topic-slug-public-research.md
```

### Exported synthesis
Path pattern:
```text
exports/YYYY-MM-DD-spec-outline.md
exports/YYYY-MM-DD-pattern-summary.md
```

## Stop-and-write threshold

Stop collecting and pivot to writing when the compiled wiki shows:
- 3+ independent mentions of the same pain point
- a stable workflow shape
- at least one clear trust boundary / approval choke point
- a plausible narrow wedge
- diminishing returns from new conversations

## Recommended Hermes responsibilities

For every promoted note, Hermes should:
1. write/update the curated note
2. run Exa-backed public search
3. create/update the public research supplement
4. ingest both files
5. compile the wiki
6. report the new or reinforced patterns

## Provider configuration on this machine

This repo is configured to prefer the local **codex-bridge** route backed by Ryan's Codex subscription login.

One-time setup:

```bash
cd /home/ryan/scsp-hackathon-wiki
npm run setup:codex-bridge
```

That generates a local `.env` pointing `llmwiki` at:
- `OPENAI_BASE_URL=http://127.0.0.1:4000/v1`
- `OPENAI_API_KEY=<local codex-bridge key>`
- `LLMWIKI_PROVIDER=openai`
- `LLMWIKI_MODEL=gpt-5.4-mini`
- `LLMWIKI_FORCE_NON_STREAMING=1`

The helper scripts also fall back to the local bridge config if `.env` is missing. The repo additionally applies a postinstall compatibility patch so `llmwiki query` can disable streaming when this flag is set.

## Suggested cadence

- after every useful thread: promote a note
- after every promoted note: add Exa supplement
- after every note pair: ingest + compile
- every few note pairs: query + save synthesis
- before spec drafting: lint + export
