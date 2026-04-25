---
title: DTS policy linting for travel vouchers
summary: An assistant can preflight vouchers against JTR, per-diem, lodging tax, date/location, and entitlement rules to flag likely policy issues before submission.
sources:
  - 2026-04-25-dts-ao-radar-research-synthesis.md
createdAt: "2026-04-25T18:38:51.521Z"
updatedAt: "2026-04-25T18:38:51.521Z"
tags:
  - dts
  - policy-compliance
  - travel
aliases:
  - dts-policy-linting-for-travel-vouchers
  - DPLFTV
---

# DTS policy linting for travel vouchers

DTS policy linting for travel vouchers is the use of software to pre-approve travel vouchers by checking them against known DTS and travel-policy rules, surfacing likely documentation gaps, policy-risk indicators, and missing evidence for a human Approving Official (AO). In the public research, this kind of assistant is positioned as a pre-decision triage tool for current DTS, not as a system that approves, denies, certifies, signs, submits, or amends vouchers. It is meant to reduce AO workload while preserving human review and the AO’s personal responsibility. ^[2026-04-25-dts-ao-radar-research-synthesis.md]

The need for policy linting comes from the structure of the AO role itself. Public DTMO guidance describes AOs as responsible for verifying travel necessity, expenses, receipts, trip dates, locations, pre-audit flags, reason codes, advisories, and document validity, while recommending a standardized checklist to reduce mistakes and oversights. The AO is also treated as a Certifying Officer with personal pecuniary liability, which makes voucher review a high-stakes additional duty rather than a clerical task. ^[2026-04-25-dts-ao-radar-public-research.md, 2026-04-25-dts-ao-radar-research-synthesis.md]

A policy-linting workflow is especially useful because the same few error patterns recur across services. Public guidance and oversight materials repeatedly cite missing, invalid, or inadequate receipts; amount mismatches between claimed expenses and supporting documents; duplicate expenses; weak or absent justification text; date or location mismatches with orders; and incomplete DD Form 1351-2 or signature paths. The research synthesis also notes that more than 70% of improper DTS payments are due to inadequate or invalid receipts, and that one service-level “Big Six” policy says six error categories account for most returns. ^[2026-04-25-dts-ao-radar-public-research.md, 2026-04-25-dts-ao-radar-research-synthesis.md]

The linting concept fits a broader [[AI-assisted spec with human review]] pattern: software can classify the request, retrieve approved references, identify missing fields, and generate a structured draft, but a human reviewer must check and approve the result. For DTS vouchers, that means the assistant can highlight likely issues and show evidence, but it must not determine entitlement, accuse fraud, or overwrite justification text. Related concepts include [[Controlled Reference Retrieval]], [[Citations and missing-field visibility]], and [[Back-office military workflow use cases]]. ^[2026-04-24-hackathon-operating-context.md, 2026-04-24-genai-mil-concept-seed.md, 2026-04-25-dts-ao-radar-research-synthesis.md]

A practical linting system for travel vouchers would therefore focus on pre-approval triage. The research synthesis identifies several useful checks: receipt presence and validity, amount-versus-receipt reconciliation, justification-quality scoring, date and location coherence with orders, per-diem and lodging-tax rule checks, duplicate-expense detection, DD 1351-2 and NDEA-path validation, and GTCC split-disbursement coherence. The intended output is a ranked queue of vouchers with explanation panels that link each flag to the relevant policy text and a human-review prompt. ^[2026-04-25-dts-ao-radar-research-synthesis.md]

This approach is best understood as a companion to existing controls, not a replacement for them. The research synthesis notes that the DTMO Travel Policy Compliance Tool runs post-approval and has documented blind spots, including inability to identify missing or invalid receipts and receipt-to-amount mismatches. Policy linting tries to catch those issues earlier, before the AO applies the APPROVED stamp and before the post-approval correction loop begins. ^[2026-04-25-dts-ao-radar-research-synthesis.md, 2026-04-25-dts-ao-radar-public-research.md]

Because component rules vary, a useful linting implementation must be configurable rather than hard-coded to one service’s guidance. The public record includes Navy checklist mandates, Air Force Reserve HQ RIO “Big Six” guidance, and local Marine Corps and National Guard policies, all of which reinforce the same general review structure but differ in the details. That makes [[Controlled Reference Retrieval]] and source-linked explanations especially important. ^[2026-04-25-dts-ao-radar-public-research.md, 2026-04-25-dts-ao-radar-research-synthesis.md]

## Sources

- [2026-04-25-dts-ao-radar-public-research.md]
- [2026-04-25-dts-ao-radar-research-synthesis.md]
- [2026-04-24-hackathon-operating-context.md]
- [2026-04-24-genai-mil-concept-seed.md]
