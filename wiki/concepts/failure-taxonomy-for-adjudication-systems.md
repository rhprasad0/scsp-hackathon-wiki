---
title: Failure Taxonomy for Adjudication Systems
summary: A structured label set for diagnosing system failures such as unsupported denial, invented facts, policy laundering, decorative review, and audit-log whitewash.
sources:
  - 2026-04-29-ao-radar-product-reset.md
createdAt: "2026-04-30T10:43:25.367Z"
updatedAt: "2026-04-30T10:43:25.367Z"
tags:
  - evaluation
  - taxonomy
  - governance
aliases:
  - failure-taxonomy-for-adjudication-systems
  - FTFAS
---

# Failure Taxonomy for Adjudication Systems

A failure taxonomy for adjudication systems organizes the recurring ways a closed-loop decision workflow can break down when it classifies a case, routes it, generates a rationale, and produces an outcome. The source material frames the key problem as not just whether a system makes the right final approve/deny decision, but whether it preserves a meaningful [[Human Authority Boundary]] when ambiguity, risk, or policy conflict appears. ^[2026-04-29-ao-radar-product-reset.md, 2026-04-29-analog-domains-exception-queues.md]

This taxonomy is especially concerned with [[exception queues]] and [[human-in-the-loop]] controls. In these systems, the important failure may occur upstream of the final outcome: a case is misclassified as routine, not escalated in time, or wrapped in a polished rationale that makes review appear complete without changing the decision. The source material treats this as a control problem across public benefits, content moderation, fraud/payment review, and expense auditing. ^[2026-04-29-analog-domains-exception-queues.md]

## Core failure families

### 1. Escalation failures

Escalation failures occur when an ambiguous, risky, or non-routine case does not reach a human reviewer, specialist, or appeal path with real authority before a consequential outcome is finalized. The central examples in the source material include `FAILURE_TO_ESCALATE`, `BAD_ESCALATION`, `FALSE_POSITIVE_HOLD`, and `FALSE_POSITIVE_EXCEPTION`, all of which describe cases where the workflow mishandles the handoff to meaningful review. ^[2026-04-29-analog-domains-exception-queues.md]

These failures matter because the escalation gate itself can be the decisive adjudication surface. A system may look controlled because it emits a rationale or audit entry, but the harmful outcome is that the right person never saw the case in time. ^[2026-04-29-analog-domains-exception-queues.md]

### 2. Decorative review failures

Decorative review failures happen when a human is nominally present but does not meaningfully influence the outcome. The review may be logged, the case may be routed to a person, and a rationale may be recorded, yet the automated default still determines the result. The source material names this pattern `DECORATIVE_HUMAN_REVIEW`, `PROCESS_SAYS_REVIEWED_BUT_NO_MEANINGFUL_REVIEW`, and `RUBBER_STAMP_APPROVAL`. ^[2026-04-29-analog-domains-exception-queues.md, 2026-04-29-automation-bias-rationales-reviewers.md]

This family is closely tied to [[Automation Bias]], complacency, divided attention, [[Verification Complexity]], and confidence cues that make reviewers more likely to accept system output. The source material also notes that explanations and rationales do not reliably prevent overreliance, and can sometimes make wrong advice more persuasive. ^[2026-04-29-automation-bias-rationales-reviewers.md]

### 3. Appeal and contestability failures

Appeal and contestability failures arise when an appeal path exists in name but is not usable, timely, or capable of changing the result. The source material includes `APPEAL_ONLY_REVIEW`, `INSUFFICIENT_NOTICE`, `UNSUPPORTED_REJECTION`, and opaque denials as examples of appeal mechanisms that do not provide meaningful contestability. ^[2026-04-29-analog-domains-exception-queues.md]

In this framing, contestability is not just the presence of an appeal button. It is whether the affected person can challenge the rationale, obtain human intervention, and actually trigger reconsideration before the outcome hardens. ^[2026-04-29-analog-domains-exception-queues.md]

### 4. Audit and rationale failures

