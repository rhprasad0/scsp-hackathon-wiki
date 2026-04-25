---
title: AO Radar as pre-decision voucher risk triage
summary: The practitioner feedback supports a voucher assistant that ranks risky packets, highlights missing evidence, and drafts reviewer return comments before the AO makes a decision.
sources:
  - 2026-04-25-dts-practitioner-response-batch-1.md
createdAt: "2026-04-25T20:02:08.281Z"
updatedAt: "2026-04-25T20:02:08.281Z"
tags:
  - dts
  - ai-assistant
  - triage
aliases:
  - ao-radar-as-pre-decision-voucher-risk-triage
  - ARAPVRT
---

# AO Radar as pre-decision voucher risk triage

AO Radar as pre-decision voucher risk triage is a workflow pattern for helping an Approving Official assess DTS voucher risk before making a human decision. In this framing, the tool does not approve or deny vouchers; instead, it surfaces likely problem areas, packages supporting evidence, and highlights missing or inconsistent information so the AO can review faster and with better visibility into risk. The concept fits the broader [[AO checklist-driven voucher review]] pattern and supports an [[AI-assisted spec with human review]] approach. ^[2026-04-25-dts-practitioner-response-batch-1.md, 2026-04-25-dts-ao-radar-public-research.md, 2026-04-24-hackathon-operating-context.md]

The triage function is aimed at the kinds of packets that are hardest to review quickly: those with missing receipts, unclear line of accounting or funding source, weak paperwork, odd amounts, date mismatches, duplicate charges, or transactions that require reconstruction from partial memory. The practitioner note describes DTS review as an audit-like process in which each expense must be tied to category, amount, purpose, and evidence, while public guidance shows AOs repeatedly returning vouchers for missing or invalid receipts, amount mismatches, duplicate expenses, and weak justification text. ^[2026-04-25-dts-practitioner-response-batch-1.md, 2026-04-25-dts-ao-radar-public-research.md]

A useful AO Radar pre-decision view would therefore prioritize checks such as receipt presence and quality, amount reconciliation, date and trip coherence, duplicate or suspicious pattern detection, funding ambiguity, cash or exchange-rate reconstruction, and return-comment drafting support. These checks align with the recurring service-level return reasons documented in Navy, Air Force Reserve/HQ RIO, Marine Corps, and DTMO-oriented guidance, where standardized checklists are used to reduce mistakes and surface the small set of failure modes that drive most returns. ^[2026-04-25-dts-practitioner-response-batch-1.md, 2026-04-25-dts-ao-radar-public-research.md]

The intended trust boundary is clear: AO Radar can flag likely review risks, package evidence, identify uncertainty, and suggest what the traveler or reviewer needs to fix, but it must not approve, deny, certify, or decide entitlement. The human AO remains responsible for final signoff, consistent with the checklist-based review model and the wider [[AI-assisted spec with human review]] operating rule. ^[2026-04-25-dts-practitioner-response-batch-1.md, 2026-04-25-dts-ao-radar-public-research.md, 2026-04-24-genai-mil-concept-seed.md]

This makes AO Radar a good fit for the [[Administrative trenches as the GenAI.mil problem frame]]: a back-office military workflow with high repetition, clear evidence needs, and believable user pain. It is especially compatible with a [[Scoped Prototype Wedge]] approach because the work can be bounded to one workflow, one user role, and one concrete output: a review-ready triage summary that supports human decision-making without replacing it. ^[2026-04-25-dts-practitioner-response-batch-1.md, 2026-04-25-genai-mil-challenge-prompt-and-rubric.md, 2026-04-25-dts-ao-radar-public-research.md]

## What AO Radar should surface

- Receipt presence and quality
- Amount reconciliation against receipts, card transactions, exchange-rate math, or local paperwork
- Date and trip coherence
- Duplicate or repeated charges
- Line of accounting or funding ambiguity
- Cash, ATM, currency exchange, and local-paperwork cases needing human scrutiny
- Concise return-comment language when the packet lacks key evidence or coherence ^[2026-04-25-dts-practitioner-response-batch-1.md]

## Why this is pre-decision triage

AO review is not just a clerical pass-through. Public guidance shows that AOs are expected to check trip dates and locations, travel mode, receipts, pre-audit flags, reason codes, advisories, document validity, and mission appropriateness before approving or returning a voucher. AO Radar supports that pre-decision phase by turning a messy packet into a structured risk picture, but the authority to approve or return remains with the human reviewer. ^[2026-04-25-dts-ao-radar-public-research.md]

## Notes for implementation

The source material suggests a design that is evidence-backed, reviewable, and narrow in scope. A practical AO Radar output should make the basis of each flag visible, preserve uncertainty, and avoid inventing operational facts. It should also be suitable for public-safe or sanitized export if used in a shared workflow. ^[2026-04-24-hackathon-operating-context.md, 2026-04-24-genai-mil-concept-seed.md]

## Sources

- [2026-04-25-dts-practitioner-response-batch-1.md]
- [2026-04-25-dts-ao-radar-public-research.md]
- [2026-04-24-hackathon-operating-context.md]
- [2026-04-24-genai-mil-concept-seed.md]
- [2026-04-25-genai-mil-challenge-prompt-and-rubric.md]
