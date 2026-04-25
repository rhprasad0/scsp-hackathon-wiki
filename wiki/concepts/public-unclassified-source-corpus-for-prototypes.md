---
title: Public, unclassified source corpus for prototypes
summary: Teams are directed to use public DoD and federal sources and APIs—such as APD, DTIC, JTR, GSA, SAM.gov, USAspending, Federal Register, and eCFR—rather than sensitive or classified data.
sources:
  - 2026-04-25-genai-mil-challenge-prompt-and-rubric.md
createdAt: "2026-04-25T17:07:35.337Z"
updatedAt: "2026-04-25T17:07:35.337Z"
tags:
  - public-data
  - compliance
  - doD
aliases:
  - public-unclassified-source-corpus-for-prototypes
  - PUSCFP
---

# Public, unclassified source corpus for prototypes

A public, unclassified source corpus for prototypes is a bounded set of approved, shareable, and sanitized source materials used to ground early prototype work. In the GenAI.mil context, this corpus is meant to support public-safe back-office applications, with examples including Army publications, Field Manuals, Joint Travel Regulations, GSA data, USAspending.gov, SAM.gov, DTIC Public STINET, the Federal Register, and eCFR bulk data. The source set is explicitly oriented toward unclassified work and avoids controlled or restricted content. ^[2026-04-25-genai-mil-challenge-prompt-and-rubric.md]

The corpus is used most effectively when a team starts small and specific: pick one user persona, build an end-to-end workflow, and set up retrieval over a limited document set before adding generation or planning features. This approach supports prototype wedges such as regulation navigation, form auto-filling, TDY planning, and contract intelligence, while keeping scope narrow enough for a hackathon timeline. ^[2026-04-25-genai-mil-challenge-prompt-and-rubric.md]

A public corpus should be paired with visible trust boundaries. The source material emphasizes that outputs should show their basis, preserve human review, flag uncertainty, and avoid inventing policy or operational facts. In practice, that means the corpus supports retrieval-grounded drafting and citation, but not autonomous approval or submission. Related concepts include [[Controlled Reference Retrieval]], [[AI-assisted spec with human review]], and [[Citations and missing-field visibility]]. ^[2026-04-24-hackathon-operating-context.md, 2026-04-24-genai-mil-concept-seed.md, 2026-04-25-genai-mil-user-workflows-and-trust-boundaries.md]

In the challenge framing, this corpus serves the “administrative trenches” problem space rather than tactical or kinetic work. The intended use is to compress routine administrative effort for rank-and-file users and supporting staff, not to support combat operations. The design pattern is therefore a [[Scoped Prototype Wedge]]: one real workflow, one clear output, and a believable demo built on public DoD text and other sanctioned public sources. ^[2026-04-25-genai-mil-challenge-prompt-and-rubric.md]

## Sources

- [2026-04-25-genai-mil-challenge-prompt-and-rubric.md]
- [2026-04-24-hackathon-operating-context.md]
- [2026-04-24-genai-mil-concept-seed.md]
- [2026-04-25-genai-mil-user-workflows-and-trust-boundaries.md]
