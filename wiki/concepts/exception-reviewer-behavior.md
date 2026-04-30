---
title: Exception-reviewer behavior
summary: Reviewers who only see rare routed cases may be less able to detect rare failures, especially when compressed summaries hide the underlying evidence.
sources:
  - 2026-04-29-automation-bias-rationales-reviewers.md
createdAt: "2026-04-29T19:54:24.544Z"
updatedAt: "2026-04-29T19:54:24.544Z"
tags:
  - human-review
  - exceptions
  - workflow-design
aliases:
  - exception-reviewer-behavior
---

# Exception-reviewer behavior

**Exception-reviewer behavior** refers to the pattern that can emerge when human reviewers only see rare routed exceptions instead of the full stream of automated adjudication cases. In this setup, review is narrow and post hoc: the reviewer receives cases the system has already flagged, while most decisions are handled by automation. The concern is not simply whether a human is present, but whether exception-only review preserves real authority, timely escalation, and independent judgment. ^[2026-04-29-automation-bias-rationales-reviewers.md, 2026-04-29-ao-radar-product-reset.md]

Exception-reviewer workflows can create a rare-failure vigilance problem. When most cases are auto-processed, reviewers may lose the attentional posture needed to catch uncommon but consequential errors. They may also become more likely to accept the system’s framing, especially if the routed case arrives with a fluent rationale, confidence cue, or compressed summary that is easier to read than to verify. ^[2026-04-29-automation-bias-rationales-reviewers.md]

A second risk is the compressed-evidence problem. If exception reviewers only see summaries rather than underlying evidence, they may be evaluating narrative coherence instead of decision quality. This matters because meaningful review requires access to the original evidence, discretion and authority to alter the outcome, and a path to escalate ambiguous or unsupported cases. ^[2026-04-29-automation-bias-rationales-reviewers.md, 2026-04-29-meaningful-human-review-audit-trails.md]

Exception-reviewer behavior is closely related to [[Human review modes as experimental variables]] and [[Appeals as the first meaningful human authority boundary]]. In closed-loop adjudication systems, the first human with real authority may not appear during initial processing at all; instead, the earliest meaningful review may happen only after an exception route or appeal. AO Radar treats this as a boundary worth testing, because the system can look reviewed while the human’s role is largely decorative. ^[2026-04-29-ao-radar-product-reset.md, 2026-04-29-analog-domains-exception-queues.md]

From an evaluation perspective, exception-reviewer behavior should be measured as a review mode, not assumed to be protective by default. Useful signals include override rate, escalation rate, time-to-review, evidence citations, rationale-evidence alignment, and catch rate on seeded defects. Low override rates are ambiguous: they may indicate strong automation, easy scenarios, or merely decorative review. ^[2026-04-29-automation-bias-rationales-reviewers.md]

In AO Radar language, exception-reviewer behavior can surface failure modes such as **DECORATIVE_HUMAN_REVIEW**, **PROCESS_SAYS_REVIEWED_BUT_NO_MEANINGFUL_REVIEW**, **FAILURE_TO_ESCALATE**, **AUTOMATED_CERTAINTY**, and **RATIONALE_OVERFITTING**. The key question is whether the exception reviewer can still challenge the automated default, or whether the workflow simply routes a small subset of cases into a review theater that leaves the original machine decision effectively intact. ^[2026-04-29-automation-bias-rationales-reviewers.md, 2026-04-29-ao-radar-product-reset.md]

## Related concepts

- [[Human review modes as experimental variables]]
- [[Appeals as the first meaningful human authority boundary]]
- [[Audit trail analysis and whitewashing detection]]
- [[Audit-log whitewash detection]]
- [[Closed-loop adjudication pipeline]]
- [[Failure taxonomy for adjudication systems]]

## Sources

- [2026-04-29-automation-bias-rationales-reviewers.md]
- [2026-04-29-ao-radar-product-reset.md]
- [2026-04-29-analog-domains-exception-queues.md]
- [2026-04-29-meaningful-human-review-audit-trails.md]
