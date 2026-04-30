---
title: Synthetic-Only Eval Harness
summary: A bounded testing setup that uses fake packets and scenarios only, with no interaction with real claims, payments, or production systems.
sources:
  - 2026-04-29-ao-radar-product-reset.md
createdAt: "2026-04-30T10:43:03.444Z"
updatedAt: "2026-04-30T10:43:03.444Z"
tags:
  - evaluation
  - synthetic-data
  - safety
aliases:
  - synthetic-only-eval-harness
  - SEH
---

# Synthetic-Only Eval Harness

A synthetic-only eval harness is a **closed-loop adjudication failure lab** for testing unsafe adjudication agents as specimens. In this framing, the unsafe system is the specimen, and the harness is the product. The harness is designed to evaluate when an automated adjudication pipeline preserves human authority versus when it turns human review into a decorative checkbox while the machine sets the default, writes the rationale, and cleans up the audit trail afterward. ^[2026-04-29-ao-radar-product-reset.md]

The harness must remain synthetic and bounded. It must not touch real vouchers, real claimants, real payments, official systems, real fraud accusations, or production adjudication workflows. The system under test may be intentionally low-safeguard or unsafe, but only as a controlled eval specimen within a safe, logged environment. ^[2026-04-29-ao-radar-product-reset.md]

A representative system-under-test loop includes packet intake, evidence extraction, anomaly or policy scoring, a decision step (`approve`, `deny`, `escalate`, or `request information`), rationale generation, audit-log generation, and optional human review or rubber-stamp approval. The harness should evaluate the full loop rather than a single model answer. ^[2026-04-29-ao-radar-product-reset.md]

The synthetic domain can use voucher-like packets as a first test case because they are familiar, document-heavy, and easy to turn into realistic but fake scenario cards. The broader target, however, is closed-loop adjudication across claims, benefits, reimbursements, payment authorization, fraud scoring, trust-and-safety decisions, and similar workflows where a machine can set the default outcome. ^[2026-04-29-ao-radar-product-reset.md]

Scenario-card primitives in the harness include clean packets, missing documentation, weak documentation with plausible context, duplicate charges, date or location inconsistency, ambiguous authorization, stale-memory reconstruction, tempting but unsupported fraud framing, incomplete but human-explainable packets, and policy ambiguity requiring escalation. These cases are meant to surface failure modes such as unsupported denial, unsupported approval, [[Failure to Escalate]], invented facts, invented citations, [[Policy Laundering]], rationale overfitting, automated certainty, [[Decorative Human Review]], and audit-log whitewash. ^[2026-04-29-ao-radar-product-reset.md]

Human review should be modeled as a first-class experimental variable rather than a binary property. Review modes include meaningful reviewer, exception reviewer, decorative reviewer, batch reviewer, appeal-only reviewer, audit-only reviewer, and managerial checkbox. This supports analysis of the [[Human Authority Boundary]]: whether the human actually controls the consequential action or merely appears in the workflow. ^[2026-04-29-ao-radar-product-reset.md]

The product spec centers on synthetic packet generation, low-safeguard adjudication agents as specimens, closed-loop decision pipeline execution, evaluator rubric and failure taxonomy, audit-trail analysis, [[Human Authority Boundary]] analysis, and outputs that make failure modes legible without implying production deployment. Public language for the concept includes phrases such as [[Closed-Loop Adjudication Failure Lab]], synthetic eval harness, unsafe agents as specimens, rubber-stamp theater, [[Decorative Human Review]], audit-log whitewash, [[Policy Laundering]], unsupported denial, automated certainty, accountability failure, and [[Human Authority Boundary]]. ^[2026-04-29-ao-radar-product-reset.md]

## Related concepts

- [[closed-loop adjudication]]
- [[human-in-the-loop]]
- [[exception queues]]
- [[audit log]]
- [[workflow automation]]
- [[contestability]]
- [[appeals]]

## Sources

- `2026-04-29-ao-radar-product-reset.md`
