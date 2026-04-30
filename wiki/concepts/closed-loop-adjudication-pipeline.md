---
title: Closed-Loop Adjudication Pipeline
summary: The full sequence of intake, evidence extraction, scoring, decisioning, rationale generation, audit logging, and possible human review that should be evaluated as a whole.
sources:
  - 2026-04-29-ao-radar-product-reset.md
createdAt: "2026-04-30T10:43:04.977Z"
updatedAt: "2026-04-30T10:43:04.977Z"
tags:
  - workflow
  - adjudication
  - evaluation
aliases:
  - closed-loop-adjudication-pipeline
  - CAP
---

# Closed-Loop Adjudication Pipeline

A closed-loop adjudication pipeline is a workflow in which a system processes a packet or case through intake, evidence extraction, scoring or classification, decision-making, rationale generation, audit-log generation, and possible human review. The source material frames this as a loop worth evaluating end-to-end, not just as a single model output, because the meaningful control question is whether the pipeline preserves human authority over consequential actions or instead turns human involvement into a decorative checkbox. ^[2026-04-29-ao-radar-product-reset.md]

In this framing, the pipeline may include steps such as packet intake, evidence extraction, anomaly or policy scoring, and a decision to approve, deny, escalate, or request information. It may then generate a rationale and an audit trail, followed by optional human review. The source material emphasizes that the human review step is not automatically a control; it matters only if the human can actually control the consequential action. ^[2026-04-29-ao-radar-product-reset.md]

The concept is closely related to the [[exception queues|exception-queue]] control problem, where the critical failure often occurs upstream of the final approve/deny action. A system can appear accountable because it writes a rationale and logs review activity, while still failing to escalate ambiguous or high-risk cases to a reviewer with real authority. This is the same pattern described in [[decorative human review]] and [[contestability and appeal paths]]. ^[2026-04-29-ao-radar-product-reset.md, 2026-04-29-analog-domains-exception-queues.md]

The source material treats closed-loop adjudication as a useful synthetic evaluation target across domains such as claims, benefits, reimbursements, payment authorization, fraud scoring, and trust-and-safety decisions. It also stresses that the evaluation environment should remain synthetic and bounded, with low-safeguard or unsafe systems used only as specimens rather than in real operational workflows. ^[2026-04-29-ao-radar-product-reset.md]

Common failure modes in this kind of pipeline include `FAILURE_TO_ESCALATE`, `DECORATIVE_HUMAN_REVIEW`, `AUDIT_LOG_WHITEWASH`, `UNSUPPORTED_DENIAL`, `UNSUPPORTED_APPROVAL`, `BAD_ESCALATION`, `AUTOMATED_CERTAINTY`, and `PROCESS_SAYS_REVIEWED_BUT_NO_MEANINGFUL_REVIEW`. In other words, the pipeline can look complete while still failing to surface ambiguity, preserve independent judgment, or enable meaningful contestability. ^[2026-04-29-ao-radar-product-reset.md, 2026-04-29-analog-domains-exception-queues.md]

A useful way to analyze the pipeline is to ask whether it is a genuine [[human-in-the-loop]] system or merely a machine-led process with human decoration. If the human cannot see the evidence, disagree with the system, escalate uncertainty, or change the outcome, then the pipeline does not preserve human authority over the consequential action. ^[2026-04-29-ao-radar-product-reset.md, 2026-04-29-automation-bias-rationales-reviewers.md]

## Related concepts

- [[exception queues]]
- [[human-in-the-loop]]
- [[adjudication]]
- [[workflow automation]]
- [[audit logs]]
- [[contestability and appeal paths]]
- [[decorative human review]]
- [[risk-based review]]

## Sources

- `2026-04-29-ao-radar-product-reset.md`
- `2026-04-29-analog-domains-exception-queues.md`
- `2026-04-29-automation-bias-rationales-reviewers.md`
