---
title: Closed-loop adjudication pipeline
summary: The end-to-end workflow being evaluated, including intake, evidence extraction, scoring, decisioning, rationale generation, audit logging, and optional human review.
sources:
  - 2026-04-29-ao-radar-product-reset.md
createdAt: "2026-04-29T18:29:32.181Z"
updatedAt: "2026-04-29T18:29:32.181Z"
tags:
  - workflow
  - automation
  - audit
aliases:
  - closed-loop-adjudication-pipeline
  - CAP
---

# Closed-loop adjudication pipeline

A **closed-loop adjudication pipeline** is a sequence of steps used by an automated adjudication agent to process a packet, assess it, decide an outcome, generate a rationale, produce an audit log, and optionally involve a human reviewer. In AO Radar’s framing, this pipeline is the core object of evaluation: the goal is to test whether the loop preserves human authority or instead turns review into a decorative checkbox while the machine effectively controls the outcome. ^[2026-04-29-ao-radar-product-reset.md]

The representative pipeline consists of packet intake, evidence extraction, anomaly or policy scoring, a decision step, rationale generation, audit-log generation, and optional human review or rubber stamp. The product emphasis is on evaluating the full loop rather than a single model answer, because the consequential behavior emerges across the entire sequence. ^[2026-04-29-ao-radar-product-reset.md]

AO Radar treats this pipeline only as a synthetic evaluation target. It is a closed-loop adjudication failure lab and synthetic eval harness, not a production adjudication system. The system under test may be intentionally low-safeguard or unsafe, but the harness itself must remain safe, synthetic, logged, and bounded, with no contact with real vouchers, claimants, payments, official systems, fraud accusations, or production workflows. ^[2026-04-29-ao-radar-product-reset.md]

A key concern in this pipeline is the boundary between automation and human authority. Human-in-the-loop is not considered a control unless the human controls the consequential action. AO Radar therefore examines whether the human is a meaningful reviewer or merely a managerial checkbox, appeal-only participant, audit-only participant, or decorative reviewer while the machine sets the default, writes the rationale, and cleans up the audit trail afterward. ^[2026-04-29-ao-radar-product-reset.md]

The pipeline is intended to support analysis across a range of adjudication-like domains, including voucher-like packets, claims, benefits, reimbursements, payment authorization, fraud scoring, and trust-and-safety decisions. Scenario cards can include clean packets, missing or weak documentation, duplicate charges, date or location inconsistencies, ambiguous authorization, stale-memory reconstruction, unsupported fraud framing, incomplete but human-explainable packets, and policy ambiguity that should trigger escalation. ^[2026-04-29-ao-radar-product-reset.md]

Failure analysis centers on specific labels such as unsupported denial, unsupported approval, failure to escalate, bad escalation, evidence mismatch, invented fact, invented citation, policy laundering, rationale overfitting, automated certainty, decorative human review, audit-log whitewash, weak documentation overclaimed, and cases where the process says it was reviewed but no meaningful review occurred. These labels make the behavior of the closed-loop pipeline legible without implying deployment. ^[2026-04-29-ao-radar-product-reset.md]

Related concepts include [[Human review modes as experimental variables]], [[Audit trail analysis and whitewashing detection]], [[Closed-loop adjudication pipeline]], [[Failure taxonomy for adjudication systems]], [[AO Radar closed-loop adjudication failure lab]], and [[Human authority boundary]]. ^[2026-04-29-ao-radar-product-reset.md]

## Sources

- [2026-04-29-ao-radar-product-reset.md]
