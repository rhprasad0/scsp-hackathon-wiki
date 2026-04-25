---
title: DTS pre-flight and voucher linting
summary: A travel assistant that checks itineraries and vouchers against the Joint Travel Regulations and per-diem rules to catch common rejection causes before submission.
sources:
  - 2026-04-25-genai-mil-user-workflows-and-trust-boundaries.md
createdAt: "2026-04-25T16:28:55.091Z"
updatedAt: "2026-04-25T16:28:55.091Z"
tags:
  - travel
  - jtr
  - compliance
aliases:
  - dts-pre-flight-and-voucher-linting
  - voucher linting and DTS pre-flight
  - DPAVL
---

# DTS pre-flight and voucher linting

DTS pre-flight and voucher linting is a workflow for reviewing a draft Defense Travel System [[DTS]] authorization or voucher before submission. In the source material, it is presented as an AI-assisted check that uses the Joint Travel Regulations and relevant per-diem information to flag likely policy violations, missing artifacts, and common rejection causes early, while leaving final booking and submission to the traveler and Authorizing Official. ^[2026-04-25-genai-mil-user-workflows-and-trust-boundaries.md]

The pre-flight side focuses on planned travel details such as location, dates, lodging, transportation, and entitlements. The workflow should pull the applicable GSA per-diem rates for the ZIP and date, apply the relevant JTR rules for the travel type, and explain any violations in plain English with paragraph-level citations. This is meant to surface issues before the traveler finalizes an authorization. ^[2026-04-25-genai-mil-user-workflows-and-trust-boundaries.md]

The voucher linting side checks a draft voucher for common return reasons before the traveler clicks submit. The source material identifies missing pay orders, missing airline-ticket receipts, mismatched lodging entitlement versus lodging receipts, and wrong line of accounting as dominant rejection causes. A linting pass should produce a fix list so the user can correct the draft first. ^[2026-04-25-genai-mil-user-workflows-and-trust-boundaries.md]

A suitable implementation is intentionally narrow: it should not book travel, finalize a voucher, or override command constraints. Instead, it should act as a review tool that cites the underlying JTR section number and per-diem rate source, while preserving human control inside DTS. This fits the broader [[AI-assisted spec with human review]] and [[Back-office military workflow use cases]] pattern. ^[2026-04-25-genai-mil-user-workflows-and-trust-boundaries.md]

The trust posture is central. The source material says the AI never claims a per-diem rate without a GSA or JTR citation, never finalizes a voucher, and never automates submission to official systems. In this framing, the system’s job is to pre-flight, lint, and explain; the human’s job is to decide, submit, and approve. Related concepts include [[Controlled Reference Retrieval]], [[Citations and missing-field visibility]], and [[Human-in-the-Loop Review and Approval]]. ^[2026-04-25-genai-mil-user-workflows-and-trust-boundaries.md]

## Sources

- [2026-04-25-genai-mil-user-workflows-and-trust-boundaries.md]
