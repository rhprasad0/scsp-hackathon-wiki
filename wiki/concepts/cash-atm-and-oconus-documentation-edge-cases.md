---
title: Cash, ATM, and OCONUS documentation edge cases
summary: Cash payments, ATM withdrawals, exchange rates, and third-country vendor receipts create special reconstruction and evidence-matching challenges.
sources:
  - 2026-04-25-dts-practitioner-response-batch-1.md
createdAt: "2026-04-25T20:02:05.044Z"
updatedAt: "2026-04-25T20:02:05.044Z"
tags:
  - dts
  - oconus
  - documentation
aliases:
  - cash-atm-and-oconus-documentation-edge-cases
  - OCONUS documentation edge cases and Cash, ATM,
  - CAAODEC
---

# Cash, ATM, and OCONUS documentation edge cases

Cash, ATM withdrawals, exchange rates, and local-paperwork cases are recurring edge cases in DTS-style voucher review because they often appear when card payment was not possible and standard digital receipts are weaker or missing. The practitioner note describes these transactions as reviewer risk signals, especially when they involve hand-calculated currency conversions, local receipts that must reconcile to the correct balance, or third-country vendor contexts with sparse documentation. In OCONUS or austere vendor environments, the absence of clean digital receipts is not always traveler negligence, but it still creates reconstruction burden for the reviewer. ^[2026-04-25-dts-practitioner-response-batch-1.md]

These cases are hard because the review is not just about checking whether a receipt exists. The packet has to explain a coherent financial story: what was bought, when it was bought, which funds or account should cover it, and how the amount maps to card activity, cash withdrawals, or exchange-rate math. The practitioner note frames this as an audit-like reconstruction problem, where the reviewer must reconcile messy transactions, incomplete receipts, memory gaps, and funding constraints. ^[2026-04-25-dts-practitioner-response-batch-1.md]

For triage, the source material suggests treating cash and ATM activity as a flag for closer human review rather than an automatic rejection. Useful checks include whether the expense date aligns with travel dates, whether the amount matches receipts or local paperwork, whether exchange-rate math is internally consistent, and whether the packet shows unusual patterns such as duplicate charges, strange numbers, or overlapping details. These cases are especially worth surfacing when a traveler had to rely on local paperwork because standard vendor documentation was unavailable. ^[2026-04-25-dts-practitioner-response-batch-1.md]

An AI assistant in this space should support [[AI-assisted spec with human review]] by flagging likely review risks, packaging evidence, identifying missing or inconsistent information, and drafting concise return comments when needed. It should not approve, deny, or determine entitlement. For OCONUS documentation edge cases, the safest role is to highlight uncertainty and help the human reviewer focus on amount reconciliation, source-of-funds clarity, and whether the packet is sufficiently self-explaining. ^[2026-04-25-dts-practitioner-response-batch-1.md]

Related concepts include [[AO checklist-driven voucher review]], [[Administrative trenches as the GenAI.mil problem frame]], and [[Back-office military workflow examples]]. ^[2026-04-25-dts-practitioner-response-batch-1.md]

## Sources

- [2026-04-25-dts-practitioner-response-batch-1.md]
