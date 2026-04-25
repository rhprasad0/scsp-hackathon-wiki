---
title: TDY itinerary pre-flight and voucher linting
summary: A travel assistant checks draft TDY itineraries and vouchers against the JTR, per-diem rules, and common rejection causes before submission.
sources:
  - 2026-04-25-genai-mil-user-workflows-and-trust-boundaries.md
createdAt: "2026-04-25T17:07:51.999Z"
updatedAt: "2026-04-25T17:07:51.999Z"
tags:
  - travel
  - jtr
  - validation
aliases:
  - tdy-itinerary-pre-flight-and-voucher-linting
  - voucher linting and TDY itinerary pre-flight
  - TIPAVL
---

# TDY itinerary pre-flight and voucher linting

TDY itinerary pre-flight and voucher linting is a retrieval-grounded workflow for checking a draft travel itinerary and a draft voucher before submission. The goal is to help a traveler catch likely policy violations, missing documents, mismatched entitlements, and other common return reasons early, while keeping the final booking and voucher actions inside [[Defense Travel System (DTS)]] and under human control. ^[2026-04-25-genai-mil-user-workflows-and-trust-boundaries.md]

In the source material, the pre-flight side means reviewing a traveler’s draft itinerary—location, dates, lodging, transportation, per diem, and incidental expenses—against the [[Joint Travel Regulations (JTR)]] and GSA per-diem rates. The voucher-linting side means scanning a draft voucher for the most common rejection causes before the traveler clicks submit, such as missing pay orders, missing airline-ticket receipts, mismatched lodging entitlement, or a wrong line of accounting. ^[2026-04-25-genai-mil-user-workflows-and-trust-boundaries.md]

The intended output is a reviewable fix list with paragraph-level citations, not an automated travel decision. The source material emphasizes that the AI should never book travel, finalize a voucher, or override command constraints; those actions remain with the traveler and the Authorizing Official in DTS. ^[2026-04-25-genai-mil-user-workflows-and-trust-boundaries.md]

This workflow is framed as a narrow administrative wedge: it uses public, unclassified references to reduce friction in a routine back-office process, and it favors explicit trust boundaries over broad automation. Related concepts include [[Back-office military workflow use cases]], [[Controlled Reference Retrieval]], [[AI-assisted spec with human review]], and [[Citations and missing-field visibility]]. ^[2026-04-25-genai-mil-user-workflows-and-trust-boundaries.md]

## Common checks

- Compare the draft itinerary against the JTR for the relevant travel type.
- Pull the applicable GSA per-diem rate for the destination and date.
- Flag lodging that appears above the per-diem cap.
- Check ground transportation, M&IE, and incidental expense handling.
- Scan the draft voucher for likely return reasons before submission.
- Surface missing orders, missing receipts, mismatched lodging entitlement, and LOA issues.
- Show the basis for each flag with a citation. ^[2026-04-25-genai-mil-user-workflows-and-trust-boundaries.md]

## Trust boundaries

- The AI does not book travel.
- The AI does not finalize vouchers.
- The AI does not claim a per-diem rate without a GSA or JTR citation.
- The AI does not override command guidance.
- The human traveler and Authorizing Official remain responsible for submission and approval. ^[2026-04-25-genai-mil-user-workflows-and-trust-boundaries.md]

## Sources

- [2026-04-25-genai-mil-user-workflows-and-trust-boundaries.md]
