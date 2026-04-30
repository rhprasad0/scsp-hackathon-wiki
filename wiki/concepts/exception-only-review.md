---
title: Exception-Only Review
summary: A review model where humans see only rare routed exceptions, which can hide false negatives and weaken vigilance for rare failures.
sources:
  - 2026-04-29-automation-bias-rationales-reviewers.md
createdAt: "2026-04-30T10:43:16.581Z"
updatedAt: "2026-04-30T10:43:16.581Z"
tags:
  - human-review
  - workflows
  - risk
aliases:
  - exception-only-review
---

# Exception-Only Review

Exception-only review is a workflow pattern in which a system processes most cases automatically and sends only selected exceptions to a human reviewer. In the source material, this pattern is treated as a control design that can be useful for allocating attention, but one that also creates distinct failure risks if the reviewer sees only routed cases, compressed summaries, or AI-generated rationales rather than the underlying evidence. ^[2026-04-29-automation-bias-rationales-reviewers.md, 2026-04-29-ao-radar-product-reset.md]

A central concern is that exception-only review does not automatically preserve human authority. If the system already sets the default outcome, writes the rationale, and decides which cases are escalated, the human reviewer may become a decorative checkbox rather than an active decision-maker. Meaningful review requires the ability to see evidence, disagree with the system, escalate ambiguity, and record independent reasoning. ^[2026-04-29-automation-bias-rationales-reviewers.md, 2026-04-29-ao-radar-product-reset.md]

The source material identifies three recurring risks. First, there is a rare-failure vigilance problem: when most cases are auto-processed, reviewers may be less prepared to detect the occasional consequential error. Second, there is a compressed-evidence problem: summaries can hide context needed to challenge the recommendation. Third, there is a default-preservation problem: non-routed cases may be treated as safe simply because they were not escalated. ^[2026-04-29-automation-bias-rationales-reviewers.md]

Exception-only review is closely related to [[exception queues]], [[human-in-the-loop]], [[decorative human review]], [[contestability and appeal paths]], and [[workflow automation]]. The source material treats it as part of a broader [[Exception-Queue Control Problem]], where the key question is not whether a person touched the case, but whether the process preserved meaningful oversight over consequential action. ^[2026-04-29-analog-domains-exception-queues.md, 2026-04-29-automation-bias-rationales-reviewers.md]

Research summarized in the source material suggests that overreliance becomes more likely when reviewers face high [[Verification Complexity]], divided attention, uncertain cases, or fluent explanations that make weak decisions seem more persuasive. Confidence cues and generated rationales can help in some designs, but they can also distort reliance if they are miscalibrated or used as substitutes for independent verification. ^[2026-04-29-automation-bias-rationales-reviewers.md]

In evaluation terms, exception-only review should be tested as a distinct reviewer mode rather than assumed to be equivalent to [[Meaningful Human Review]]. The source material recommends measuring whether reviewers catch seeded defects, override wrong recommendations, escalate ambiguity, and base decisions on underlying evidence rather than on AI-produced summaries or policy-shaped rationales. ^[2026-04-29-automation-bias-rationales-reviewers.md, 2026-04-29-ao-radar-product-reset.md]

## Related concepts

- [[exception queues]]
- [[human-in-the-loop]]
- [[decorative human review]]
- [[contestability and appeal paths]]
- [[workflow automation]]
- [[adjudication]]
- [[audit logs]]
- [[risk-based review]]

## Sources

- `2026-04-29-automation-bias-rationales-reviewers.md`
- `2026-04-29-ao-radar-product-reset.md`
