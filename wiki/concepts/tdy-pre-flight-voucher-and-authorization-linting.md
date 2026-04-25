---
title: TDY pre-flight voucher and authorization linting
summary: A JTR-grounded checker can preflight TDY authorizations and vouchers, flagging common rejection causes like missing receipts, mismatched entitlements, and bad line-of-accounting entries before submission.
sources:
  - 2026-04-25-genai-mil-deep-research-synthesis.md
createdAt: "2026-04-25T17:07:38.194Z"
updatedAt: "2026-04-25T17:07:38.194Z"
tags:
  - tdy
  - dts
  - jtr
  - linting
aliases:
  - tdy-pre-flight-voucher-and-authorization-linting
  - authorization linting and TDY pre-flight voucher
  - TPVAAL
---

# TDY pre-flight voucher and authorization linting

TDY pre-flight voucher and authorization linting is a [[Back-office military workflow examples|back-office]] assistant pattern that checks a draft TDY authorization or voucher before submission. Its purpose is to flag likely defects early so the traveler can correct them before filing in DTS, while keeping the final approval path with the traveler and authorizing official. The workflow is grounded in public references such as the Joint Travel Regulations and GSA per diem data, and it is framed as a pre-submission report rather than a live system integration. ^[2026-04-25-genai-mil-deep-research-synthesis.md, 2026-04-25-genai-mil-challenge-prompt-and-rubric.md]

The core idea is to turn a draft itinerary or draft voucher into a structured lint report keyed to the relevant travel rules. In the source material, the most common checks include missing pay orders, mismatched lodging entitlement, wrong line of accounting, missing receipts, flat-rate per diem applicability, and the 181-day rule for long-term TDY. The output is intended to include JTR section references and GSA per diem citations where applicable. ^[2026-04-25-genai-mil-deep-research-synthesis.md]

This workflow fits the broader GenAI.mil emphasis on narrowly scoped administrative work rather than a generic copilot. The source material treats TDY pre-flight checking as one of several example administrative wedges alongside regulation navigation, leave form drafting, and contract intelligence, and recommends starting with accurate retrieval over a small corpus before layering on more advanced structure or planning. ^[2026-04-25-genai-mil-challenge-prompt-and-rubric.md, 2026-04-25-genai-mil-deep-research-synthesis.md]

A useful implementation posture is retrieval-grounded and human-reviewed: the assistant may classify the request, retrieve approved references, identify missing fields, and generate a structured draft, but it should not approve, autonomously submit, or bypass review. The source material also emphasizes visible trust boundaries, with users able to see sources, assumptions, unresolved fields, uncertainty, and review status before any export or submission. Related concepts include [[Controlled Reference Retrieval]], [[AI-assisted spec with human review]], and [[Citations and missing-field visibility]]. ^[2026-04-24-hackathon-operating-context.md, 2026-04-24-genai-mil-concept-seed.md]

The strongest framing in the source material is a JTR-grounded pre-submission lint for DTS authorizations and vouchers, scoped as a report rather than a live DTS action. The notes describe this as measurable in synthetic cases by fewer pre-submission defects, with the caveat that a DTS sandbox is not assumed and the demo should remain limited to the linting report itself. Related concepts include [[Administrative trenches as the GenAI.mil problem frame]] and [[Human-in-the-Loop Review and Approval]]. ^[2026-04-25-genai-mil-deep-research-synthesis.md]

## Sources

- [2026-04-25-genai-mil-deep-research-synthesis.md]
- [2026-04-25-genai-mil-challenge-prompt-and-rubric.md]
- [2026-04-24-hackathon-operating-context.md]
- [2026-04-24-genai-mil-concept-seed.md]
