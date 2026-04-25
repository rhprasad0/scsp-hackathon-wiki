---
title: TDY voucher pre-flight checker
summary: A JTR-grounded assistant that lint-checks travel authorizations and vouchers before submission to catch common rejection causes such as missing receipts, entitlement mismatches, and bad line-of-accounting entries.
sources:
  - 2026-04-25-genai-mil-deep-research-synthesis.md
createdAt: "2026-04-25T16:28:33.155Z"
updatedAt: "2026-04-25T16:28:33.155Z"
tags:
  - travel
  - dts
  - compliance
aliases:
  - tdy-voucher-pre-flight-checker
  - TVPC
---

# TDY voucher pre-flight checker

A TDY voucher pre-flight checker is a [[Back-office military workflow use cases|back-office]] assistant concept for travelers and DTS reviewers that checks a draft temporary duty voucher before submission and flags common causes of rejection. The source material describes it as a JTR-grounded pre-submission lint for a TDY authorization or voucher, intended to catch issues before the traveler clicks submit. ^[2026-04-25-genai-mil-deep-research-synthesis.md]

The intended users are DoD travelers, with secondary value for authorizing officials and unit DTS representatives. The checker’s output is a structured pre-flight report tied to the user’s draft itinerary or draft voucher, with citations to the relevant Joint Travel Regulations and per diem references. ^[2026-04-25-genai-mil-deep-research-synthesis.md]

Common issues the checker should flag include missing pay orders, mismatched lodging entitlement, wrong line of accounting, missing receipts, flat-rate per diem applicability, and the 181-day rule for long-term TDY. The source material frames these as frequent voucher-kick causes that can be caught before submission. ^[2026-04-25-genai-mil-deep-research-synthesis.md]

The suggested reference base is the monthly Joint Travel Regulations PDF, the GSA Per Diem API, and common return-reasons checklists. The workflow is meant to be human-reviewed: the traveler files in DTS, the AO reviews and approves, and the AI never books or files on the user’s behalf. ^[2026-04-25-genai-mil-deep-research-synthesis.md]

This concept fits the broader [[Administrative trenches as the GenAI.mil problem frame]] and [[Back-office military workflow use cases]] pattern: a narrowly scoped administrative workflow, a clear artifact, and visible trust boundaries. Its value proposition is to reduce voucher rejections and rework in a measurable way. ^[2026-04-25-genai-mil-deep-research-synthesis.md]

## Sources

- [2026-04-25-genai-mil-deep-research-synthesis.md]
