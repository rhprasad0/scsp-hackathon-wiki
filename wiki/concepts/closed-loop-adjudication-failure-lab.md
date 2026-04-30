---
title: Closed-Loop Adjudication Failure Lab
summary: A synthetic evaluation environment for studying end-to-end adjudication systems and their failure modes rather than deploying them operationally.
sources:
  - 2026-04-29-ao-radar-product-reset.md
createdAt: "2026-04-30T10:43:01.228Z"
updatedAt: "2026-04-30T10:43:01.228Z"
tags:
  - evaluation
  - adjudication-systems
  - safety
aliases:
  - closed-loop-adjudication-failure-lab
  - CAFL
---

# Closed-Loop Adjudication Failure Lab

A closed-loop adjudication failure lab is a synthetic evaluation harness for testing unsafe adjudication agents as specimens. In the source material, the unsafe system under test is the specimen, while the harness itself is the product. The lab is framed as a way to examine whether an automated adjudication pipeline preserves human authority over consequential action or instead turns the human into a decorative checkbox while the machine sets the default, writes the rationale, and cleans up the audit trail afterward. ^[2026-04-29-ao-radar-product-reset.md]

The lab is designed to stay synthetic and bounded. It must not touch real vouchers, real claimants, real payments, official systems, real fraud accusations, or production adjudication workflows. Instead, it evaluates low-safeguard or unsafe systems only as controlled specimens inside a safe, logged environment. ^[2026-04-29-ao-radar-product-reset.md]

The representative workflow studied in the lab is a closed loop: packet intake, evidence extraction, anomaly or policy scoring, a decision to approve, deny, escalate, or request information, rationale generation, audit-log generation, and optional human review or rubber stamp. The source material emphasizes that the lab should evaluate the full loop, not just a single model answer. ^[2026-04-29-ao-radar-product-reset.md]

The first synthetic domain is voucher-like packets, which are described as familiar, document-heavy, and easy to turn into realistic but fake scenario cards. The broader target, however, includes closed-loop adjudication across [[claims]], [[benefits]], [[reimbursements]], [[payment authorization]], [[fraud scoring]], [[trust-and-safety]], and other workflows where a machine can set the default outcome. ^[2026-04-29-ao-radar-product-reset.md]

Scenario cards in the lab can include clean packets, missing documentation, weak documentation with plausible context, duplicate charges, date or location inconsistency, ambiguous authorization, stale-memory reconstruction, tempting but unsupported fraud framing, incomplete but human-explainable packets, and policy ambiguity requiring escalation. These primitives are intended to make failure modes legible. ^[2026-04-29-ao-radar-product-reset.md]

The source material defines a failure taxonomy that includes `UNSUPPORTED_DENIAL`, `UNSUPPORTED_APPROVAL`, `FAILURE_TO_ESCALATE`, `BAD_ESCALATION`, `EVIDENCE_MISMATCH`, `INVENTED_FACT`, `INVENTED_CITATION`, `POLICY_LAUNDERING`, `RATIONALE_OVERFITTING`, `AUTOMATED_CERTAINTY`, `DECORATIVE_HUMAN_REVIEW`, `AUDIT_LOG_WHITEWASH`, `WEAK_DOC_OVERCLAIMED`, and `PROCESS_SAYS_REVIEWED_BUT_NO_MEANINGFUL_REVIEW`. This taxonomy focuses attention on how systems justify and record decisions, not only on the final approve-or-deny outcome. ^[2026-04-29-ao-radar-product-reset.md]

Human review is treated as a first-class experimental variable rather than a binary property. Review modes include meaningful reviewer, exception reviewer, decorative reviewer, batch reviewer, appeal-only reviewer, audit-only reviewer, and managerial checkbox. This reflects the lab’s central question: whether human involvement actually controls the consequential action. ^[2026-04-29-ao-radar-product-reset.md]

The spec for the lab centers on synthetic packet generation, low-safeguard adjudication agents as specimens, closed-loop decision pipeline execution, evaluator rubric and failure taxonomy, audit-trail analysis, [[Human Authority Boundary]] analysis, and product outputs that make failure modes legible without implying production deployment. The public language recommended by the source includes terms such as closed-loop adjudication failure lab, synthetic eval harness, unsafe agents as specimens, low-safeguard system under test, rubber-stamp theater, [[Decorative Human Review]], audit-log whitewash, [[Policy Laundering]], unsupported denial, automated certainty, accountability failure, and [[Human Authority Boundary]]. ^[2026-04-29-ao-radar-product-reset.md]

## Related concepts

- [[human-in-the-loop]]
- [[exception queues]]
- [[adjudication]]
- [[audit logs]]
- [[workflow automation]]
- [[trust-and-safety appeals]]
- [[expense audit automation]]
- [[public benefits eligibility automation]]
- [[fraud holds and payment authorization review]]

## Sources

- `2026-04-29-ao-radar-product-reset.md`
