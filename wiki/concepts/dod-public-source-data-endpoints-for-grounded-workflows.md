---
title: DoD public-source data endpoints for grounded workflows
summary: The note highlights public APIs and document sources such as DTIC, Army Publishing Directorate, JTR, GSA APIs, SAM.gov, USAspending, Federal Register, and eCFR as the grounding corpus for compliant prototypes.
sources:
  - 2026-04-25-genai-mil-public-context-and-links.md
createdAt: "2026-04-25T16:28:52.191Z"
updatedAt: "2026-04-25T16:28:52.191Z"
tags:
  - data-sources
  - rag
  - public-api
aliases:
  - dod-public-source-data-endpoints-for-grounded-workflows
  - DPDEFGW
---

# DoD public-source data endpoints for grounded workflows

DoD public-source data endpoints for grounded workflows are the public, unclassified data sources and APIs that can be used to ground retrieval-based military admin and support tools. In the GenAI.mil context, these endpoints support back-office workflows such as regulation navigation, form filling, travel planning, and contract intelligence, with an emphasis on accurate retrieval, cited outputs, and public-safe use. They are also presented as a differentiator from simply pasting a manual into a general chat model, because the value comes from grounding, structure, and a believable workflow rather than from the model alone. ^[2026-04-25-genai-mil-public-context-and-links.md, 2026-04-25-genai-mil-challenge-prompt-and-rubric.md]

A useful distinction in the source material is between authoritative publication repositories and queryable public APIs. Publication repositories supply the underlying doctrine, regulations, and forms that a workflow can cite directly, while APIs expose live or regularly updated reference data such as per diem rates, contract records, federal notices, and regulatory text. In both cases, the recommended pattern is [[Controlled Reference Retrieval]] with human review, so the system can surface the relevant paragraph or record without inventing policy or acting as the authority. Related concepts include [[Controlled Reference Retrieval]], [[Army regulation Q&A with paragraph-level citations]], and [[AI-assisted spec with human review]]. ^[2026-04-25-genai-mil-public-context-and-links.md, 2026-04-25-genai-mil-user-workflows-and-trust-boundaries.md, 2026-04-24-genai-mil-concept-seed.md]

## Core public endpoints

### DoD and service publication repositories

- **Army Publishing Directorate** — authoritative source for Army Regulations, Army Doctrine Publications, Field Manuals, Training Circulars, and DA forms; bulk-downloadable PDFs. The source material highlights AR 600-8-10 and DA Form 31 as examples relevant to leave and passes workflows. ^[2026-04-25-genai-mil-public-context-and-links.md]
- **Air Force e-Publishing** — equivalent repository for Air Force Instructions, manuals, and forms. ^[2026-04-25-genai-mil-public-context-and-links.md]
- **Joint Travel Regulations** — published by the Defense Travel Management Office for travel policy, with monthly updates and linked PDFs. This is a key source for TDY planning and per diem logic. ^[2026-04-25-genai-mil-public-context-and-links.md]
- **DTIC Public STINET** — public search over unclassified DoD technical reports and TTPs, useful for grounding subject-matter content. ^[2026-04-25-genai-mil-public-context-and-links.md]

### Cross-government APIs useful to DoD workflows

- **GSA Open APIs / Per Diem API** — provides per diem rates by ZIP, city, and date, supporting travel and reimbursement workflows. ^[2026-04-25-genai-mil-public-context-and-links.md]
- **SAM.gov public API** — supports access to federal opportunities and entity registrations for acquisition-related workflows. ^[2026-04-25-genai-mil-public-context-and-links.md]
- **USAspending.gov API** — fully open contract and spending data, useful for contract intelligence and award research. ^[2026-04-25-genai-mil-public-context-and-links.md]
- **Federal Register API** — provides regulations, executive orders, and notices for policy-aware workflows. ^[2026-04-25-genai-mil-public-context-and-links.md]
- **eCFR developer endpoints** — daily updated regulatory text via REST API, with Title 32 covering National Defense and Title 48 covering the Federal Acquisition Regulations System, including FAR and DFARS. ^[2026-04-25-genai-mil-public-context-and-links.md]

## Grounded workflow patterns

The source material repeatedly favors narrow, end-to-end workflows that start with retrieval over a small, trusted corpus and only then add structured generation. Example patterns include a regulation navigator that quotes the relevant paragraph, a form auto-filler that completes a DA 31, a TDY planner that uses JTR plus per diem rates, and a contract intel tool that surfaces relevant past awards. The common requirement is that the assistant show its basis, flag uncertainty, and hard-refuse when the source set does not support the answer. ^[2026-04-25-genai-mil-challenge-prompt-and-rubric.md, 2026-04-25-genai-mil-user-workflows-and-trust-boundaries.md]

These workflows are intended to remain public-safe, unclassified, and reviewable. The system may help locate, cite, and draft, but it should not approve, submit, invent policy, or replace the user’s judgment. This makes the endpoints most useful when combined with [[Human-in-the-Loop Review and Approval]] and [[Citations and missing-field visibility]]. ^[2026-04-24-genai-mil-concept-seed.md, 2026-04-24-hackathon-operating-context.md, 2026-04-25-genai-mil-user-workflows-and-trust-boundaries.md]

## Practical mapping by use case

- **Regulation navigation**: Army Publishing Directorate, Air Force e-Publishing, Federal Register, eCFR. ^[2026-04-25-genai-mil-public-context-and-links.md]
- **Leave and passes / form workflows**: Army Publishing Directorate, especially AR 600-8-10 and DA Form 31. ^[2026-04-25-genai-mil-public-context-and-links.md]
- **TDY planning**: Joint Travel Regulations and GSA per diem data. ^[2026-04-25-genai-mil-public-context-and-links.md]
- **Contract intelligence**: USAspending.gov, SAM.gov, and possibly Federal Register or eCFR for policy context. ^[2026-04-25-genai-mil-public-context-and-links.md]
- **Technical grounding**: DTIC Public STINET for unclassified reports and TTPs. ^[2026-04-25-genai-mil-public-context-and-links.md]

## Design implications

The source material suggests that an effective grounded workflow should use one small corpus, one user persona, and one clear output, rather than broad prototype sprawl. This fits the broader “administrative trenches” framing: the endpoint layer should support mundane but high-value administrative work, while the mechanism can add novelty through citations, policy checks, provenance tracking, or other reviewable features. Related concepts include [[Administrative trenches as the GenAI.mil problem frame]] and [[Boring workflow, spicy mechanism]]. ^[2026-04-25-genai-mil-challenge-prompt-and-rubric.md, 2026-04-25-organizer-judging-signal.md]

## Sources

- [2026-04-25-genai-mil-public-context-and-links.md]
- [2026-04-25-genai-mil-challenge-prompt-and-rubric.md]
- [2026-04-25-genai-mil-user-workflows-and-trust-boundaries.md]
- [2026-04-24-genai-mil-concept-seed.md]
- [2026-04-24-hackathon-operating-context.md]
- [2026-04-25-organizer-judging-signal.md]