Audit and rationale failures occur when logs or explanations create the appearance of diligence without supporting real review. The source material uses terms such as `AUDIT_LOG_WHITEWASH`, `RATIONALE_OVERFITTING`, `INVENTED_CITATION`, `INVENTED_FACT`, and `POLICY_LAUNDERING` to describe workflows where the record is cleaner than the underlying judgment. ^[2026-04-29-ao-radar-product-reset.md, 2026-04-29-analog-domains-exception-queues.md]

These failures are important because audit trails can become part of the control surface itself. If the record suggests that a human considered the case, but the human lacked evidence, authority, or time, then the audit trail is masking rather than correcting the failure. ^[2026-04-29-analog-domains-exception-queues.md, 2026-04-29-ao-radar-product-reset.md]

### 5. Evidence and policy interpretation failures

Evidence and policy interpretation failures occur when a system misreads the packet, invents support, or overclaims what weak documentation can justify. The source material includes `UNSUPPORTED_APPROVAL`, `UNSUPPORTED_DENIAL`, `EVIDENCE_MISMATCH`, and `WEAK_DOC_OVERCLAIMED` as failure labels for cases where the adjudicator’s conclusion is not grounded in the available record. ^[2026-04-29-ao-radar-product-reset.md]

These failures are especially relevant in document-heavy workflows such as benefits, claims, reimbursements, and payment review, where packet intake, evidence extraction, and anomaly scoring can lead to a final action before a human has a chance to challenge the interpretation. ^[2026-04-29-ao-radar-product-reset.md, 2026-04-29-analog-domains-exception-queues.md]

### 6. Workflow and queue design failures

Workflow and queue design failures occur when the system’s routing, prioritization, or capacity rules suppress the right cases. The source material points to `QUEUE_PRIORITY_BIAS`, constrained queues, and special-access review paths as examples of how a case can be delayed, deprioritized, or hidden from the person who should see it. ^[2026-04-29-analog-domains-exception-queues.md]

These failures are a reminder that adjudication problems are often structural. The issue is not only whether the model can classify a case, but whether the workflow can preserve timely access to meaningful authority. ^[2026-04-29-analog-domains-exception-queues.md]

## Cross-cutting patterns

A recurring theme is that the critical decision is often “should this be escalated?” rather than “what is the final answer?” The source material repeatedly emphasizes that closed-loop adjudication systems can appear robust because they generate a rationale, log, or review label, even while the actual decision boundary has already been lost. ^[2026-04-29-analog-domains-exception-queues.md, 2026-04-29-ao-radar-product-reset.md]

Another cross-cutting pattern is that human review must be treated as a first-class control, not a decorative checkbox. A meaningful reviewer needs access to the underlying evidence, authority to disagree, and enough time and context to change the outcome. If those conditions are absent, the workflow is vulnerable to [[Decorative Human Review]] and rubber-stamp behavior. ^[2026-04-29-automation-bias-rationales-reviewers.md, 2026-04-29-ao-radar-product-reset.md]

## Example failure labels

- `FAILURE_TO_ESCALATE`
- `BAD_ESCALATION`
- `DECORATIVE_HUMAN_REVIEW`
- `APPEAL_ONLY_REVIEW`
- `PROCESS_SAYS_REVIEWED_BUT_NO_MEANINGFUL_REVIEW`
- `RUBBER_STAMP_APPROVAL`
- `AUDIT_LOG_WHITEWASH`
- `UNSUPPORTED_APPROVAL`
- `UNSUPPORTED_DENIAL`
- `INVENTED_FACT`
- `INVENTED_CITATION`
- `POLICY_LAUNDERING`
- `RATIONALE_OVERFITTING`
- `AUTOMATED_CERTAINTY`
- `EVIDENCE_MISMATCH` ^[2026-04-29-ao-radar-product-reset.md, 2026-04-29-analog-domains-exception-queues.md]

## Related concepts

- [[exception queues]]
- [[human-in-the-loop]]
- [[contestability]]
- [[appeals]]
- [[adjudication]]
- [[audit logs]]
- [[workflow automation]]
- [[policy enforcement]]
- [[risk-based review]]
- [[administrative adjudication]]

## Sources

- `2026-04-29-ao-radar-product-reset.md`
- `2026-04-29-analog-domains-exception-queues.md`
- `2026-04-29-automation-bias-rationales-reviewers.md`
