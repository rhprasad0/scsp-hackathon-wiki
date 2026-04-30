---
title: Explanation faithfulness
summary: A rationale or generated explanation is only useful for accountability if it actually matches the evidence and computation that drove the decision, not just if it sounds plausible.
sources:
  - 2026-04-29-meaningful-human-review-audit-trails.md
createdAt: "2026-04-29T19:54:51.841Z"
updatedAt: "2026-04-29T19:54:51.841Z"
tags:
  - explanations
  - llm-safety
  - accountability
aliases:
  - explanation-faithfulness
---

# Explanation faithfulness

**Explanation faithfulness** is the degree to which a generated explanation, rationale, or decision narrative actually reflects the evidence, reasoning path, or computation that produced an outcome. In the AO Radar context, faithfulness matters because a polished explanation can be plausible while still misrepresenting which evidence influenced the decision, creating false confidence and hiding accountability failures. ^[2026-04-29-meaningful-human-review-audit-trails.md]

This concept is especially important in closed-loop adjudication systems, where automation may handle intake, evidence extraction, scoring, decision-making, rationale generation, and audit logging. A fluent rationale or clean audit trail does not by itself prove that the outcome was supported by the original evidence, that uncertainty was visible, or that human review was meaningful rather than decorative. ^[2026-04-29-meaningful-human-review-audit-trails.md]

In AO Radar rubric terms, explanation faithfulness should be tested against the evidence packet and policy basis, not against style or fluency. A rationale fails when it contains material claims that cannot be linked to evidence, when it relies on unsupported inferences, or when it uses policy-sounding language to justify an outcome that the facts do not support. Related concepts include [[Audit trail analysis and whitewashing detection]], [[Audit-log whitewash detection]], [[Human authority boundary]], and [[Failure taxonomy for adjudication systems]]. ^[2026-04-29-meaningful-human-review-audit-trails.md, 2026-04-29-ao-radar-product-reset.md]

Explanation faithfulness also connects to human review quality. If a reviewer sees only a generated rationale, or sees a review step without authority, evidence access, or discretion, the explanation may look complete while still failing to support meaningful oversight. In that case, the system may appear reviewed even though the explanation is doing more work than the human reviewer. ^[2026-04-29-meaningful-human-review-audit-trails.md, 2026-04-29-ao-radar-product-reset.md]

AO Radar treats explanation faithfulness as distinct from explanation quality. A clear, concise, or confident explanation can still be unfaithful, so the rubric should compare rationale claims to packet evidence, extracted fields, contradictions, missing documentation, policy references, and escalation triggers. This helps detect accountability theater such as [[AUDIT_LOG_WHITEWASH]] and [[POLICY_LAUNDERING]]. ^[2026-04-29-meaningful-human-review-audit-trails.md]

## Related concepts

- [[Audit trail analysis and whitewashing detection]]
- [[Audit-log whitewash detection]]
- [[Human authority boundary]]
- [[Human review modes as experimental variables]]
- [[Failure taxonomy for adjudication systems]]
- [[AO Radar closed-loop adjudication failure lab]]

## Sources

- [2026-04-29-meaningful-human-review-audit-trails.md]
- [2026-04-29-ao-radar-product-reset.md]
