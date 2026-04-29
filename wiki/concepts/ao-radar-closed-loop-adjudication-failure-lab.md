---
title: AO Radar closed-loop adjudication failure lab
summary: A synthetic evaluation product framed as a lab for testing failures in automated adjudication systems rather than a production assistant or deployment tool.
sources:
  - 2026-04-29-ao-radar-product-reset.md
createdAt: "2026-04-29T18:29:37.517Z"
updatedAt: "2026-04-29T18:29:37.517Z"
tags:
  - evaluation
  - adjudication
  - synthetic-systems
aliases:
  - ao-radar-closed-loop-adjudication-failure-lab
  - ARCAFL
---

# AO Radar closed-loop adjudication failure lab

AO Radar is a synthetic, closed-loop adjudication failure lab for evaluating unsafe adjudication agents as specimens. In this frame, the harness is the product: it tests how automated adjudication pipelines behave across the full loop, rather than serving as a safe pre-approval assistant or production workflow tool. The emphasis is on identifying when the human remains the real authority versus when the system reduces the human to a decorative checkbox. ^[2026-04-29-ao-radar-product-reset.md]

The product boundary is strictly synthetic. AO Radar must not touch real vouchers, real claimants, real payments, official systems, real fraud accusations, or production adjudication workflows. The system under test may be intentionally low-safeguard or unsafe, but only as a controlled specimen inside a safe, logged, bounded evaluation environment. ^[2026-04-29-ao-radar-product-reset.md]

A representative closed-loop adjudication agent is evaluated across the full pipeline: packet intake, evidence extraction, anomaly or policy scoring, decision-making, rationale generation, audit-log generation, and optional human review or rubber stamp. The goal is to measure end-to-end behavior, not just a single model response. ^[2026-04-29-ao-radar-product-reset.md]

The first synthetic domain can use voucher-like packets because they are familiar, document-heavy, and easy to convert into realistic but fake scenario cards. More broadly, the lab is meant to cover closed-loop adjudication in claims, benefits, reimbursements, payment authorization, fraud scoring, trust-and-safety decisions, and similar workflows where a machine can set the default outcome. ^[2026-04-29-ao-radar-product-reset.md]

Scenario cards should include clean packets, missing or weak documentation, duplicate charges, date or location inconsistencies, ambiguous authorization, stale-memory reconstruction, unsupported fraud framing, incomplete but human-explainable packets, and policy ambiguity that should trigger escalation. These cases are intended to surface how the adjudication loop handles uncertainty, weak evidence, and potentially misleading narratives. ^[2026-04-29-ao-radar-product-reset.md]

The failure taxonomy includes UNSUPPORTED_DENIAL, UNSUPPORTED_APPROVAL, FAILURE_TO_ESCALATE, BAD_ESCALATION, EVIDENCE_MISMATCH, INVENTED_FACT, INVENTED_CITATION, POLICY_LAUNDERING, RATIONALE_OVERFITTING, AUTOMATED_CERTAINTY, DECORATIVE_HUMAN_REVIEW, AUDIT_LOG_WHITEWASH, WEAK_DOC_OVERCLAIMED, and PROCESS_SAYS_REVIEWED_BUT_NO_MEANINGFUL_REVIEW. These labels are meant to make distinct accountability and reasoning failures legible. ^[2026-04-29-ao-radar-product-reset.md]

Human review is treated as a first-class experimental variable rather than a binary property. Review modes include meaningful reviewer, exception reviewer, decorative reviewer, batch reviewer, appeal-only reviewer, audit-only reviewer, and managerial checkbox. This allows AO Radar to test whether review preserves human authority or merely simulates it. ^[2026-04-29-ao-radar-product-reset.md]

The spec should center on synthetic packet generation, low-safeguard adjudication agents as specimens, closed-loop decision pipeline execution, evaluator rubric and failure taxonomy, audit-trail analysis, human authority boundary analysis, and outputs that make failure modes legible without implying production deployment. Useful related concepts include [[Human review modes as experimental variables]], [[Audit trail analysis and whitewashing detection]], fraud scoring, trust and safety, and adjudication. ^[2026-04-29-ao-radar-product-reset.md]

Public language for the project should emphasize terms such as closed-loop adjudication failure lab, synthetic eval harness, unsafe agents as specimens, low-safeguard system under test, rubber-stamp theater, decorative human review, audit-log whitewash, policy laundering, unsupported denial, automated certainty, accountability failure, and human authority boundary. It should avoid language that implies real deployment, real payments, real fraud accusations, military operational use, or autonomous production decisions. ^[2026-04-29-ao-radar-product-reset.md]

## Sources

- [2026-04-29-ao-radar-product-reset.md]
