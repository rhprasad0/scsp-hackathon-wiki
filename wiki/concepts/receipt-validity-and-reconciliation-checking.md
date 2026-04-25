---
title: Receipt validity and reconciliation checking
summary: A core pain point is verifying that receipts are valid and that claimed amounts match receipt evidence, since invalid or missing receipts are a dominant source of improper payments.
sources:
  - 2026-04-25-dts-ao-radar-research-synthesis.md
createdAt: "2026-04-25T18:38:45.635Z"
updatedAt: "2026-04-25T18:38:45.635Z"
tags:
  - receipts
  - compliance
  - document-processing
aliases:
  - receipt-validity-and-reconciliation-checking
  - reconciliation checking and Receipt validity
  - RVARC
---

# Receipt validity and reconciliation checking

Receipt validity and reconciliation checking is the review step in which an approving official verifies that travel receipts are acceptable and that claimed amounts match the attached documentation before approving a voucher. In the DTS review context, this is a core part of voucher validation because public guidance and service checklists emphasize checking receipts, amounts, trip details, and supporting records before payment is authorized. ^[2026-04-25-dts-ao-radar-public-research.md]

The receipt-validity part of the check focuses on whether the receipt itself is usable evidence. Public DTMO material describes invalid receipt patterns such as pre-checkout folios, unitemized totals, screenshots, reservation confirmations instead of actual receipts, and other inadequate proof of payment. The source material also notes that lodging, rental car, and airfare receipts are especially important, and that more than 70% of improper payments are attributed to inadequate or invalid receipts. Related concepts include [[AO voucher review checklist and cognitive workload]] and [[AO checklist mandate and recurring service-level return reasons]]. ^[2026-04-25-dts-ao-radar-public-research.md]

Reconciliation checking is the comparison between the amount claimed in DTS and the amount shown on the receipt or other supporting record. The source material identifies amount-versus-receipt mismatches as a recurring failure mode and notes that existing compliance tooling does not reliably identify them. In practice, this makes manual reconciliation a distinct review burden rather than a simple receipt-presence check. ^[2026-04-25-dts-ao-radar-public-research.md]

The review is not limited to receipts alone. Public checklist materials also require AOs to verify trip dates, locations, pre-audit flags, reason codes, advisories, and document validity, and to return vouchers when documentation is incomplete or unsupported. Weak justification text, duplicate expenses, and date or location mismatches commonly appear alongside receipt problems as reasons for return. ^[2026-04-25-dts-ao-radar-public-research.md]

Receipt validity and reconciliation checking matter because the approving official carries personal pecuniary liability and is expected to make the approval decision as an additional duty. The checklist is therefore a control surface for reducing avoidable errors and surfacing the small set of recurring failure modes that drive most returned vouchers and improper payments. ^[2026-04-25-dts-ao-radar-public-research.md]

For workflow design, the source material supports a pre-approval assistance model in which software flags questionable receipts, highlights amount mismatches, and surfaces missing evidence for human review, without approving or rejecting the voucher itself. That framing aligns with [[AI-assisted spec with human review]] and with the broader use case of [[Back-office military workflow use cases]]. ^[2026-04-25-dts-ao-radar-public-research.md]

## Sources

- [2026-04-25-dts-ao-radar-public-research.md]
