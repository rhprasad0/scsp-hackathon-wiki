---
title: AO Radar pre-approval triage queue
summary: A risk-scored queue of DTS vouchers awaiting action, designed to help AOs prioritize the most error-prone submissions before approval.
sources:
  - 2026-04-25-dts-ao-radar-research-synthesis.md
createdAt: "2026-04-25T18:38:45.632Z"
updatedAt: "2026-04-25T18:38:45.632Z"
tags:
  - dts
  - workflow
  - risk-scoring
aliases:
  - ao-radar-pre-approval-triage-queue
  - ARPTQ
---

# AO Radar pre-approval triage queue

AO Radar pre-approval triage queue is a proposed [[Back-office military workflow use cases|back-office]] workflow for sorting DTS “Trips Awaiting Action” before an Approving Official (AO) makes a decision. The queue is intended to surface likely problem areas, missing evidence, and policy-risk indicators so the AO can review the highest-risk vouchers first, rather than replacing the human certifying role. It fits the [[AI-assisted spec with human review]] pattern: software assists with screening and evidence surfacing, while the AO remains responsible for approval, return, cancellation, and any certifying-officer action. ^[2026-04-25-dts-ao-radar-research-synthesis.md, 2026-04-25-dts-ao-radar-public-research.md]

The triage queue is grounded in the structure of the DTS AO review task. Public DTMO and service guidance describe AO review as a detailed, per-voucher checklist process covering trip dates, locations, expenses, receipts, pre-audit flags, supporting records, and justification quality. The public record also shows that many recurring errors cluster into a small number of categories, including receipt validity, amount-vs-receipt mismatches, date/location coherence, and weak or boilerplate justifications. ^[2026-04-25-dts-ao-radar-public-research.md]

A core purpose of the queue is to reduce pre-approval work that would otherwise be discovered later by post-approval compliance processes. The source material notes that the DTMO Travel Policy Compliance Tool operates after approval and does not reliably identify missing or invalid receipts or mismatches between claimed amounts and receipts, which leaves the AO responsible for catching those issues manually. AO Radar is therefore positioned as an earlier triage layer, not a replacement for existing compliance tools. ^[2026-04-25-dts-ao-radar-research-synthesis.md, 2026-04-25-dts-ao-radar-public-research.md]

The queue is also consistent with the broader GenAI.mil problem frame of reducing administrative burden in back-office workflows. In that frame, the most suitable AI systems are narrow, operationally legible, and reviewable: they help rank work, surface evidence, and support human judgment without moving into tactical or autonomous decision-making. Related concepts include [[Administrative trenches as the GenAI.mil problem frame]], [[Controlled Reference Retrieval]], [[Citations and missing-field visibility]], and [[Boring workflow, spicy mechanism]]. ^[2026-04-25-dts-ao-radar-public-research.md]

In practical terms, the queue would prioritize vouchers by composite risk rather than by simple arrival order. The synthesis identifies candidate signals for this ranking, including invalid or missing receipts, amount-vs-receipt reconciliation problems, inconsistent dates or locations, non-substantive pre-audit justifications, and other recurring pattern checks drawn from public DTMO, DoD, and service guidance. The intended interaction model is conservative: the system flags anomalies and suggests what to inspect, but it does not approve, deny, certify, sign, submit, or accuse fraud. ^[2026-04-25-dts-ao-radar-research-synthesis.md]

## Sources

- [2026-04-25-dts-ao-radar-research-synthesis.md]
- [2026-04-25-dts-ao-radar-public-research.md]
