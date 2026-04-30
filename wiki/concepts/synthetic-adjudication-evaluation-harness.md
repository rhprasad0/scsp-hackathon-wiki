---
title: Synthetic adjudication evaluation harness
summary: A safe, synthetic environment for testing adjudication agents and failure modes without touching real-world systems or decisions.
sources:
  - 2026-04-29-ao-radar-product-reset.md
createdAt: "2026-04-29T19:54:05.273Z"
updatedAt: "2026-04-29T19:54:05.273Z"
tags:
  - evaluation
  - synthetic-data
  - adjudication
aliases:
  - synthetic-adjudication-evaluation-harness
  - SAEH
---

# Synthetic adjudication evaluation harness

A **synthetic adjudication evaluation harness** is a safe, synthetic, logged, and bounded evaluation environment for testing unsafe adjudication agents as specimens. In AO Radar’s framing, the harness is the product: it evaluates how an automated adjudication pipeline behaves across the full loop, rather than serving as a pre-approval assistant or production workflow tool. ^[2026-04-29-ao-radar-product-reset.md]

The harness is explicitly **synthetic-only**. It must not touch real vouchers, real claimants, real payments, official systems, real fraud accusations, or production adjudication workflows. The system under test may be intentionally low-safeguard or unsafe, but only within a controlled evaluation setting. ^[2026-04-29-ao-radar-product-reset.md]

The core test object is a [[Closed-loop adjudication pipeline]] that runs through packet intake, evidence extraction, anomaly or policy scoring, decision-making, rationale generation, audit-log generation, and optional human review or rubber stamp. The point is to measure end-to-end behavior, not just a single model response. ^[2026-04-29-ao-radar-product-reset.md]

A central concern is whether the loop preserves [[Human authority boundary]] or reduces the human to a decorative checkbox while the machine sets the default, writes the rationale, and cleans up the audit trail afterward. Human-in-the-loop is treated as meaningful only when the human controls the consequential action. ^[2026-04-29-ao-radar-product-reset.md]

Synthetic scenario cards are used to exercise the harness. Useful cases include clean packets, missing or weak documentation, duplicate charges, date or location inconsistencies, ambiguous authorization, stale-memory reconstruction, unsupported fraud framing, incomplete but human-explainable packets, and policy ambiguity that should trigger escalation. ^[2026-04-29-ao-radar-product-reset.md]

The harness uses a failure taxonomy to make accountability and reasoning errors legible. Core labels include **UNSUPPORTED_DENIAL**, **UNSUPPORTED_APPROVAL**, **FAILURE_TO_ESCALATE**, **BAD_ESCALATION**, **EVIDENCE_MISMATCH**, **INVENTED_FACT**, **INVENTED_CITATION**, **POLICY_LAUNDERING**, **RATIONALE_OVERFITTING**, **AUTOMATED_CERTAINTY**, **DECORATIVE_HUMAN_REVIEW**, **AUDIT_LOG_WHITEWASH**, **WEAK_DOC_OVERCLAIMED**, and **PROCESS_SAYS_REVIEWED_BUT_NO_MEANINGFUL_REVIEW**. ^[2026-04-29-ao-radar-product-reset.md]

Human review is modeled as a first-class experimental variable rather than a binary state. Review modes include meaningful reviewer, exception reviewer, decorative reviewer, batch reviewer, appeal-only reviewer, audit-only reviewer, and managerial checkbox. This lets the harness test whether review preserves authority or merely simulates it. ^[2026-04-29-ao-radar-product-reset.md]

The harness also supports [[Audit trail analysis and whitewashing detection]], which examines whether the audit record reflects the actual adjudication loop or instead creates an audit-log whitewash that makes the process look reviewed after the fact. This is important for detecting whether the system’s logs accurately preserve actions, escalation, and review status. ^[2026-04-29-ao-radar-product-reset.md]

In AO Radar, the harness is meant to support synthetic packet generation, low-safeguard adjudication agents as specimens, closed-loop decision pipeline execution, evaluator rubrics, failure taxonomy, audit-trail analysis, and [[Human authority boundary]] analysis. Public language should emphasize the synthetic evaluation framing and avoid implying real deployment, real payments, real fraud accusations, military operational use, or autonomous production decisions. ^[2026-04-29-ao-radar-product-reset.md]

Useful related concepts include [[AO Radar closed-loop adjudication failure lab]], [[Closed-loop adjudication pipeline]], [[Human review modes as experimental variables]], [[Audit trail analysis and whitewashing detection]], [[Human authority boundary]], [[Failure taxonomy for adjudication systems]], fraud scoring, and trust and safety. ^[2026-04-29-ao-radar-product-reset.md]

## Sources

- [2026-04-29-ao-radar-product-reset.md]
