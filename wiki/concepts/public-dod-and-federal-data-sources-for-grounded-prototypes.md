---
title: Public DoD and federal data sources for grounded prototypes
summary: Public, no-key or low-friction sources such as DTIC, Army Publishing Directorate, JTR, GSA APIs, USAspending, Federal Register, and eCFR are recommended as the grounding corpus for compliant demos.
sources:
  - 2026-04-25-genai-mil-public-context-and-links.md
createdAt: "2026-04-25T17:07:47.698Z"
updatedAt: "2026-04-25T17:07:47.698Z"
tags:
  - data-sources
  - grounding
  - federal
aliases:
  - public-dod-and-federal-data-sources-for-grounded-prototypes
  - federal data sources for grounded prototypes and Public DoD
  - PDAFDSFGP
---

# Public DoD and federal data sources for grounded prototypes

For grounded prototypes in the GenAI.mil problem space, the source material points to a set of public DoD and federal data sources that are useful for retrieval, structured drafting, and compliance-aware demos. These sources support back-office workflows such as regulation navigation, form generation, travel planning, and contract intelligence without relying on classified data or unsupported model output. ^[2026-04-25-genai-mil-public-context-and-links.md, 2026-04-25-genai-mil-challenge-prompt-and-rubric.md]

A core DoD source is the Army Publishing Directorate, which publishes Army Regulations, Army Doctrine Publications, Field Manuals, Training Circulars, and DA forms. The source material specifically calls out AR 600-8-10, DA Form 31, and bulk-downloadable PDFs as useful grounding material for administrative workflows. ^[2026-04-25-genai-mil-public-context-and-links.md]

For joint travel use cases, the Joint Travel Regulations are available through the Defense Travel Management Office and are updated monthly with a change log. The source material also notes that recent JTR versions are linked as PDFs and can support TDY planning and compliance-oriented assistants. ^[2026-04-25-genai-mil-public-context-and-links.md]

For contract and procurement prototypes, the source material identifies USAspending.gov as a fully open API for federal contracts and spending, and the Federal Register API and eCFR developer endpoints as public regulation sources. It also highlights eCFR Title 48 for Federal Acquisition Regulations System content, including FAR and DFARS, which makes it especially relevant for procurement and contract-intelligence workflows. ^[2026-04-25-genai-mil-public-context-and-links.md]

For broader defense technical grounding, DTIC Public STINET provides public-facing search over unclassified DoD technical reports and TTPs. The source material frames it as useful for subject-matter grounding, though less useful for live administrative workflows. ^[2026-04-25-genai-mil-public-context-and-links.md]

The source material also names GSA Open APIs, including the per diem rate API, as a useful dependency for travel and reimbursement demos. For some public federal services, SAM.gov APIs can be used as well, though the note cautions that current docs for key endpoints may require a public API key, making USAspending.gov and eCFR lower-friction choices for weekend prototypes. ^[2026-04-25-genai-mil-public-context-and-links.md]

In practice, the most useful pattern is to start with a small public corpus, ground retrieval in authoritative documents, and then layer structured outputs, citations, compliance checks, or evaluation harnesses. This keeps prototypes operationally legible while preserving visible trust boundaries and human review. Related concepts include [[Controlled Reference Retrieval]], [[Army regulation Q&A with paragraph-level citations]], [[Back-office military workflow examples]], and [[AI-assisted spec with human review]]. ^[2026-04-25-genai-mil-public-context-and-links.md, 2026-04-25-genai-mil-user-workflows-and-trust-boundaries.md, 2026-04-24-hackathon-operating-context.md]

## Common public data sources

- Army Publishing Directorate
- Joint Travel Regulations
- GSA Open APIs
- USAspending.gov API
- Federal Register API
- eCFR developer endpoints
- DTIC Public STINET
- SAM.gov public APIs

## Practical prototype pairings

- Regulation navigator over Army Regulations and Field Manuals
- Form auto-filler using Army forms such as DA Form 31
- TDY planner using JTR plus GSA per diem data
- Contract intelligence tool using USAspending.gov, Federal Register, and eCFR Title 48
- Technical grounding assistant using DTIC Public STINET

## Sources

- [2026-04-25-genai-mil-public-context-and-links.md]
- [2026-04-25-genai-mil-challenge-prompt-and-rubric.md]
- [2026-04-25-genai-mil-user-workflows-and-trust-boundaries.md]
- [2026-04-24-hackathon-operating-context.md]
