# Workflow

This repo is optimized for a **Slack-only** field-discovery workflow.

## Working model

```text
Slack thread
  -> Hermes promotion pass
  -> curated note
  -> llmwiki ingest
  -> llmwiki compile
  -> wiki query / saved synthesis
  -> exports / draft spec

Optional branch when clearly useful:
  curated note
    -> targeted manual public research
    -> public research supplement
    -> llmwiki ingest
    -> llmwiki compile
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

### Step 3 — default to no public supplement
For most notes, stop after the curated note and move straight to ingest/compile.

The goal is to keep the corpus high-signal and avoid spraying low-value web context into the wiki like a confetti cannon loaded with blandness.

### Step 4 — add manual public research only when it earns its keep
Create a companion note in `research/` only when there is a **specific** evidence gap that outside sources can close.

Good reasons to add a supplement:
- the note references a policy, acquisition rule, or compliance constraint that should be grounded in a public document
- a workflow artifact or system needs external documentation to make the finding legible
- there is an open contradiction that public reporting or docs might clarify
- you need a few public citations for a downstream public-safe spec
- Ryan explicitly asks for outside research

Bad reasons to add a supplement:
- habit
- vague curiosity
- generic background reading
- "more context might help"

If a supplement is warranted, keep it tight:
- 1–3 relevant public sources, not a mini literature review
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

### Step 5 — ingest the source material
Ingest:
- the curated note alone by default
- the curated note plus the optional supplement when one exists

### Step 6 — compile after each note or small batch
Compile after each promoted note or small batch.

For this hackathon, compiling after each useful note is fine because the corpus should stay small.

### Step 7 — query for synthesis
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

### Optional public research supplement
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
2. ingest the curated note
3. compile the wiki
4. report the new or reinforced patterns
5. recommend a manual public supplement only when there is a concrete evidence gap worth filling

## Provider configuration on this machine

This repo is configured to prefer the local **codex-bridge** route backed by Ryan's Codex subscription login.

One-time setup:

```bash
cd /home/ryan/scsp-hackathon-wiki
npm run setup:codex-bridge
```

That generates a local `.env` pointing `llmwiki` at:
- `OPENAI_BASE_URL=http://127.0.0.1:4000/v1`
- `OPENAI_API_KEY=*** codex-bridge key>`
- `LLMWIKI_PROVIDER=openai`
- `LLMWIKI_MODEL=gpt-5.4-mini`
- `LLMWIKI_FORCE_NON_STREAMING=1`

The helper scripts also fall back to the local bridge config if `.env` is missing. The repo additionally applies a postinstall compatibility patch so `llmwiki query` can disable streaming when this flag is set.

## Suggested cadence

- after every useful thread: promote a note
- after every promoted note: ingest + compile
- every few notes: query + save synthesis
- only when clearly justified: add a targeted public supplement
- before spec drafting: lint + export
