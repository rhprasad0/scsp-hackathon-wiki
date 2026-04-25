---
title: Synthetic voucher demo constraint
summary: Any prototype should use fully synthetic voucher data and avoid live DTS integration, real PII, or official-system actions.
sources:
  - 2026-04-25-dts-ao-radar-research-synthesis.md
createdAt: "2026-04-25T18:58:48.969Z"
updatedAt: "2026-04-25T18:58:48.969Z"
tags:
  - prototype
  - data-safety
  - dts
aliases:
  - synthetic-voucher-demo-constraint
  - SVDC
---

# Synthetic voucher demo constraint

The synthetic voucher demo constraint is the rule that any prototype, walkthrough, or evaluation for voucher-review automation must use entirely synthetic data and remain public-safe. In the source material, this means avoiding real travel cards, bank details, traveler PII, live DTS access, or other sensitive operational records. The demo should be presented as a candidate synthetic/public-safe workflow rather than an on-platform implementation. ^[2026-04-25-dts-ao-radar-research-synthesis.md]

This constraint exists because the target workflow involves payment-bearing vouchers, human certifying-officer review, and public-unclassified prototype development. The source material stresses that no live DTS or GenAI.mil integration is available from the public repo, and that the demo must not pretend to be inside DTS or inside GenAI.mil. It also reiterates that the AI must not approve, deny, certify, sign, submit, return, cancel, or amend any voucher document. ^[2026-04-25-dts-ao-radar-research-synthesis.md]

A synthetic-only approach is also used to keep the assistant within its trust boundaries: the AI may surface anomalies, evidence gaps, policy references, and review cues, but it must not determine entitlement or accuse fraud. The demo should therefore focus on pre-decision triage, evidence packaging, queue prioritization, and human review support using synthetic vouchers that resemble real workflows without exposing real records. Related concepts include [[AI-assisted spec with human review]], [[Administrative trenches as the GenAI.mil problem frame]], and [[AO checklist-driven voucher review]]. ^[2026-04-25-dts-ao-radar-research-synthesis.md]

## Sources

- [2026-04-25-dts-ao-radar-research-synthesis.md]
