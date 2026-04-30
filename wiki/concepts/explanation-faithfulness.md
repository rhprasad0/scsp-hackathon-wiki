---
title: Explanation Faithfulness
summary: A plausible explanation or rationale may still be unfaithful to the actual evidence or computation, so explanation quality must be tested against the source record.
sources:
  - 2026-04-29-meaningful-human-review-audit-trails.md
createdAt: "2026-04-30T10:43:24.068Z"
updatedAt: "2026-04-30T10:43:24.068Z"
tags:
  - explanations
  - accountability
  - evaluation
aliases:
  - explanation-faithfulness
---

# Explanation Faithfulness

Explanation faithfulness is the degree to which an explanation or rationale accurately reflects the evidence and reasoning that actually influenced a system’s output. The source material warns that explanations can be plausible but unfaithful: they may sound convincing while misrepresenting which evidence mattered, how a decision was reached, or whether the cited policy truly governed the case. ^[2026-04-29-meaningful-human-review-audit-trails.md]

This matters because a fluent explanation can create false confidence. In automated decision settings, a polished narrative may function like an accountability costume, especially when paired with a clean audit trail that records outputs and review steps but does not verify that the rationale is true. The source material treats this as a reason to distinguish explanation style from explanation faithfulness. Related concepts include [[audit trail limits]], [[policy laundering]], and [[decorative human review]]. ^[2026-04-29-meaningful-human-review-audit-trails.md]

The source material also connects explanation faithfulness to human review quality. If reviewers only see a generated rationale, they may be unable to detect missing evidence, contradictory facts, hidden uncertainty, or unsupported claims. Meaningful review therefore requires access to the underlying packet, original facts, policy basis, and uncertainty disclosures, not just a post-hoc explanation. Related concepts include [[meaningful human review]], [[human-in-the-loop]], and [[closed-loop adjudication pipeline]]. ^[2026-04-29-meaningful-human-review-audit-trails.md]

In practice, explanation faithfulness should be checked against the evidence path rather than assumed from fluency or completeness. The source material recommends comparing rationale claims with packet evidence, policy references, and reviewer affordances, and treating unsupported but polished rationales as a failure mode rather than proof of accountability. This is especially important in workflows where explanations, logs, and review markers can otherwise make a process appear more reviewable or more certain than it really is. ^[2026-04-29-meaningful-human-review-audit-trails.md]

## Related concepts

- [[audit trail limits]]
- [[meaningful human review]]
- [[decorative human review]]
- [[policy laundering]]
- [[closed-loop adjudication pipeline]]
- [[human-in-the-loop]]

## Sources

- `2026-04-29-meaningful-human-review-audit-trails.md`
