# Slack Prompts for Hermes

Copy/paste and tweak these in Slack.

## 1) Promote a thread into a curated note

```text
Turn the last thread into a structured curated hackathon note.
Write it to curated/YYYY-MM-DD-<slug>.md in the private hackathon repo.
Use the curated note template.
Redact names and sensitive details.
Keep only the parts that matter for workflow, bottlenecks, artifacts, trust boundaries, and open questions.
```

## 2) Decide whether outside research is actually needed

```text
For curated/YYYY-MM-DD-<slug>.md, tell me whether any targeted public research is worth adding.
Default to no.
Only recommend a supplement if there is a concrete evidence gap, contradiction, policy question, or documentation hole that public sources would materially clarify.
If no supplement is warranted, say so briefly and move on.
```

## 3) Add a targeted public supplement when clearly useful

```text
For curated/YYYY-MM-DD-<slug>.md, create or update research/YYYY-MM-DD-<slug>-public-research.md only if outside research is clearly worth it.
Use 1-3 relevant public sources.
Focus on public information that sharpens the problem framing, workflow understanding, trust boundaries, constraints, or wedge selection.
Avoid generic filler.
```

## 4) Default note workflow

```text
Use the last thread to create a curated note in curated/YYYY-MM-DD-<slug>.md.
Then ingest it into llmwiki, compile the wiki, and tell me what new patterns were added or reinforced.
If you see a specific evidence gap that outside public sources could close, mention that separately instead of auto-running research.
If the synthesis is high value, save it back into the wiki.
```

## 5) Batch synthesis

```text
Query the compiled wiki and tell me:
1. the top repeated bottlenecks
2. the recurring trust boundaries
3. the narrowest high-evidence problem wedge
4. what still needs validation
Save only the answers worth compounding into the wiki.
```

## 6) Prepare Round-2 follow-up questions from Round-1 STT

```text
raw stt:
[paste transcript]

Turn this into a curated hackathon note in curated/YYYY-MM-DD-<slug>.md.
Extract:
- workflow
- pain points
- artifacts
- trust boundaries
- open questions
- candidate wedge
Then give me the smallest high-value set of Round-2 follow-up questions.
```

## 7) Update after Round 2 and score spec readiness

```text
raw stt:
[paste follow-up transcript]

Update curated/YYYY-MM-DD-<slug>.md with the clarified findings.
Then ingest, compile, and tell me:
- what was confirmed
- what changed
- whether we are red / yellow / green for spec readiness
- the one-sentence wedge we should write
```

## 8) Draft a public-safe outline

```text
Using the compiled wiki only, draft a public-safe spec outline in exports/YYYY-MM-DD-spec-outline.md.
Do not include names, raw transcripts, or sensitive operational detail.
```
