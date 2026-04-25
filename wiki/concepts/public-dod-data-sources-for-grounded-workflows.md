---
title: Public DoD data sources for grounded workflows
summary: A set of authoritative public endpoints—such as DTIC, Army Publishing Directorate, Air Force e-Publishing, JTR, GSA APIs, SAM.gov, USAspending, Federal Register, and eCFR—can ground admin and policy workflows with live public data.
sources:
  - 2026-04-25-genai-mil-public-context-and-links.md
createdAt: "2026-04-25T16:15:02.988Z"
updatedAt: "2026-04-25T16:15:02.988Z"
tags:
  - data-sources
  - public-api
  - government
aliases:
  - public-dod-data-sources-for-grounded-workflows
  - PDDSFGW
---

# Public DoD data sources for grounded workflows

Public DoD data sources are the approved, publicly accessible references that can ground narrow military-adjacent workflows in authoritative text and open data. In the GenAI.mil context, they are useful when a project needs retrieval grounding, structured drafting, citations, and visible review boundaries rather than a generic assistant or an ungrounded chat interface. ^[2026-04-25-genai-mil-public-context-and-links.md]

These sources fit especially well with [[Controlled Reference Retrieval]] and [[AI-assisted spec with human review]] because they let a system draft from approved references without inventing policy or operational facts. The source material emphasizes that outputs should remain public-safe, sanitized, and reviewable, with sources, assumptions, uncertainty, and missing fields made visible before approval or submission. ^[2026-04-25-genai-mil-public-context-and-links.md]

## Common public DoD data sources

### Doctrine, regulations, and forms

The Army Publishing Directorate is the authoritative public source for Army Regulations, Army Doctrine Publications, Field Manuals, Training Circulars, and DA forms. The source material specifically calls out AR 600-8-10 and DA Form 31 as examples available there. Air Force e-Publishing serves the same role for AFI, AFMAN, and Air Force forms. ^[2026-04-25-genai-mil-public-context-and-links.md]

The Joint Travel Regulations are published by the Defense Travel Management Office on behalf of PDTATAC and updated monthly with a change log. The source material notes that recent versions are linked as PDFs and are useful for grounded travel-planning workflows. ^[2026-04-25-genai-mil-public-context-and-links.md]

### Public technical and acquisition data

DTIC Public STINET provides public search access to unclassified DoD technical reports and TTPs. The source material describes it as useful for grounding subject-matter content, though less useful for live administrative workflows. ^[2026-04-25-genai-mil-public-context-and-links.md]

USAspending.gov offers a fully open API for federal contracts and spending, making it a good foundation for contract-intelligence workflows. SAM.gov also exposes public data through an API for federal opportunities and entity registrations. ^[2026-04-25-genai-mil-public-context-and-links.md]

### Rules and notices

The Federal Register API provides access to regulations, executive orders, and notices, while eCFR developer endpoints provide a daily updated REST API with bulk XML support. The source material notes that Title 32 covers National Defense and Title 48 covers the Federal Acquisition Regulations System, including FAR and DFARS content relevant to DoD workflows. ^[2026-04-25-genai-mil-public-context-and-links.md]

### Travel and per diem lookup

GSA Open APIs include a per diem rate API that returns rates by ZIP, city, and date. This is directly relevant to grounded travel and TDY planning workflows that need current rate lookups rather than hard-coded assumptions. ^[2026-04-25-genai-mil-public-context-and-links.md]

## How these sources are used in grounded workflows

The source material recommends starting with a small retrieval-augmented generation pipeline over a limited corpus, then layering structured generation or planning on top. In practice, that means grounding a regulation navigator, form auto-filler, TDY planner, or contract-intel tool in a public document set before expanding the workflow. ^[2026-04-25-genai-mil-public-context-and-links.md, 2026-04-25-genai-mil-challenge-prompt-and-rubric.md]

This approach supports reviewable drafting: the system can retrieve approved references, identify missing fields, and produce a narrow artifact with citations and uncertainty markers. That makes it easier for a human reviewer to check whether the draft is faithful to the underlying public source material. ^[2026-04-25-genai-mil-public-context-and-links.md, 2026-04-24-genai-mil-concept-seed.md]

Public DoD sources are also a good fit for offline or edge-oriented implementations, because the source material frames the GenAI.mil prompt as favoring a system that works without persistent cloud connectivity. A grounded workflow can therefore keep a local corpus of public DoD text and still remain operationally legible and reviewable. ^[2026-04-25-genai-mil-public-context-and-links.md]

## Design cautions

The source material draws a clear line between grounded, administrative workflows and tactical or kinetic AI. Public DoD data sources should support back-office and support tasks, not autonomous operational action, and outputs should remain draft-only until a human reviewer approves them. ^[2026-04-25-genai-mil-public-context-and-links.md, 2026-04-25-genai-mil-challenge-prompt-and-rubric.md]

A second caution is trust visibility. If a workflow uses public sources, it should still show where each claim came from, what remains unresolved, and where the system is making an assumption. This is part of keeping the workflow public-safe and preventing hidden basis or invented policy from slipping into the output. ^[2026-04-24-genai-mil-concept-seed.md, 2026-04-25-organizer-judging-signal.md]

Related concepts include [[Administrative trenches as the GenAI.mil problem frame]], [[Back-office military workflow use cases]], [[Boring workflow, spicy mechanism]], [[Citations and missing-field visibility]], and [[Human-in-the-Loop Review and Approval]]. ^[2026-04-25-genai-mil-public-context-and-links.md, 2026-04-25-genai-mil-challenge-prompt-and-rubric.md]

## Sources

- [2026-04-25-genai-mil-public-context-and-links.md]
- [2026-04-25-genai-mil-challenge-prompt-and-rubric.md]
- [2026-04-24-genai-mil-concept-seed.md]
- [2026-04-25-organizer-judging-signal.md]
