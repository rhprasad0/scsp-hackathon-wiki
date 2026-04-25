---
title: Public DoD and federal data sources for prototypes
summary: The organizer points teams to public, unclassified sources like DTIC, APD, JTR, GSA APIs, SAM.gov, USAspending, Federal Register, and eCFR for building grounded prototypes.
sources:
  - 2026-04-25-genai-mil-challenge-prompt-and-rubric.md
createdAt: "2026-04-25T16:28:30.624Z"
updatedAt: "2026-04-25T16:28:30.624Z"
tags:
  - public-data
  - doD
  - apis
aliases:
  - public-dod-and-federal-data-sources-for-prototypes
  - federal data sources for prototypes and Public DoD
  - PDAFDSFP
---

# Public DoD and federal data sources for prototypes

Public DoD and federal data sources are the recommended starting point for prototypes that need authoritative reference material without using classified or restricted content. In the GenAI.mil challenge materials, teams are encouraged to set up a small retrieval pipeline over Army publications or Field Manuals first, then expand into form generation or logistics planning. The organizer also points teams toward specific public datasets and APIs that support regulation navigation, travel planning, procurement research, and related back-office workflows. ^[2026-04-25-genai-mil-challenge-prompt-and-rubric.md]

A practical prototype data stack can begin with the Army Publishing Directorate for Army Regulations, Army Doctrine Publications, Field Manuals, and DA forms; Joint Travel Regulations for travel and per diem rules; and DTIC Public STINET for full-text searchable DoD technical reports and tactics, techniques, and procedures. For procurement and spending workflows, the source material points to GSA Open APIs, SAM.gov Public API, and USAspending.gov API. For policy and rule change monitoring, it also lists the Federal Register API and eCFR bulk data. ^[2026-04-25-genai-mil-challenge-prompt-and-rubric.md]

The challenge prompt’s example projects show how these sources map to concrete prototype wedges: a regulation navigator can ingest Army Regulations and Field Manuals; a form auto-filler can populate a DA 31; a TDY planner can combine Joint Travel Regulations with GSA rates; and a contract intelligence tool can use USAspending or SAM.gov to surface relevant awards. These examples are designed to be narrow, public-safe, and operationally legible. Related concepts include [[Back-office military workflow use cases]], [[Army regulation Q&A with paragraph-level citations]], and [[Controlled Reference Retrieval]]. ^[2026-04-25-genai-mil-challenge-prompt-and-rubric.md]

The source material also emphasizes working from approved public text first, with accurate retrieval before additional generation. That pattern supports prototypes that quote, cite, and structure content from a controlled corpus rather than improvising answers. In this setting, public DoD and federal sources are not just data inputs; they are the trust basis for reviewable outputs and for human-in-the-loop workflows. Related concepts include [[AI-assisted spec with human review]] and [[Citations and missing-field visibility]]. ^[2026-04-25-genai-mil-challenge-prompt-and-rubric.md]

## Common public sources named in the challenge materials

- Army Publishing Directorate (APD) — all ARs, ADPs, FMs, and DA forms, bulk-downloadable PDFs.
- DTIC Public STINET — full-text searchable DoD technical reports and TTPs.
- Air Force e-Publishing — AFIs, AFMANs, and AF forms.
- Joint Travel Regulations (JTR) — canonical DoD travel and per diem rulebook.
- GSA Open APIs — federal procurement catalog and per diem rates.
- SAM.gov Public API — contract opportunities and entity registrations, with no auth required for public data.
- USAspending.gov API — all federal contracts and spending, fully open.
- Federal Register API — regulations, executive orders, and notices.
- eCFR Bulk Data — CFR Title 32 and Title 48 as XML/JSON. ^[2026-04-25-genai-mil-challenge-prompt-and-rubric.md]

These sources are especially useful when a prototype needs authoritative citations, structured fields, or a bounded corpus for retrieval-augmented generation. They fit the challenge’s preference for public, unclassified, back-office use cases and help teams avoid drifting into tactical or restricted territory. Related concepts include [[Boring workflow, spicy mechanism]] and [[Administrative trenches as the GenAI.mil problem frame]]. ^[2026-04-25-genai-mil-challenge-prompt-and-rubric.md]

## Sources

- [2026-04-25-genai-mil-challenge-prompt-and-rubric.md]
