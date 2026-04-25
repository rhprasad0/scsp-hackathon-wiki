---
title: Public DoD data sources for GenAI.mil prototypes
summary: The prompt points teams toward public, unclassified datasets and APIs such as APD, DTIC, JTR, GSA APIs, SAM.gov, USAspending, Federal Register, and eCFR for building compliant prototypes.
sources:
  - 2026-04-25-genai-mil-challenge-prompt-and-rubric.md
createdAt: "2026-04-25T16:14:39.511Z"
updatedAt: "2026-04-25T16:14:39.511Z"
tags:
  - public-data
  - doD
  - apis
aliases:
  - public-dod-data-sources-for-genaimil-prototypes
  - PDDSFGP
---

# Public DoD data sources for GenAI.mil prototypes

Public GenAI.mil prototypes are expected to use unclassified, shareable data and avoid controlled or restricted content. The challenge prompt specifically recommends starting with a small retrieval pipeline over Army publications or Field Manuals, and it points teams toward public DoD and federal sources such as DTIC Public STINET, the Army Publishing Directorate, Air Force e-Publishing, the Joint Travel Regulations, SAM.gov, USAspending.gov, the Federal Register, and eCFR bulk data. ^[2026-04-25-genai-mil-challenge-prompt-and-rubric.md]

A practical pattern for these prototypes is [[Controlled Reference Retrieval]] over approved public documents: ingest official text, retrieve the most relevant references, and use them to support narrow workflows such as regulation navigation, form filling, TDY planning, or contract intelligence. This aligns with the challenge’s emphasis on one user persona, end-to-end scope, and a small corpus before adding generation or planning features. ^[2026-04-25-genai-mil-challenge-prompt-and-rubric.md]

## Public DoD and related data sources

- **DTIC Public STINET** — full-text searchable DoD technical reports and TTPs.
- **Army Publishing Directorate (APD)** — Army Regulations, ADPs, FMs, and DA forms in bulk-downloadable PDFs.
- **Air Force e-Publishing** — Air Force instructions, manuals, and forms.
- **Joint Travel Regulations (JTR)** — the canonical DoD travel and per diem rulebook.
- **GSA Open APIs** — federal procurement catalog and per diem rates.
- **SAM.gov public APIs** — public contract opportunities and entity registrations; key endpoints generally require a public API key.
- **USAspending.gov API** — open federal contracts and spending data.
- **Federal Register API** — regulations, executive orders, and notices.
- **eCFR Bulk Data** — CFR Title 32 and Title 48 in XML/JSON.

These sources support prototypes that need official policy text, procurement context, travel rules, or historical awards and spending data. They are especially relevant for back-office use cases like a regulation navigator, a form auto-filler, a TDY planner, or a contract intel tool. ^[2026-04-25-genai-mil-challenge-prompt-and-rubric.md]

## How these sources fit GenAI.mil prototypes

The source material suggests that the strongest prototypes stay narrow and operationally legible: one persona, one workflow, one clear output. In that framing, public DoD data sources are not an end in themselves; they are the evidence base for a reviewable draft, a cited answer, or a structured artifact that a human can inspect and approve. ^[2026-04-25-genai-mil-challenge-prompt-and-rubric.md, 2026-04-24-genai-mil-concept-seed.md]

This also matches the trust model used across the related material: AI may retrieve approved references, identify missing fields, draft structured content, and flag uncertainty, but it should not invent policy or bypass human review. For GenAI.mil prototypes, public sources are therefore best used as a controlled reference set for [[AI-assisted spec with human review]] and [[Citations and missing-field visibility]]. ^[2026-04-24-genai-mil-concept-seed.md, 2026-04-25-organizer-judging-signal.md]

## Sources

- [2026-04-25-genai-mil-challenge-prompt-and-rubric.md]
- [2026-04-24-genai-mil-concept-seed.md]
- [2026-04-25-organizer-judging-signal.md]
