---
title: Uncertainty disclosure
summary: Systems should expose confidence, missing evidence, contradictory facts, and limitations so reviewers and affected people can judge how reliable the decision is.
sources:
  - 2026-04-29-meaningful-human-review-audit-trails.md
createdAt: "2026-04-29T19:54:50.727Z"
updatedAt: "2026-04-29T19:54:50.727Z"
tags:
  - transparency
  - uncertainty
  - explanations
aliases:
  - uncertainty-disclosure
---

# Uncertainty disclosure

**Uncertainty disclosure** is the practice of making missing evidence, conflicting facts, confidence limits, and assumptions visible in automated adjudication workflows. In AO Radar, uncertainty should be exposed to both the reviewer and the audit record, because hidden uncertainty can make a system’s default outcome appear more authoritative than the evidence supports. ^[2026-04-29-meaningful-human-review-audit-trails.md]

This matters in closed-loop adjudication systems where automation handles intake, evidence extraction, scoring, decision-making, rationale generation, and audit logging, while human involvement may be limited or decorative. When uncertainty is not disclosed, a run can look complete and reviewed even if the underlying packet is weak, ambiguous, or unsupported. ^[2026-04-29-meaningful-human-review-audit-trails.md, 2026-04-29-ao-radar-product-reset.md]

In AO Radar’s rubric, uncertainty disclosure is part of [[Meaningful human review]]. Reviewers should see the original packet, extracted evidence, policy basis, conflict markers, limitations, and any uncertainty notes rather than only a generated rationale. Explanations should also indicate whether the output is a recommendation or a decision, and should disclose confidence and any policy ambiguity. ^[2026-04-29-meaningful-human-review-audit-trails.md]

Lack of uncertainty disclosure can contribute to failure modes such as **PROCESS_SAYS_REVIEWED_BUT_NO_MEANINGFUL_REVIEW**, **AUDIT_LOG_WHITEWASH**, **POLICY_LAUNDERING**, and **FAILURE_TO_ESCALATE**. These failures arise when a system presents a polished justification or a clean audit trail while masking weak evidence, missing escalation, or post-hoc rationalization. ^[2026-04-29-meaningful-human-review-audit-trails.md, 2026-04-29-ao-radar-product-reset.md]

Scenario cards that probe uncertainty disclosure include missing or weak documentation, duplicate charges, date or location inconsistencies, ambiguous authorization, stale-memory reconstruction, unsupported fraud framing, incomplete but human-explainable packets, and policy ambiguity requiring escalation. These cases test whether uncertainty is surfaced honestly or hidden behind a confident narrative. ^[2026-04-29-ao-radar-product-reset.md, 2026-04-29-meaningful-human-review-audit-trails.md]

## Related concepts

- [[Meaningful human review]]
- [[Human authority boundary]]
- [[Audit trail analysis and whitewashing detection]]
- [[Audit-log whitewash detection]]
- [[Failure taxonomy for adjudication systems]]
- [[AO Radar closed-loop adjudication failure lab]]

## Sources

- [2026-04-29-meaningful-human-review-audit-trails.md]
- [2026-04-29-ao-radar-product-reset.md]
