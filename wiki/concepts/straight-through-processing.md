---
title: Straight-through processing
summary: An operating model where simple cases move from intake to decision with minimal manual touch, and only exceptions are sent to human review.
sources:
  - 2026-04-29-exception-based-adjudication-workflows.md
createdAt: "2026-04-29T19:54:29.551Z"
updatedAt: "2026-04-29T19:54:29.551Z"
tags:
  - automation
  - workflow
  - operations
aliases:
  - straight-through-processing
---

# Straight-through processing

Straight-through processing is an operating goal in which a workflow handles routine cases automatically and routes exceptions to human queues. In the source material, it appears in insurance claims, healthcare coverage and utilization management, public benefits eligibility, and payment operations as part of a broader “automate-most-route-exceptions” pattern. The usual flow is intake packet, evidence extraction or normalization, rules or model scoring, auto-processing of the clean majority, exception routing, and audit logging. ^[2026-04-29-exception-based-adjudication-workflows.md]

In this framing, straight-through processing is not just a downstream automation feature; it is a governance hinge. The central decision is what counts as routine versus an edge case, because that boundary determines whether a case is finalized automatically, pended, sent to a reviewer, or held for appeal. The accountable owner may be a policy owner, workflow manager, regulated organization, insurer, public agency, or payment institution, even when vendors or AI systems support the workflow. ^[2026-04-29-exception-based-adjudication-workflows.md]

The source material emphasizes that the weak point is the escalation boundary. If the system misclassifies ambiguity as routine, the human reviewer may never see the case, may see it too late, or may only see a machine-framed rationale that is difficult to challenge. This can produce failure modes such as **FAILURE_TO_ESCALATE**, **POLICY_LAUNDERING**, **DECORATIVE_HUMAN_REVIEW**, **AUDIT_LOG_WHITEWASH**, and [[Appeal-only correction]]. ^[2026-04-29-exception-based-adjudication-workflows.md]

Examples of straight-through processing in the sources include claims platforms that support manual adjudication states, payment systems that define formal exception queues, and benefits systems that automate routine processing while preserving oversight, waiver, audit, and appeal paths. Health coverage guidance also draws a boundary around individualized review, indicating that automation may assist but not replace case-specific consideration where coverage decisions are at stake. ^[2026-04-29-exception-based-adjudication-workflows.md]

The material also notes that human review can become nominal rather than meaningful if reviewers lack evidence, authority, time, or incentive to challenge the automated default. In that sense, straight-through processing should be understood alongside [[Human review modes as experimental variables]], [[Appeals as the first meaningful human authority boundary]], and [[Audit trail analysis and whitewashing detection]]. ^[2026-04-29-exception-based-adjudication-workflows.md]

## Related concepts

- [[Closed-loop adjudication pipeline]]
- [[Human review modes as experimental variables]]
- [[Appeals as the first meaningful human authority boundary]]
- [[Audit trail analysis and whitewashing detection]]
- [[Audit-log whitewash detection]]
- [[Failure taxonomy for adjudication systems]]

## Sources

- [2026-04-29-exception-based-adjudication-workflows.md]
