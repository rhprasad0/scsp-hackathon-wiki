---
title: Scenario Card Design
summary: The practice of constructing realistic synthetic case packets with patterns like missing documents, duplicate charges, policy ambiguity, and weak evidence to probe system behavior.
sources:
  - 2026-04-29-ao-radar-product-reset.md
createdAt: "2026-04-30T10:43:06.562Z"
updatedAt: "2026-04-30T10:43:06.562Z"
tags:
  - data-generation
  - testing
  - adjudication
aliases:
  - scenario-card-design
  - SCD
---

# Scenario Card Design

Scenario card design refers to the creation of synthetic, realistic-but-fake case packets used to test closed-loop adjudication systems. In the source material, scenario cards are part of a synthetic evaluation harness for unsafe adjudication agents: they help exercise the full decision loop, not just a single model answer. The intended use is to make failure modes visible in a bounded environment without touching real vouchers, claimants, payments, official systems, or production workflows. ^[2026-04-29-ao-radar-product-reset.md]

A scenario card should be built to probe whether a system preserves human authority or turns human review into a decorative checkbox. The source material emphasizes that the important question is not only what decision the system makes, but whether ambiguity is recognized early enough to trigger escalation, whether the reviewer can meaningfully intervene, and whether the audit trail reflects real review rather than process theater. [[human-in-the-loop]] [[decorative human review]] [[exception queues]] ^[2026-04-29-ao-radar-product-reset.md]

## Core scenario-card primitives

The source material identifies several useful primitives for scenario cards: clean packets, missing documentation, weak documentation with plausible context, duplicate charges, date or location inconsistencies, ambiguous authorization, stale-memory reconstruction, tempting but unsupported fraud framing, incomplete but human-explainable packets, and policy ambiguity requiring escalation. These primitives are meant to create cases where routine handling is possible but not always correct, so the test can reveal whether the system escalates when it should. ^[2026-04-29-ao-radar-product-reset.md]

## Design goals

Scenario cards should help evaluate the full closed-loop pipeline: packet intake, evidence extraction, anomaly or policy scoring, decision-making, rationale generation, audit-log generation, and optional human review. The source material frames this as a way to assess not just classification quality, but also escalation behavior, rationale quality, and whether human review is meaningful or merely nominal. ^[2026-04-29-ao-radar-product-reset.md]

A well-designed scenario card should make failure modes legible. The source material names examples such as `UNSUPPORTED_DENIAL`, `UNSUPPORTED_APPROVAL`, `FAILURE_TO_ESCALATE`, `BAD_ESCALATION`, `EVIDENCE_MISMATCH`, `INVENTED_FACT`, `INVENTED_CITATION`, `POLICY_LAUNDERING`, `RATIONALE_OVERFITTING`, `AUTOMATED_CERTAINTY`, `DECORATIVE_HUMAN_REVIEW`, `AUDIT_LOG_WHITEWASH`, `WEAK_DOC_OVERCLAIMED`, and `PROCESS_SAYS_REVIEWED_BUT_NO_MEANINGFUL_REVIEW`. ^[2026-04-29-ao-radar-product-reset.md]

## Human review as a scenario variable

The source material recommends treating human review as a first-class experimental variable rather than a simple yes/no flag. Relevant review modes include meaningful reviewer, exception reviewer, decorative reviewer, batch reviewer, appeal-only reviewer, audit-only reviewer, and managerial checkbox. Scenario cards can therefore be designed to test how a system behaves under different review configurations and whether those configurations actually preserve human control over consequential actions. ^[2026-04-29-ao-radar-product-reset.md]

## Domain framing

Voucher-like packets are presented as a useful first synthetic domain because they are familiar, document-heavy, and easy to convert into realistic scenario cards. More broadly, the same design approach can be applied to claims, benefits, reimbursements, payment authorization, fraud scoring, trust-and-safety decisions, and other workflows where a machine can set the default outcome. [[exception queues]] [[workflow automation]] [[risk-based review]] ^[2026-04-29-ao-radar-product-reset.md]

## Public language and boundaries

The source material recommends describing scenario-card work using terms like [[Closed-Loop Adjudication Failure Lab]], synthetic eval harness, unsafe agents as specimens, low-safeguard system under test, rubber-stamp theater, [[Decorative Human Review]], audit-log whitewash, [[Policy Laundering]], unsupported denial, automated certainty, accountability failure, and [[Human Authority Boundary]]. It also recommends avoiding language that implies real deployment, real payments, real fraud accusations, military operational use, or autonomous production decisions. ^[2026-04-29-ao-radar-product-reset.md]

## Related concepts

- [[closed-loop adjudication]]
- [[synthetic evaluation harness]]
- [[human-in-the-loop]]
- [[decorative human review]]
- [[exception queues]]
- [[workflow routing]]
- [[risk-based review]]

## Sources

- `2026-04-29-ao-radar-product-reset.md`
