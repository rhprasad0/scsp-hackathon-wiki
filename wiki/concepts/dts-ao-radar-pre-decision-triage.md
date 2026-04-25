---
title: DTS AO Radar pre-decision triage
summary: A pre-approval assistant that prioritizes DTS vouchers by composite risk, packages evidence, and helps the Approving Official decide what to review first before any official action.
sources:
  - 2026-04-25-dts-ao-radar-research-synthesis.md
createdAt: "2026-04-25T18:58:39.946Z"
updatedAt: "2026-04-25T18:58:39.946Z"
tags:
  - dts
  - travel-policy
  - decision-support
aliases:
  - dts-ao-radar-pre-decision-triage
  - DARPT
---

# DTS AO Radar pre-decision triage

DTS AO Radar pre-decision triage is a proposed support workflow for the DTS Approving Official (AO) that helps rank vouchers awaiting action, surface missing or invalid evidence, and flag likely problem areas before the AO approves or returns a document. It is framed as a pre-decision aid for a human reviewer, not a replacement for the AO’s approval authority or certifying-officer responsibility. ^[2026-04-25-dts-ao-radar-research-synthesis.md, 2026-04-25-dts-ao-radar-public-research.md]

The concept fits the AO’s checklist-driven review burden. Public DTMO and service guidance describe voucher review as a detailed process covering receipts, amounts, dates, locations, lines of accounting, justifications, transportation mode, lodging entitlement, and split disbursement. The same public material shows recurring return reasons such as missing or invalid receipts, amount mismatches, duplicate expenses, weak justification text, and date/location mismatches between the voucher and the underlying orders. ^[2026-04-25-dts-ao-radar-public-research.md]

In this framing, the AO helper acts like a quality-assurance manager: it packages evidence, highlights anomalies, and links each flag back to policy sources so the human can inspect the record more quickly and consistently. The source material explicitly positions the tool as pre-approval triage rather than a system that approves, denies, certifies, signs, submits, returns, or amends DTS documents. ^[2026-04-25-dts-ao-radar-research-synthesis.md, 2026-04-24-hackathon-operating-context.md, 2026-04-24-genai-mil-concept-seed.md]

The likely output of the triage step is a queue ordered by risk, with explanations for why a voucher needs closer review. The source material supports features such as receipt-presence and validity checks, amount-vs-receipt reconciliation, justification-quality scoring, date/location/orders coherence checks, duplicate-expense detection, and split-disbursement coherence checks. These are meant to support a human AO’s review, not to make entitlement decisions or accuse fraud. ^[2026-04-25-dts-ao-radar-research-synthesis.md]

This pre-decision layer is distinguished from the DTMO Travel Policy Compliance Tool (TPCT), which the source material describes as a mandatory near-real-time, post-approval compliance loop that sends emails and reminders after a voucher is approved. The proposed radar sits earlier in the process: it prepares the voucher for review before the AO applies the APPROVED stamp. ^[2026-04-25-dts-ao-radar-research-synthesis.md]

The most important trust boundary is that the AI does not determine entitlement or take official action. It should surface anomalies, documentation gaps, and policy-risk indicators, but a human AO remains responsible for approval, return, certification, and any downstream action. The workflow is intended to reduce review burden and false-approve risk while keeping human judgment visible. ^[2026-04-25-dts-ao-radar-research-synthesis.md, 2026-04-24-genai-mil-concept-seed.md]

Related concepts include [[AO helper as quality assurance manager]], [[Administrative trenches as the GenAI.mil problem frame]], [[AI-assisted spec with human review]], [[AO checklist mandate and recurring service-level return reasons]], [[Controlled Reference Retrieval]], and [[Back-office military workflow use cases]]. ^[2026-04-25-dts-ao-radar-research-synthesis.md, 2026-04-25-dts-ao-radar-public-research.md]

## Sources

- [2026-04-25-dts-ao-radar-research-synthesis.md]
- [2026-04-25-dts-ao-radar-public-research.md]
- [2026-04-24-hackathon-operating-context.md]
- [2026-04-24-genai-mil-concept-seed.md]
