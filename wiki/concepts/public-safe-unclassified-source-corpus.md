---
title: Public-safe unclassified source corpus
summary: Prototypes must rely only on public or otherwise shareable unclassified DoD and federal sources, avoiding classified, controlled, or sensitive data.
sources:
  - 2026-04-25-genai-mil-deep-research-synthesis.md
createdAt: "2026-04-25T16:14:54.747Z"
updatedAt: "2026-04-25T16:28:40.145Z"
tags:
  - data-sources
  - security
  - compliance
aliases:
  - public-safe-unclassified-source-corpus
  - PUSC
---

---
title: Public-safe unclassified source corpus
summary: A bounded set of approved public and unclassified references used to support drafting, retrieval, and review without crossing classification or restricted-data boundaries.
aliases:
  - public-safe-unclassified-source-corpus
  - PUSC
tags:
  - data-governance
  - security
  - compliance
---

# Public-safe unclassified source corpus

A public-safe unclassified source corpus is a bounded set of approved references and working materials used to draft or support outputs without crossing classification boundaries or exposing restricted information. In the GenAI.mil context, it is associated with public DoD publications, federal regulation corpora, and other shareable sources suitable for an unclassified or CUI-equivalent posture. ^[2026-04-25-genai-mil-deep-research-synthesis.md]

The corpus is intended to keep workflows public-safe, billboard-safe, and separately sanitized. Raw observations, screenshots, voice notes, and interview notes may be captured in private surfaces first, but only curated and redacted material should be promoted into the compiled working set. Downstream exports should preserve trust boundaries and avoid inventing operational facts. ^[2026-04-24-hackathon-operating-context.md, 2026-04-24-genai-mil-concept-seed.md]

In the GenAI.mil setting, the source corpus is deliberately narrow and operationally legible. It includes public DoD publications, forms, and federal references used for retrieval-augmented generation, structured drafting, and reviewable output, such as Army Publishing Directorate materials, eCFR Titles 32 and 48, the Federal Register API, Joint Travel Regulations, GSA per diem data, SAM.gov, USAspending.gov, and DTIC Public STINET. ^[2026-04-25-genai-mil-deep-research-synthesis.md]

A public-safe corpus is also expected to have visible provenance. The source material emphasizes paragraph-level citations, missing-field visibility, uncertainty flags, and review status so that human reviewers can judge whether a draft is ready for acceptance or needs correction. The assistant may retrieve approved references and structure content, but it must not approve, submit, sign, classify, or otherwise bypass human review. ^[2026-04-24-genai-mil-concept-seed.md, 2026-04-25-organizer-judging-signal.md]

The corpus may be packaged for offline or edge use when needed. In that case, the loaded set is treated as a bounded snapshot of approved public material, with explicit warnings if the corpus is outdated and an explicit “no answer in corpus” path when the evidence is insufficient. This supports [[Controlled Reference Retrieval]] and [[AI-assisted spec with human review]] workflows. ^[2026-04-25-genai-mil-deep-research-synthesis.md, 2026-04-24-genai-mil-concept-seed.md]

## Sources

- [2026-04-25-genai-mil-deep-research-synthesis.md]
- [2026-04-24-hackathon-operating-context.md]
- [2026-04-24-genai-mil-concept-seed.md]
- [2026-04-25-organizer-judging-signal.md]
