---
title: TPCT post-approval blind spot
summary: The existing Travel Policy Compliance Tool runs after approval and is documented as missing certain receipt-related errors, creating an opportunity for pre-approval triage.
sources:
  - 2026-04-25-dts-ao-radar-research-synthesis.md
createdAt: "2026-04-25T18:38:49.652Z"
updatedAt: "2026-04-25T18:38:49.652Z"
tags:
  - dts
  - audit
  - tooling-gap
aliases:
  - tpct-post-approval-blind-spot
  - TPBS
---

# TPCT post-approval blind spot

The **TPCT post-approval blind spot** refers to a limitation in the DTMO Travel Policy Compliance Tool (TPCT): it operates after a voucher has already been approved, and it does not reliably identify missing or invalid receipts or amount-vs-receipt mismatches. In the source material, this gap is described as the wedge for a pre-approval assistant, because the same issues can otherwise move into a 15-day correction loop after the approving official has already signed. ^[2026-04-25-dts-ao-radar-research-synthesis.md]

This blind spot matters because TPCT is part of the post-approval compliance process rather than the approval decision itself. The tool scans vouchers in near real time after approval, emails the traveler, NDEA, and AO when it flags a potential issue, and allows 15 days to amend before escalation to the component Senior Accountable Official. The source material positions this as a second-round workflow that lands back on the AO, creating rework that a pre-approval triage layer could reduce. ^[2026-04-25-dts-ao-radar-research-synthesis.md]

The practical implication is that an AO can still approve a voucher with receipt problems or receipt-to-claim mismatches, only for those issues to surface later through post-approval compliance. Related concepts include [[AO Radar pre-approval triage queue]], [[AI-assisted spec with human review]], and [[Administrative trenches as the GenAI.mil problem frame]]. ^[2026-04-25-dts-ao-radar-research-synthesis.md]

## Sources

- [2026-04-25-dts-ao-radar-research-synthesis.md]
