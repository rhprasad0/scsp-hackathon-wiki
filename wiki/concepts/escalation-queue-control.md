---
title: Escalation queue control
summary: The governance and configuration of which cases enter exception queues, who owns those queues, and what actions reviewers can take.
sources:
  - 2026-04-29-exception-based-adjudication-workflows.md
createdAt: "2026-04-29T19:54:26.263Z"
updatedAt: "2026-04-29T19:54:26.263Z"
tags:
  - queue-management
  - governance
  - exception-handling
aliases:
  - escalation-queue-control
  - EQC
---

# Escalation queue control

**Escalation queue control** is the governance and configuration of which cases are routed out of [[Straight-through processing]] and into human review, exception handling, or appeal paths. In [[Exception-based adjudication workflows]], the escalation queue is itself an adjudication surface: it determines which packets are treated as routine, which are pended, which evidence triggers review, and whether a reviewer can override the system before consequential action. ^[2026-04-29-exception-based-adjudication-workflows.md]

In automate-most-route-exceptions systems, the weak point is often the boundary that decides whether a case counts as an edge case. If ambiguity is misclassified as routine, the human reviewer may never see the case, may see it too late, or may receive a machine-framed rationale that makes the default outcome hard to challenge. ^[2026-04-29-exception-based-adjudication-workflows.md]

In practice, escalation criteria are defined by configurable rules, thresholds, coverage criteria, policy manuals, model confidence bands, risk scores, queue taxonomies, and operational procedures. Control over these settings may sit with policy owners, system configuration owners, workflow managers, regulated organizations, or platform-specific queue administrators, depending on the domain. ^[2026-04-29-exception-based-adjudication-workflows.md]

Escalation queue control matters because many workflows reserve automation for the routine majority while routing hard cases to people. Examples include insurance claims, health coverage and utilization management, public benefits eligibility, and payment processing, where exception queues are formal workflow stages rather than informal inboxes. ^[2026-04-29-exception-based-adjudication-workflows.md]

A failure to control escalation well can produce several recognizable problems: **FAILURE_TO_ESCALATE** when ambiguous or incomplete packets never reach a meaningful reviewer; **POLICY_LAUNDERING** when generic rules or model confidence are converted into official-looking individualized decisions; **DECORATIVE_HUMAN_REVIEW** when a reviewer is present but lacks the time, authority, training, or context to challenge the system; and **AUDIT_LOG_WHITEWASH** when the log records that a workflow occurred without showing that evidence was sufficient or judgment was sound. ^[2026-04-29-exception-based-adjudication-workflows.md]

Escalation control is also closely tied to human authority boundaries. In some systems, the first real chance for a person to overturn an automated outcome comes only at appeal, making appeals the first meaningful [[Human authority boundary]] rather than an early review stage. That pattern increases burden on affected people and can hide upstream routing errors. ^[2026-04-29-analog-domains-exception-queues.md, 2026-04-29-exception-based-adjudication-workflows.md]

AO Radar treats escalation queue control as part of the synthetic evaluation harness for closed-loop adjudication failures. The harness is used to test whether a low-safeguard system recognizes uncertainty, routes cases appropriately, preserves [[Meaningful human review]], and makes accountability legible without implying production deployment. ^[2026-04-29-ao-radar-product-reset.md, 2026-04-29-exception-based-adjudication-workflows.md]

## Related concepts

- [[Closed-loop adjudication pipeline]]
- [[Human review modes as experimental variables]]
- [[Appeals as the first meaningful human authority boundary]]
- [[Audit trail analysis and whitewashing detection]]
- [[Audit-log whitewash detection]]
- [[Failure taxonomy for adjudication systems]]
- [[AO Radar closed-loop adjudication failure lab]]

## Sources

- [2026-04-29-exception-based-adjudication-workflows.md]
- [2026-04-29-analog-domains-exception-queues.md]
- [2026-04-29-ao-radar-product-reset.md]
