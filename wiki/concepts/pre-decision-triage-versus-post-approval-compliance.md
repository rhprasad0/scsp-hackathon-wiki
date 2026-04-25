---
title: Pre-decision triage versus post-approval compliance
summary: The recommended wedge is to help AOs before they approve a voucher, complementing tools like TPCT that operate after approval in the compliance loop.
sources:
  - 2026-04-25-dts-ao-radar-research-synthesis.md
createdAt: "2026-04-25T18:58:45.252Z"
updatedAt: "2026-04-25T18:58:45.252Z"
tags:
  - workflow
  - compliance
  - dts
aliases:
  - pre-decision-triage-versus-post-approval-compliance
  - PTVPC
---

# Pre-decision triage versus post-approval compliance

Pre-decision triage and post-approval compliance are two different control points in the DTS review workflow. Pre-decision triage happens before an Approving Official (AO) applies the APPROVED stamp and is aimed at helping the human reviewer quickly identify documentation gaps, weak justifications, receipt issues, and other policy-risk indicators. Post-approval compliance happens after approval, when the Travel Policy Compliance Tool (TPCT) scans vouchers in near real time, sends emails/reminders, and gives travelers a correction window before unresolved cases escalate. ^[2026-04-25-dts-ao-radar-research-synthesis.md]

In the source material, the pre-decision side is framed as an AO support function rather than an automation of the decision itself. The AO remains responsible for checking the voucher, tracing issues back to policy text, and deciding whether to approve or return the document. The proposed AI role is to package evidence, score risk, prioritize the queue, and surface likely problem areas without approving, denying, certifying, submitting, or amending anything. ^[2026-04-24-hackathon-operating-context.md, 2026-04-24-genai-mil-concept-seed.md, 2026-04-25-dts-ao-radar-research-synthesis.md]

Post-approval compliance is the after-the-fact control loop. TPCT is described as mandatory, near-real-time, and email-driven, with follow-up correction/reminder workflows that can create additional work for travelers, NDAEs, AOs, and compliance staff. It complements the AO’s review, but it is not the same as an up-front evidence review before payment approval. ^[2026-04-25-dts-ao-radar-research-synthesis.md]

The distinction matters because many recurring errors are visible before approval: missing or invalid receipts, amount mismatches, blank or boilerplate justifications, date or location mismatches, and other checklist failures. The public material describes standardized checklist-driven AO review as the human control surface for these issues, including service-level mandates that require meaningful justification and evidence checks. ^[2026-04-25-dts-ao-radar-public-research.md]

By contrast, post-approval compliance is designed to catch and remediate issues after the voucher has already passed through approval. In that model, the objective is not to help the AO decide in the moment, but to flag and route exceptions after payment-related action has occurred. The source material positions this as a separate control loop that feeds back into quarterly trend reporting and component-level compliance management. ^[2026-04-25-dts-ao-radar-research-synthesis.md]

A useful way to think about the relationship is that pre-decision triage supports [[AI-assisted spec with human review]] and [[AO checklist-driven voucher review]], while post-approval compliance belongs to the same broader [[Controlled Reference Retrieval]] and oversight ecosystem but operates later in time. The source material also suggests that a pre-decision assistant should be public-safe, synthetic-data only, and configured as a companion to current DTS rather than a replacement for it. ^[2026-04-24-hackathon-operating-context.md, 2026-04-24-genai-mil-concept-seed.md, 2026-04-25-dts-ao-radar-research-synthesis.md]

## Sources

- [2026-04-25-dts-ao-radar-research-synthesis.md]
- [2026-04-24-hackathon-operating-context.md]
- [2026-04-24-genai-mil-concept-seed.md]
- [2026-04-25-dts-ao-radar-public-research.md]
