---
title: Travel Policy Compliance Tool (TPCT) limitations
summary: DTMO’s mandatory TPCT catches some duplicate and arithmetic issues, but oversight reports say it cannot detect missing documentation or amount-vs-receipt mismatches, leaving major blind spots in voucher review.
sources:
  - 2026-04-25-dts-ao-radar-public-research.md
createdAt: "2026-04-25T18:38:36.885Z"
updatedAt: "2026-04-25T18:38:36.885Z"
tags:
  - tpct
  - automation
  - compliance
  - blind-spots
aliases:
  - travel-policy-compliance-tool-tpct-limitations
  - TPCT(L
---

# Travel Policy Compliance Tool (TPCT) limitations

The Travel Policy Compliance Tool (TPCT) is a mandatory, automated review application that scans Defense Travel System vouchers in near real time and emails the traveler, NDEA if applicable, and the approving AO when it detects a potential error. DTMO describes it as a compliance aid, not an audit program, and says it does not replace DFAS post-payment review. It is intended to help catch errors before they surface in audit processes. ^[2026-04-25-dts-ao-radar-public-research.md]

A key limitation is scope: TPCT is documented as being able to identify duplicate and incorrect payments, but not missing documentation or cases where receipts do not agree with claimed amounts. DODIG-2016-060 explicitly notes that the tool could identify duplicate vouchers, but could not identify vouchers missing appropriate documentation or receipts that did not match the amounts claimed. ^[2026-04-25-dts-ao-radar-public-research.md]

This matters because the dominant improper-payment pattern in DTS is receipt-related. DTMO states that more than 70% of improper payments are due to inadequate or invalid receipts, including missing lodging, rental car, or airfare receipts. In other words, TPCT is limited in precisely the area where the largest share of voucher errors occurs. ^[2026-04-25-dts-ao-radar-public-research.md]

TPCT also operates after approval and relies on an email-based correction loop. When it finds a potential issue, it keeps sending reminder emails until the user corrects the error or provides justification. The process therefore supports remediation, but it does not replace the AO’s pre-approval review or remove the need for human judgment. ^[2026-04-25-dts-ao-radar-public-research.md]

For AI-assisted workflow design, TPCT’s limitations mean any [[Controlled Reference Retrieval]] or [[AI-assisted spec with human review]] solution should treat TPCT as a downstream compliance signal, not as a full voucher-quality checker. A useful assistant may still help surface missing receipts, amount mismatches, and documentation gaps before approval, but it must preserve the AO’s role and review boundary. ^[2026-04-25-dts-ao-radar-public-research.md]

## Related concepts

- [[Controlled Reference Retrieval]]
- [[AI-assisted spec with human review]]
- [[Administrative trenches as the GenAI.mil problem frame]]
- [[Back-office military workflow examples]]
- [[Citations and missing-field visibility]]

## Sources

- [2026-04-25-dts-ao-radar-public-research.md]
