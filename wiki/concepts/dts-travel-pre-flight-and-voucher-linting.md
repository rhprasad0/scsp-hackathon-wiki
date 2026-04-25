---
title: DTS travel pre-flight and voucher linting
summary: A travel-support workflow that checks itineraries and draft vouchers against JTR and per-diem rules to catch missing receipts, mismatched entitlements, and other common rejection causes before submission.
sources:
  - 2026-04-25-genai-mil-user-workflows-and-trust-boundaries.md
createdAt: "2026-04-25T16:15:05.401Z"
updatedAt: "2026-04-25T16:15:05.401Z"
tags:
  - travel
  - compliance
  - military
aliases:
  - dts-travel-pre-flight-and-voucher-linting
  - voucher linting and DTS travel pre-flight
  - DTPAVL
---

# DTS travel pre-flight and voucher linting

DTS travel pre-flight and voucher linting is a narrowly scoped [[back-office military workflow use cases|back-office]] concept for helping travelers prepare a Defense Travel System (DTS) authorization and later review a draft voucher before submission. The idea is to check a planned trip against the Joint Travel Regulations (JTR), GSA per-diem rules, and common return reasons so the traveler can catch likely policy violations, missing paperwork, and mismatched entitlements early. ^[2026-04-25-genai-mil-user-workflows-and-trust-boundaries.md]

In the source material, the pre-flight checker is described as taking a draft itinerary—location, dates, lodging, and transportation—and using the JTR plus the correct per-diem rate for the destination to flag problems and explain them in plain English with paragraph-level citations. The voucher linting mode is described as scanning a draft voucher for the most common rejection causes, including missing pay orders, missing airline-ticket receipts, mismatched lodging entitlement, and wrong line of accounting, then producing a fix list before the traveler clicks submit. ^[2026-04-25-genai-mil-user-workflows-and-trust-boundaries.md]

The trust posture is explicit: the AI never books travel, never finalizes a voucher, and never overrides command guidance. It should not claim a per-diem rate without a GSA or JTR citation, and it should surface constraints for the traveler and Authorizing Official rather than acting as the final decision-maker. This fits the broader rule that AI may draft, retrieve, cite, and pre-flight, but a human must approve and submit inside official systems such as DTS. ^[2026-04-25-genai-mil-user-workflows-and-trust-boundaries.md]

This use case is especially suitable for a [[Boring workflow, spicy mechanism]] approach: the workflow is familiar and practical, while the mechanism can be made technically interesting through retrieval, citations, policy compliance checks, self-review, and provenance tracking. It also aligns with [[Citations and missing-field visibility]] and [[AI-assisted spec with human review]], since the output is meant to be reviewable, grounded, and safe for human approval. ^[2026-04-25-genai-mil-user-workflows-and-trust-boundaries.md, 2026-04-25-organizer-judging-signal.md, 2026-04-24-genai-mil-concept-seed.md]

Related supporting context from the source material frames DTS as a long-standing friction point: GAO has reported voucher-rejection rates of roughly one in five and noted that service-level walkthroughs often find missing receipts, missing orders, mismatched lodging entitlements, and wrong accounting data as dominant rejection causes. The source also notes that the JTR is monthly updated and that travel entitlements can require careful cross-checking between policy and actual booking details. ^[2026-04-25-genai-mil-user-workflows-and-trust-boundaries.md]

Related concepts include [[Controlled Reference Retrieval]], [[Human-in-the-Loop Review and Approval]], [[Citations and missing-field visibility]], [[AI-assisted spec with human review]], and [[Boring workflow, spicy mechanism]]. ^[2026-04-25-genai-mil-user-workflows-and-trust-boundaries.md, 2026-04-25-organizer-judging-signal.md, 2026-04-24-genai-mil-concept-seed.md]

## Sources

- [2026-04-25-genai-mil-user-workflows-and-trust-boundaries.md]
- [2026-04-25-organizer-judging-signal.md]
- [2026-04-24-genai-mil-concept-seed.md]
