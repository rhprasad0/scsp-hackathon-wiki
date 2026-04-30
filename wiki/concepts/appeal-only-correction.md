---
title: Appeal-only correction
summary: A failure mode where human intervention happens only after an adverse automated decision, instead of upstream at the routing or evidence-review stage.
sources:
  - 2026-04-29-exception-based-adjudication-workflows.md
createdAt: "2026-04-29T19:54:31.277Z"
updatedAt: "2026-04-29T19:54:31.277Z"
tags:
  - appeals
  - failure-mode
  - workflow
aliases:
  - appeal-only-correction
---

# Appeal-only correction

**Appeal-only correction** is a workflow pattern in which an automated adjudication system’s initial outcome is not meaningfully reviewable by a human until the affected person files an appeal. In this pattern, the first real opportunity for human authority comes after the adverse decision has already been made, rather than during initial processing or exception handling. ^[2026-04-29-analog-domains-exception-queues.md, 2026-04-29-ao-radar-product-reset.md]

This concept is relevant to closed-loop adjudication systems where automation handles intake, evidence extraction, scoring, decision-making, rationale generation, and audit logging, while human involvement is limited to exception queues, reviewer sign-off, or post hoc appeal handling. AO Radar uses this boundary to test whether human review preserves authority or becomes decorative, with the human effectively arriving only after the system has set the default outcome. ^[2026-04-29-ao-radar-product-reset.md, 2026-04-29-analog-domains-exception-queues.md]

Appeal-only correction is especially important when systems fail to escalate ambiguous or weakly supported cases. Scenario patterns such as missing or weak documentation, duplicate charges, date or location inconsistencies, ambiguous authorization, stale-memory reconstruction, unsupported fraud framing, incomplete but human-explainable packets, and policy ambiguity are used to probe whether a case reaches a meaningful reviewer early enough, or instead is auto-processed and only corrected later through appeal. ^[2026-04-29-ao-radar-product-reset.md, 2026-04-29-analog-domains-exception-queues.md]

In AO Radar terminology, this failure pattern is associated with labels such as **FAILURE_TO_ESCALATE**, **PROCESS_SAYS_REVIEWED_BUT_NO_MEANINGFUL_REVIEW**, **DECORATIVE_HUMAN_REVIEW**, and **AUDIT_LOG_WHITEWASH**. It also connects to **APPEAL_ONLY_REVIEW** as a mode in which the reviewer’s authority is deferred until after the initial decision. ^[2026-04-29-ao-radar-product-reset.md, 2026-04-29-automation-bias-rationales-reviewers.md]

The main concern is that appeal-only correction can hide upstream routing errors. A system may produce a decision, rationale, and audit trail that look complete, while the first human who can truly intervene is reachable only through an appeal path. In public-safe analogs such as benefits administration, content moderation, payment fraud holds, and [[Expense audit automation]], the same structure appears when a person can contest an outcome only after the system has already applied its default. ^[2026-04-29-analog-domains-exception-queues.md]

## Related concepts

- [[Appeals as the first meaningful human authority boundary]]
- [[Human review modes as experimental variables]]
- [[Human authority boundary]]
- [[Audit trail analysis and whitewashing detection]]
- [[Audit-log whitewash detection]]
- [[Closed-loop adjudication pipeline]]
- [[Failure taxonomy for adjudication systems]]
- [[AO Radar closed-loop adjudication failure lab]]

## Sources

- [2026-04-29-analog-domains-exception-queues.md]
- [2026-04-29-ao-radar-product-reset.md]

