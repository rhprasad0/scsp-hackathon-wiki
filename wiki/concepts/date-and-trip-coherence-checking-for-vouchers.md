---
title: Date and trip-coherence checking for vouchers
summary: Reviewers look for missing, overlapping, or travel-misaligned dates as a key indicator that a DTS packet may need correction or return.
sources:
  - 2026-04-25-dts-practitioner-response-batch-1.md
createdAt: "2026-04-25T20:02:01.926Z"
updatedAt: "2026-04-25T20:02:01.926Z"
tags:
  - dts
  - validation
  - travel-policy
aliases:
  - date-and-trip-coherence-checking-for-vouchers
  - trip-coherence checking for vouchers and Date
  - DATCFV
---

# Date and trip-coherence checking for vouchers

Date and trip-coherence checking for vouchers is the review step that verifies whether voucher entries line up with the underlying travel record. In the source material, this means checking that expense dates align with travel dates or orders, that locations match, and that the voucher forms a coherent travel story rather than containing missing, overlapping, or inconsistent details. This kind of check is treated as a key risk signal in DTS voucher review, especially when dates are absent, repeated, or otherwise hard to reconcile. ^[2026-04-25-dts-practitioner-response-batch-1.md]

The public DTS guidance also treats date and location consistency as a standard approval concern. Approving Officials are expected to check trip dates and locations before approving a voucher, and recurring return reasons include date or location mismatches between the voucher and the underlying orders. In service-level examples, this is part of a broader checklist that covers mission fit, receipts, and document validity. ^[2026-04-25-dts-ao-radar-public-research.md]

Practitioner notes suggest that date-coherence review is not just a clerical match. The harder problem is reconstructing a complete and plausible sequence of travel-related transactions from incomplete memories, partial receipts, and messy vendor documentation. That makes date checking part of a larger [[voucher risk triage]] process where the reviewer asks whether the packet explains itself well enough for an accountable human decision. ^[2026-04-25-dts-practitioner-response-batch-1.md]

Common warning signs include missing dates, overlapping entries, inconsistent details, strange numbers that do not fit expected patterns, and multiple charges where one would normally be expected. The practitioner note also flags travel involving cash, ATM withdrawals, exchange rates, or local paperwork as situations that often need extra scrutiny because the timeline and amount trail can be harder to reconstruct. ^[2026-04-25-dts-practitioner-response-batch-1.md]

For an AI-assisted workflow, the useful role is to surface likely coherence problems, not to decide entitlement. A supporting tool can highlight date gaps, trip/order mismatches, overlapping transactions, and other suspicious patterns, then draft a concise return comment or reviewer note for human approval. This fits the broader pattern of [[AI-assisted spec with human review]] and [[AO checklist-driven voucher review]]. ^[2026-04-25-dts-practitioner-response-batch-1.md, 2026-04-25-dts-ao-radar-public-research.md]

## What to check

- Do expense dates fall within the travel dates or orders?
- Do locations match the trip and the underlying documentation?
- Are there missing dates or unexplained gaps?
- Are there overlapping, duplicate, or inconsistent entries?
- Do the dates make sense alongside receipts, card transactions, and any local paperwork?
- Are there special cases, such as cash, exchange-rate math, or weak vendor records, that need human follow-up? ^[2026-04-25-dts-practitioner-response-batch-1.md]

## Common coherence problems

- Date or location mismatches between the voucher and the orders
- Missing dates
- Overlapping or inconsistent details
- Multiple charges where one is expected
- Transactions that cannot be tied cleanly to the travel window
- Cases that depend on reconstruction from memory, partial receipts, or local paperwork ^[2026-04-25-dts-practitioner-response-batch-1.md, 2026-04-25-dts-ao-radar-public-research.md]

## Why it matters

Date and trip-coherence checking reduces review risk by helping the AO confirm that the voucher is internally consistent and consistent with the travel authorization or orders. It supports the broader checklist-driven approval process by making it easier to spot packets that need correction, further evidence, or a return for clarification. ^[2026-04-25-dts-ao-radar-public-research.md, 2026-04-25-dts-practitioner-response-batch-1.md]

Related concepts include [[AO checklist-driven voucher review]], [[AO checklist mandate and recurring service-level return reasons]], [[Controlled Reference Retrieval]], and [[AI-assisted spec with human review]]. ^[2026-04-25-dts-ao-radar-public-research.md, 2026-04-25-dts-practitioner-response-batch-1.md]

## Sources

- [2026-04-25-dts-practitioner-response-batch-1.md]
- [2026-04-25-dts-ao-radar-public-research.md]
