---
title: Closed-loop adjudication pipeline
summary: The end-to-end workflow under test, from packet intake through evidence extraction, scoring, decisioning, rationale generation, audit logging, and optional human review.
sources:
  - 2026-04-29-ao-radar-product-reset.md
createdAt: "2026-04-29T18:29:32.181Z"
updatedAt: "2026-04-29T19:54:06.816Z"
tags:
  - workflow
  - adjudication
  - automation
aliases:
  - closed-loop-adjudication-pipeline
  - CAP
---

# Closed-loop adjudication pipeline

A **closed-loop adjudication pipeline** is an end-to-end workflow in which a system ingests a packet, extracts evidence, applies anomaly or policy scoring, makes or recommends a decision, generates a rationale, records an audit log, and may include optional human review or a rubber stamp. In AO Radar’s framing, the pipeline is the unit of evaluation: the goal is to test whether the loop preserves human authority or instead turns the human into a decorative checkbox while the machine sets the default, writes the rationale, and cleans up the audit trail afterward. ^[2026-04-29-ao-radar-product-reset.md]

The representative sequence is: packet intake, evidence extraction, anomaly or policy scoring, decisioning, rationale generation, audit-log generation, and optional human review. AO Radar evaluates the full loop rather than a single model answer because the consequential behavior emerges across the entire sequence. ^[2026-04-29-ao-radar-product-reset.md]

This pipeline is part of a synthetic evaluation setup, not a production adjudication system. AO Radar treats it as a closed-loop adjudication failure lab and synthetic eval harness, and the harness must remain safe, synthetic, logged, and bounded with no contact with real vouchers, claimants, payments, official systems, fraud accusations, or production workflows. ^[2026-04-29-ao-radar-product-reset.md]

A central issue in the pipeline is the boundary between automation and human authority. Human-in-the-loop is not considered a control unless the human controls the consequential action, so AO Radar examines whether review is meaningful or merely an appeal-only, audit-only, batch, or managerial checkbox role while the machine determines the outcome. ^[2026-04-29-ao-radar-product-reset.md]

The pipeline is intended to support analysis across adjudication-like domains such as voucher-like packets, claims, benefits, reimbursements, payment authorization, fraud scoring, and trust-and-safety decisions. Scenario cards can include clean packets, missing or weak documentation, duplicate charges, date or location inconsistencies, ambiguous authorization, stale-memory reconstruction, unsupported fraud framing, incomplete but human-explainable packets, and policy ambiguity that should trigger escalation. ^[2026-04-29-ao-radar-product-reset.md]

Failure analysis focuses on labels including unsupported denial, unsupported approval, [[Failure to escalate]], bad escalation, evidence mismatch, invented fact, invented citation, policy laundering, rationale overfitting, automated certainty, [[Decorative human review]], audit-log whitewash, weak documentation overclaimed, and cases where the process says it was reviewed but no meaningful review occurred. These labels make the behavior of the closed-loop pipeline legible without implying deployment. ^[2026-04-29-ao-radar-product-reset.md]

Related concepts include [[Human review modes as experimental variables]], [[Audit trail analysis and whitewashing detection]], [[Failure taxonomy for adjudication systems]], [[AO Radar closed-loop adjudication failure lab]], and [[Human authority boundary]]. ^[2026-04-29-ao-radar-product-reset.md]

## Sources

- [2026-04-29-ao-radar-product-reset.md]
