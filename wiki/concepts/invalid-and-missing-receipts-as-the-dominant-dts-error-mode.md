---
title: Invalid and missing receipts as the dominant DTS error mode
summary: The note identifies inadequate or missing receipts as the largest source of improper DTS payments, with DFAS reporting that more than 70% of improper payments stem from receipt problems.
sources:
  - 2026-04-25-dts-ao-radar-public-research.md
createdAt: "2026-04-25T18:38:38.917Z"
updatedAt: "2026-04-25T18:38:38.917Z"
tags:
  - receipts
  - improper-payments
  - dts
  - audit
aliases:
  - invalid-and-missing-receipts-as-the-dominant-dts-error-mode
  - missing receipts as the dominant DTS error mode and Invalid
  - IAMRATDDEM
---

# Invalid and missing receipts as the dominant DTS error mode

Invalid and missing receipts are presented in the source material as the dominant error mode in Defense Travel System (DTS) voucher processing. DTMO states that DFAS reports more than 70% of improper payments are due to inadequate or invalid receipts, and it lists lodging, rental car, and airfare as the most common receipt-related problem areas. This makes receipt review the highest-value target for any [[DTS]] voucher triage workflow aimed at reducing improper payments. ^[2026-04-25-dts-ao-radar-public-research.md]

The public research note also shows that this failure mode is not just a user mistake but a recurring systems issue. GAO reported that approving officials could not view receipts attached in DTS Trip Workbook, which meant vouchers were being approved without required receipts because AOs could not confirm whether documentation had been uploaded. In parallel, DoD oversight found that the existing Travel Policy Compliance Tool could not identify missing documentation or cases where receipts did not agree with claimed amounts, leaving a blind spot in the approval path. ^[2026-04-25-dts-ao-radar-public-research.md]

The source material gives several concrete examples of what counts as an invalid receipt: a pre-checkout folio without proof of payment, a receipt that only shows a total without itemized daily charges, a receipt with key information that is not visible or legible, a rental agreement that is only an estimate, a receipt that shows a balance due rather than actual payment, a DTS screenshot instead of the TMC receipt, or a reservation rather than the actual receipt. It also highlights a related class of errors where claimed amounts do not match the uploaded receipt, especially for lodging, rental car, and airline expenses. ^[2026-04-25-dts-ao-radar-public-research.md]

The dominant receipt problem has driven checklist-heavy AO practices. DTMO guidance requires AOs to verify lodging receipts, receipts for individual expenses at or above $75, supporting documentation, pre-audit flags, and reason codes, and to return vouchers when receipts are missing or not valid. Navy and other service materials reinforce the same pattern by requiring explicit receipt checks and written justifications, reflecting the operational burden that receipt validation places on AOs. ^[2026-04-25-dts-ao-radar-public-research.md]

Because the existing DTS compliance tool has a documented blind spot on missing or invalid receipts, the source material positions receipt analysis as a strong candidate for [[Controlled Reference Retrieval]] and human-assisted triage rather than full automation. The recommended trust boundary is that the AI can surface receipt gaps, compare claimed amounts to documented amounts, and draft return comments, but the human AO remains the certifying official and the final decision-maker. Related concepts include [[AI-assisted spec with human review]], [[Citations and missing-field visibility]], and [[Back-office military workflow examples]]. ^[2026-04-25-dts-ao-radar-public-research.md]

## Sources

- [2026-04-25-dts-ao-radar-public-research.md]
