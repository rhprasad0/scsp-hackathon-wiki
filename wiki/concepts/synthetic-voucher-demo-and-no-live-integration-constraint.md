---
title: Synthetic voucher demo and no-live-integration constraint
summary: Prototype demonstrations should use synthetic voucher data and explicitly avoid live DTS integration, since real DTS access is gated and operational data cannot be used in the demo.
sources:
  - 2026-04-25-dts-ao-radar-research-synthesis.md
createdAt: "2026-04-25T18:38:50.846Z"
updatedAt: "2026-04-25T18:38:50.846Z"
tags:
  - prototyping
  - data-safety
  - integration
aliases:
  - synthetic-voucher-demo-and-no-live-integration-constraint
  - no-live-integration constraint and Synthetic voucher demo
  - SVDANC
---

# Synthetic voucher demo and no-live-integration constraint

A synthetic voucher demo is a prototype approach for DTS voucher workflows that uses entirely fabricated voucher data rather than real traveler records, bank details, or receipts. In the source material, this is paired with an explicit constraint that any prototype must not use real GTCC numbers, real EFT routing, or real traveler PII. The demo is therefore intended as a public-safe walkthrough of the workflow, not a live operational tool. ^[2026-04-25-dts-ao-radar-research-synthesis.md]

The no-live-integration constraint means the prototype must stop short of claiming direct integration with DTS. The source material notes that DTS access is gated by CAC and DoD VPN, and says the demo should explicitly avoid pretending to integrate with DTS. Instead, it should present a synthetic voucher walkthrough that remains external to the platform. ^[2026-04-25-dts-ao-radar-research-synthesis.md]

This constraint shapes the product posture: the system is a companion or candidate component for current DTS, not a replacement or on-platform agent. It is designed to fit the pre-decision triage pattern, where software surfaces evidence and risk indicators for a human Approving Official, while the human retains responsibility for approval, return, cancellation, certification, and any other final action. ^[2026-04-25-dts-ao-radar-research-synthesis.md]

Using synthetic data also supports the broader trust boundaries described in the source material. The AI should not see real PII, should not determine entitlement, should not accuse fraud, and should not auto-fill or overwrite justification text. These limits keep the demo aligned with the [[AI-assisted spec with human review]] pattern and with the GenAI.mil emphasis on narrow, reviewable workflow support. ^[2026-04-25-dts-ao-radar-research-synthesis.md]

In practice, the constraint implies that evaluation and user testing should rely on held-out synthetic vouchers, ideally labeled by a retired AO or finance NCO. The source material proposes measuring AO time-to-decision, false-approve rate against ground-truth labels, and refusal correctness on out-of-policy items, while keeping the entire workflow public-safe and offline or local-corpus oriented. Related concepts include [[AI-assisted spec with human review]], [[Administrative trenches as the GenAI.mil problem frame]], and [[AO Radar pre-approval triage queue]]. ^[2026-04-25-dts-ao-radar-research-synthesis.md]

## Sources

- [2026-04-25-dts-ao-radar-research-synthesis.md]
