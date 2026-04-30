---
title: Exception-queue control problem
summary: A cross-domain pattern in which systems define routine cases, send only selected exceptions to constrained queues, and thereby determine whether humans see consequential cases in time.
sources:
  - 2026-04-29-analog-domains-exception-queues.md
createdAt: "2026-04-29T19:54:02.126Z"
updatedAt: "2026-04-29T19:54:02.126Z"
tags:
  - exception-queues
  - control-systems
  - adjudication
aliases:
  - exception-queue-control-problem
  - ECP
---

# Exception-queue control problem

The **exception-queue control problem** is the failure pattern in which a system defines what counts as routine, routes only selected cases into exception handling, and then allows consequential outcomes to occur without meaningful human authority over the edge cases. In AO Radar’s framing, the central issue is not whether a human review exists in the process, but whether the system correctly escalates ambiguity, weak evidence, mismatch, or policy uncertainty before a default outcome is finalized. ^[2026-04-29-analog-domains-exception-queues.md]

This problem appears across closed-loop adjudication and related workflows where a machine sets the default and humans are relegated to exception queues, appeals, or residual review. The upstream control question is whether the system recognizes non-routine cases in time, or instead converts them into clean-looking routine decisions supported by generic rationales and audit records. ^[2026-04-29-analog-domains-exception-queues.md]

A recurring pattern is: intake, extraction, scoring or classification, routine approval or denial, exception routing, rationale generation, and logging. The control problem emerges when the routing step fails, when the queue is constrained by capacity or access, or when the human reviewer becomes a decorative reviewer, appeal-only participant, audit-only participant, or managerial checkbox rather than a meaningful authority. ^[2026-04-29-analog-domains-exception-queues.md]

The source material identifies several analog domains that exhibit this pattern. In public benefits eligibility, routine cases may be processed automatically while mismatches, missing documentation, discretionary judgments, and appeals should be routed to staff; in trust-and-safety appeals, users may technically have an appeal path while the process remains opaque or ineffective; in fraud and payment authorization, unusual transactions may be delayed or held while support and exception review are required; and in [[Expense audit automation]], routine claims may be auto-approved while high-risk cases go to manager or finance queues. ^[2026-04-29-analog-domains-exception-queues.md]

The corresponding failure modes include `FAILURE_TO_ESCALATE`, `BAD_OVERRIDE`, `AUDIT_LOG_WHITEWASH`, `DECORATIVE_HUMAN_REVIEW`, `APPEAL_ONLY_REVIEW`, `QUEUE_PRIORITY_BIAS`, `FALSE_POSITIVE_HOLD`, `INSUFFICIENT_NOTICE`, `RUBBER_STAMP_APPROVAL`, and `PROCESS_SAYS_REVIEWED_BUT_NO_MEANINGFUL_REVIEW`. These labels describe cases where the queue exists but does not preserve meaningful review, contestability, or evidence-based authority. ^[2026-04-29-analog-domains-exception-queues.md]

In AO Radar, this problem is useful for synthetic evaluation because it can be tested with scenario cards such as mismatched documents, duplicate charges, date or location inconsistencies, ambiguous authorization, stale-memory reconstruction, unsupported fraud framing, incomplete but human-explainable packets, and policy ambiguity that should trigger escalation. The harness can then check whether the specimen escalates appropriately or instead produces a polished but unsupported decision. ^[2026-04-29-analog-domains-exception-queues.md]

Related concepts include [[Closed-loop adjudication pipeline]], [[Human review modes as experimental variables]], [[Human authority boundary]], [[Audit trail analysis and whitewashing detection]], [[Failure taxonomy for adjudication systems]], and [[Batch review and rubber-stamp denials]]. ^[2026-04-29-analog-domains-exception-queues.md]

## Sources

- [2026-04-29-analog-domains-exception-queues.md]
