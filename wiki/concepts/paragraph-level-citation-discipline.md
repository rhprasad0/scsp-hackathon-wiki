---
title: Paragraph-level citation discipline
summary: A governance pattern requiring every answer, form field, or numeric claim to be tied to a source paragraph or authoritative record ID so reviewers can verify the basis for the output.
sources:
  - 2026-04-25-genai-mil-user-workflows-and-trust-boundaries.md
createdAt: "2026-04-25T16:15:07.211Z"
updatedAt: "2026-04-25T16:15:07.211Z"
tags:
  - traceability
  - governance
  - compliance
aliases:
  - paragraph-level-citation-discipline
  - PCD
---

# Paragraph-level citation discipline

Paragraph-level citation discipline is the practice of anchoring each claim to the specific paragraph, section, or source passage that supports it, rather than presenting a free-form answer without an explicit basis. In the source material, this is treated as a core trust practice for retrieval-grounded workflows: the system should quote and cite relevant paragraphs, refuse when the corpus does not support an answer, and avoid paraphrasing policy as though it were authority. ^[2026-04-25-genai-mil-user-workflows-and-trust-boundaries.md]

This discipline is especially important in contexts where a wrong citation can create real operational harm. The source material notes that an incorrect Army regulation citation can become a leadership and pay-record problem, so the cite is often more important than the summary itself. For that reason, answers should show their basis, flag uncertainty, and avoid claiming support for conclusions that are not grounded in the cited paragraph. ^[2026-04-25-genai-mil-user-workflows-and-trust-boundaries.md]

The broader operating pattern pairs citation discipline with human review. AI may retrieve approved references, identify missing fields, draft structured output, and flag uncertainty, but a human remains responsible for checking, editing, approving, or submitting the result. Trust depends on visible source basis, unresolved fields, and review status before anything is finalized. ^[2026-04-24-hackathon-operating-context.md, 2026-04-24-genai-mil-concept-seed.md]

In GenAI.mil-style back-office workflows, paragraph-level citation discipline helps keep systems public-safe, reviewable, and limited to unclassified administrative use. It fits particularly well with retrieval-augmented generation over public Army publications, form drafting, TDY planning, and other workflows where the assistant should help locate the rule but not replace the user’s judgment or official decision path. Related concepts include [[Controlled Reference Retrieval]], [[AI-assisted spec with human review]], [[Citations and missing-field visibility]], and [[Army regulation Q&A with paragraph-level citations]]. ^[2026-04-25-genai-mil-user-workflows-and-trust-boundaries.md, 2026-04-24-genai-mil-concept-seed.md]

## Sources

- [2026-04-25-genai-mil-user-workflows-and-trust-boundaries.md]
- [2026-04-24-hackathon-operating-context.md]
- [2026-04-24-genai-mil-concept-seed.md]
