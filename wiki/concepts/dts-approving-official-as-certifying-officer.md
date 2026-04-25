---
title: DTS Approving Official as Certifying Officer
summary: The DTS Approving Official functions as a Certifying Officer with personal pecuniary liability for approving vouchers, making the role a high-stakes additional duty rather than a dedicated finance billet.
sources:
  - 2026-04-25-dts-ao-radar-research-synthesis.md
createdAt: "2026-04-25T18:38:46.678Z"
updatedAt: "2026-04-25T18:38:46.678Z"
tags:
  - dts
  - military-finance
  - governance
aliases:
  - dts-approving-official-as-certifying-officer
  - DAOACO
---

# DTS Approving Official as Certifying Officer

The DTS Approving Official (AO) is the human approver who, when approving a payment-bearing travel voucher, acts as a Certifying Officer and carries personal pecuniary liability for that approval. In the source material, this role is described as an additional duty for many personnel rather than a dedicated finance billet, which helps explain why AO review is both operationally important and cognitively demanding. ^[2026-04-25-dts-ao-radar-research-synthesis.md]

AO review is structured around a detailed checklist of voucher checks. Public DTMO guidance and service-level procedures require the AO to verify trip dates, locations, expenses, receipts, pre-audit flags, reason codes, advisories, and supporting records, and to return documents for correction when items are not compliant. Multiple public checklists also span several voucher screens and evidence types, including voucher details, expenses, accounting, financial summary, other authorizations, pre-audits, and sign-and-submit steps. ^[2026-04-25-dts-ao-radar-research-synthesis.md]

The cognitive burden is significant because the AO must catch recurring failure modes that automated controls do not reliably eliminate. Public guidance and oversight reporting highlight invalid or missing receipts, amounts that do not match receipts, duplicate expenses, incorrect mileage, weak justifications, and mismatches between orders and voucher data. The source material notes that more than 70% of improper DTS payments are due to inadequate or invalid receipts, and that existing compliance tooling has known blind spots around missing documentation and receipt-to-amount mismatches. ^[2026-04-25-dts-ao-radar-research-synthesis.md]

This makes the AO role a strong fit for a pre-decision assistance workflow rather than an automation workflow. The recommended design posture in the source material is to support the AO with a [[AI-assisted spec with human review]] pattern: software can surface likely problem areas, missing evidence, and policy-risk indicators, but the AO remains the certifying human and retains responsibility for approval. Related concepts include [[Controlled Reference Retrieval]], [[Citations and missing-field visibility]], and [[Back-office military workflow use cases]]. ^[2026-04-25-dts-ao-radar-research-synthesis.md]

The public record also shows that this role sits inside a broader DTS environment where post-approval compliance checks, audit follow-up, and command-level checklists remain necessary. Commands have formalized checklist-based controls in response to audit findings, and the AO is expected to work within those controls while using the checklist to reduce mistakes and oversights. In practice, the AO is the final pre-payment review point before the voucher moves to payment and subsequent post-pay review processes. ^[2026-04-25-dts-ao-radar-research-synthesis.md]

## Sources

- [2026-04-25-dts-ao-radar-research-synthesis.md]
