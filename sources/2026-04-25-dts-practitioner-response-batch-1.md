---
title: 2026 04 25 dts practitioner response batch 1
source: curated/2026-04-25-dts-practitioner-response-batch-1.md
ingestedAt: "2026-04-25T20:01:47.348Z"
---

---
title: DTS Practitioner Response Batch 1
date: 2026-04-25
type: curated-field-note
source: Discord response from hackathon participant with prior Army admin/DTS exposure
status: partial; more responses expected
privacy: private working note; anonymized and cleaned from noisy chat text
---

# DTS Practitioner Response Batch 1

## Context

A hackathon participant with prior U.S. Army administrative experience provided an initial written response about DTS and related travel/admin review workflows. This note captures the first batch only; additional answers are expected later.

The response is treated as practitioner color rather than official policy. It is useful for understanding the lived workflow, likely failure modes, and what an AI-assisted reviewer should flag before a human makes any decision.

## Cleaned practitioner observations

### Workflow shape

- The user opens a DTS file and reviews/logs each card swipe or purchase.
- Each expense must be entered with the amount paid, where it was paid, and a spending category such as travel or lodging.
- Each financial action needs documented evidence, usually receipts.
- The overall process feels like a forced audit of travel-related financial transactions.

### Common kickback / failure reasons

- Missing receipts.
- Bad or unclear line of accounting (LOA).
- Unclear funding source: the reviewer/traveler may not know which “pot of money” should pay for an expense.
- Purchases that are not justifiable or were never authorized.
- Travelers forgetting details or failing to connect transactions to evidence.
- Poor paperwork quality: clicking the wrong thing, weak attention to detail, bad math, missing receipts, or arguing for expenses they feel should be covered even when not authorized/justifiable.

### Delay and memory burden

- DTS submissions/vouchers are due within a short post-travel window, recalled by the participant as roughly 30 days after return.
- In practice, travelers may be reconstructing purchases from weeks or months earlier.
- They may need to search through many transactions using partial snippets and fuzzy memory.
- This is harder when vendors do not provide sophisticated receipts or automated email records.
- OCONUS / third-country vendor contexts can produce weaker documentation, which makes reconstruction and evidence matching harder.

### Reviewer risk signals / “tells”

The participant identified several things that make a packet look risky or messy before full review:

- High complexity.
- Missing dates.
- Overlapping or inconsistent details.
- Strange numbers that do not match expected patterns.
- Multiple charges where normally only one would be expected.
- Hotel costs that diverge from what the reviewer generally expects.
- Transactions involving cash, ATM withdrawals, exchange rates, or local paperwork because card payment was not possible.
- Hand-calculated currency conversions or local receipts that need to add up to the correct balance.

## Workflow implications

- The hard part is not just OCR or form filling; it is reconstructing a coherent financial story from messy transactions, incomplete receipts, memory, and policy/funding constraints.
- The packet review job is audit-like: each expense needs category, amount, purpose, supporting evidence, and plausible authorization/funding alignment.
- Missing or weak receipts remain a central pain point, but the broader issue is “does this packet explain itself well enough for an accountable reviewer?”
- OCONUS / austere vendor environments may need special handling because the absence of clean digital receipts is not always traveler negligence.

## Product implications for AO Radar / voucher risk triage

Strong candidate checks reinforced by this response:

1. **Receipt presence and quality check**
   - Is each expense supported by an attached receipt or acceptable substitute?
   - Is the receipt legible and tied to the right transaction?

2. **Amount reconciliation**
   - Do claimed amounts match receipts, card transactions, exchange-rate math, or local paperwork?
   - Are there strange numbers or unexplained deltas?

3. **Date and trip-coherence check**
   - Do expense dates align with travel dates/orders?
   - Are dates missing or overlapping in ways that suggest a return risk?

4. **Duplicate / suspicious pattern detection**
   - Are there multiple hotel charges or other repeated expenses where one would normally be expected?
   - Are there charges that look necessary but need special explanation?

5. **LOA / funding ambiguity flag**
   - Is the funding source or line of accounting unclear?
   - Does the packet explain which account/pot should cover the expense?

6. **Cash / exchange-rate reconstruction aid**
   - Highlight ATM, cash, currency exchange, or local-paperwork cases that require human scrutiny and supporting math.

7. **Return-comment drafting support**
   - If the packet lacks receipts, dates, funding clarity, or amount coherence, draft a concise human-review note explaining what is missing and what the traveler should fix.

## Trust boundary reinforced

The AI should not approve, deny, certify, determine entitlement, or decide whether a purchase was authorized. It should:

- flag likely review risks,
- package evidence,
- identify missing or inconsistent information,
- explain uncertainty,
- suggest reviewer questions or return-comment language,
- keep the human AO/reviewer accountable for the final decision.

## Open follow-up questions

- In real DTS review, who usually catches LOA/funding-pot ambiguity: traveler, reviewer, AO, finance, or unit admin staff?
- What is the most common “bad LOA” pattern?
- How often are cash/ATM/exchange-rate cases legitimate versus suspicious?
- What documentation is acceptable when a vendor cannot provide a normal receipt?
- Are return comments usually standardized, or does each reviewer write them ad hoc?
- Which failure mode causes the most operational pain: missing evidence, funding/LOA errors, amount mismatch, or unauthorized purchase disputes?

## Public-safe summary

A practitioner with Army admin experience described DTS review as an audit-like reconstruction problem: every expense must be categorized, matched to evidence, and tied to a plausible funding source. Common issues include missing receipts, unclear LOA/funding source, poor paperwork, unjustified expenses, stale traveler memory, weak vendor documentation, odd amounts, missing dates, duplicates, and cash/exchange-rate edge cases. This reinforces an AO-facing triage assistant that flags risky packets and packages evidence while preserving human approval authority.

