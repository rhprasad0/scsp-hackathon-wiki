---
title: Scenario card design for adjudication testing
summary: Synthetic packet templates that encode cases like missing documentation, duplicates, ambiguity, and weak evidence to exercise adjudication systems.
sources:
  - 2026-04-29-ao-radar-product-reset.md
createdAt: "2026-04-29T19:54:11.064Z"
updatedAt: "2026-04-29T19:54:11.064Z"
tags:
  - test-design
  - synthetic-data
  - case-generation
aliases:
  - scenario-card-design-for-adjudication-testing
  - SCDFAT
---

# Scenario card design for adjudication testing

Scenario card design for adjudication testing in AO Radar focuses on building synthetic cases that exercise a [[Closed-loop adjudication pipeline]] end to end. The goal is to test unsafe adjudication agents as specimens inside a safe, logged, bounded evaluation environment, not to model or support production adjudication. Scenario cards should be designed to make failure modes legible across packet intake, evidence extraction, scoring, decision-making, rationale generation, audit logging, and optional human review. ^[2026-04-29-ao-radar-product-reset.md]

A useful starting point is voucher-like packets, since they are familiar, document-heavy, and easy to convert into realistic but fake cases. More broadly, scenario cards should cover closed-loop adjudication in claims, benefits, reimbursements, payment authorization, fraud scoring, trust-and-safety decisions, and similar workflows where a machine can set the default outcome. ^[2026-04-29-ao-radar-product-reset.md]

Scenario cards should include a range of evidence conditions and ambiguity types: clean packets, missing documentation, weak documentation with plausible context, duplicate charges, date or location inconsistencies, ambiguous authorization, stale-memory reconstruction, unsupported fraud framing, incomplete but human-explainable packets, and policy ambiguity that should trigger escalation. These patterns are intended to probe how the adjudication loop handles uncertainty, weak evidence, and misleading narratives. ^[2026-04-29-ao-radar-product-reset.md]

The design should also support testing of specific failure labels, including UNSUPPORTED_DENIAL, UNSUPPORTED_APPROVAL, FAILURE_TO_ESCALATE, BAD_ESCALATION, EVIDENCE_MISMATCH, INVENTED_FACT, INVENTED_CITATION, POLICY_LAUNDERING, RATIONALE_OVERFITTING, AUTOMATED_CERTAINTY, DECORATIVE_HUMAN_REVIEW, AUDIT_LOG_WHITEWASH, WEAK_DOC_OVERCLAIMED, and PROCESS_SAYS_REVIEWED_BUT_NO_MEANINGFUL_REVIEW. Scenario cards are most useful when they help distinguish these accountability and reasoning failures from one another. ^[2026-04-29-ao-radar-product-reset.md]

Human review should be treated as a first-class experimental variable rather than a simple yes/no control. Scenario design should therefore make room for meaningful reviewer, exception reviewer, decorative reviewer, batch reviewer, appeal-only reviewer, audit-only reviewer, and managerial checkbox modes, so the test can reveal whether human review preserves authority or merely simulates it. ^[2026-04-29-ao-radar-product-reset.md]

Good scenario cards should also support audit-trail analysis and [[Human authority boundary]] analysis. That means including cases that reveal whether the record shows real escalation when warranted, whether the audit log accurately reflects the loop’s actions, and whether appeal or review is the first point at which a human can truly alter the outcome. Related concepts include [[Audit trail analysis and whitewashing detection]], [[Human review modes as experimental variables]], [[Human authority boundary]], [[Closed-loop adjudication pipeline]], and [[Failure taxonomy for adjudication systems]]. ^[2026-04-29-ao-radar-product-reset.md, 2026-04-29-analog-domains-exception-queues.md]

Scenario card language should stay synthetic and avoid implying real deployment, real payments, real fraud accusations, military operational use, or autonomous production decisions. Public-facing wording can emphasize terms like closed-loop adjudication failure lab, synthetic eval harness, unsafe agents as specimens, low-safeguard system under test, [[Decorative human review]], audit-log whitewash, policy laundering, unsupported denial, automated certainty, and [[Human authority boundary]]. ^[2026-04-29-ao-radar-product-reset.md]

## Sources

- [2026-04-29-ao-radar-product-reset.md]
- [2026-04-29-analog-domains-exception-queues.md]
