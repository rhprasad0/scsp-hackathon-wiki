---
title: TDY pre-flight linting for vouchers and itineraries
summary: A fallback workflow assistant that checks travel authorizations and vouchers against JTR and per-diem guidance to catch common errors before submission, without integrating into official systems.
sources:
  - 2026-04-25-codex-attack-on-genai-mil-research.md
createdAt: "2026-04-25T17:07:18.707Z"
updatedAt: "2026-04-25T17:07:18.707Z"
tags:
  - travel
  - compliance
  - military-ai
aliases:
  - tdy-pre-flight-linting-for-vouchers-and-itineraries
  - itineraries and TDY pre-flight linting for vouchers
  - TPLFVAI
---

# TDY pre-flight linting for vouchers and itineraries

TDY pre-flight linting for vouchers and itineraries is a narrowly scoped administrative workflow for checking travel materials before submission or execution. In the source material, it is described as a plausible back-office wedge because TDY process friction has strong public evidence, even though the cleanest numbers are old or locally scoped. The idea is to catch issues early by generating a review-ready travel artifact and flagging unresolved fields, rather than pretending to integrate directly with official systems. ^[2026-04-25-codex-attack-on-genai-mil-research.md]

The recommended shape is a synthetic-data, public-source assistant that takes a plain-English travel request and produces a reviewable result with a cited rationale, a list of missing fields, and a refusal or critique panel when the inputs are insufficient. The source material specifically frames this as a fallback wedge if a leave-form assistant is not the right fit, and notes that the workflow should be grounded in the [[Joint Travel Regulations]] and GSA per diem information where appropriate. ^[2026-04-25-codex-attack-on-genai-mil-research.md]

The workflow’s trust boundary is explicit: it should not accept PII, LES uploads, signatures, or official submission responsibility, and it should not invent leave balances or other authoritative facts. It is meant to support human review, not replace it, and should remain review-ready rather than submission-ready. Related concepts include [[AI-assisted spec with human review]], [[Controlled Reference Retrieval]], [[Citations and missing-field visibility]], and [[Back-office military workflow use cases]]. ^[2026-04-25-codex-attack-on-genai-mil-research.md]

A useful technical implementation is a small retrieval layer over a packaged corpus, paragraph-level citation, structured form mapping, missing-field validation, and a tiny held-out evaluation set. The source material also cautions that “offline” should be treated carefully: if local inference is not reliable, the safer claim is “local corpus/no live retrieval” rather than overstating a fully offline system. ^[2026-04-25-codex-attack-on-genai-mil-research.md]

This wedge is attractive because it has one persona, one concrete artifact, and a visible before/after state, but it also carries scope risks. The source material notes that TDY pre-flight checking has the strongest public evidence of process friction in the batch, while the exact current pain level, voucher rejection rates, and DoD-wide relevance are not firmly established. Related concepts include [[Administrative trenches as the GenAI.mil problem frame]] and [[Back-office military workflow use cases]]. ^[2026-04-25-codex-attack-on-genai-mil-research.md]

## Sources

- [2026-04-25-codex-attack-on-genai-mil-research.md]
