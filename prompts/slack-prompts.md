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

## 2) Add Exa-backed public supplement

```text
For curated/YYYY-MM-DD-<slug>.md, use Exa-backed public web research to find 3-5 relevant public sources that add useful context.
Create or update research/YYYY-MM-DD-<slug>-public-research.md.
Focus on public information that sharpens the problem framing, workflow understanding, trust boundaries, constraints, or wedge selection.
Avoid generic filler.
```

## 3) Full note-pair workflow

```text
Use the last thread to create a curated note in curated/YYYY-MM-DD-<slug>.md.
Then use Exa-backed public web research to create a companion supplement in research/YYYY-MM-DD-<slug>-public-research.md.
Then ingest both files into llmwiki, compile the wiki, and tell me what new patterns were added or reinforced.
If the synthesis is high value, save it back into the wiki.
```

## 4) Batch synthesis

```text
Query the compiled wiki and tell me:
1. the top repeated bottlenecks
2. the recurring trust boundaries
3. the narrowest high-evidence problem wedge
4. what still needs validation
Save only the answers worth compounding into the wiki.
```

## 5) Draft a public-safe outline

```text
Using the compiled wiki only, draft a public-safe spec outline in exports/YYYY-MM-DD-spec-outline.md.
Do not include names, raw transcripts, or sensitive operational detail.
```
