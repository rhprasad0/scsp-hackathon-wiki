---
title: Public-source dependency hygiene
summary: A reminder that some public government APIs still require keys and that safer demo dependencies include USAspending, eCFR, Federal Register, and GSA per diem data rather than assuming no-auth access to SAM.gov.
sources:
  - 2026-04-25-codex-attack-on-genai-mil-research.md
createdAt: "2026-04-25T17:07:23.530Z"
updatedAt: "2026-04-25T17:07:23.530Z"
tags:
  - data-sources
  - api
  - compliance
aliases:
  - public-source-dependency-hygiene
  - PDH
---

# Public-source dependency hygiene

Public-source dependency hygiene is the practice of choosing public, unclassified dependencies that are realistic for a demo, while checking that their access model, freshness, and fit with the workflow are actually what the prototype needs. In this context, it means preferring evidence-backed, reviewable sources and avoiding assumptions that a service is frictionless just because it is public. ^[2026-04-25-codex-attack-on-genai-mil-research.md]

A key lesson is that “public” does not always mean “dependency-free.” The source material notes that the GSA SAM.gov Get Opportunities and Entity Management APIs require public API keys, so they should not be described as no-auth dependencies. By contrast, USAspending, eCFR, Federal Register, and GSA per diem are described as safer no-key demo dependencies. ^[2026-04-25-codex-attack-on-genai-mil-research.md]

Dependency hygiene also means matching the source to the actual wedge. For example, the research warns against over-weighting literal offline operation unless the organizers confirm that as a central requirement, and it recommends treating offline or DDIL behavior as a hypothesis to validate rather than a default assumption. It also cautions against overclaiming direct integration with official systems when the prototype’s real promise is a review-ready draft, cited rationale, missing-field detection, or refusal behavior. ^[2026-04-25-codex-attack-on-genai-mil-research.md]

Another part of hygiene is keeping claims conservative and source-bound. The material recommends rejecting unsupported statements such as current DoD-wide adoption numbers, universal user counts, or claims that a platform lacks capabilities unless the source explicitly proves absence. In practice, that means using public sources to ground the demo while avoiding slide language that turns partial evidence into broad operational claims. ^[2026-04-25-codex-attack-on-genai-mil-research.md]

The recommended pattern is to pair a narrow workflow with a small, credible dependency set: a local packaged corpus, paragraph-level citation, structured form mapping, missing-field validation, and a tiny held-out evaluation set. This keeps the system reviewable and reduces the risk of depending on live services that are harder to validate, harder to explain, or less stable than the demo needs. Related concepts include [[Controlled Reference Retrieval]], [[Citations and missing-field visibility]], [[AI-assisted spec with human review]], and [[Back-office military workflow use cases]]. ^[2026-04-25-codex-attack-on-genai-mil-research.md]

## Sources

- [2026-04-25-codex-attack-on-genai-mil-research.md]
