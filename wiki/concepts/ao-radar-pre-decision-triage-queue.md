---
title: AO radar pre-decision triage queue
summary: A proposed assistant that ranks submitted DTS vouchers by likely error risk so Approving Officials can review the highest-risk packets first before making approval decisions.
sources:
  - 2026-04-25-dts-ao-radar-public-research.md
createdAt: "2026-04-25T18:58:33.792Z"
updatedAt: "2026-04-25T18:58:33.792Z"
tags:
  - dts
  - workflow
  - risk-scoring
aliases:
  - ao-radar-pre-decision-triage-queue
  - ARPTQ
---

# AO radar pre-decision triage queue

The **AO radar pre-decision triage queue** is a proposed [[AO helper as quality assurance manager|AO support]] concept for Defense Travel System (DTS) voucher review. It organizes vouchers awaiting action into a ranked queue so a human Approving Official (AO) can quickly focus on the documents most likely to have missing receipts, documentation gaps, mismatched amounts, weak justification, or other policy-risk indicators before approval. The intent is pre-decision triage, not automated approval or denial. ^[2026-04-25-dts-ao-radar-research-synthesis.md, 2026-04-25-dts-ao-radar-public-research.md]

This concept fits the broader [[Administrative trenches as the GenAI.mil problem frame]], which targets administrative burden rather than tactical AI. The public research frames DTS AO work as a high-value wedge because it is repetitive, policy-heavy, and exposed to recurring voucher errors that drive returns and improper payments. ^[2026-04-25-dts-ao-radar-public-research.md, 2026-04-25-genai-mil-public-context-and-links.md]

## Purpose

The queue is meant to reduce AO cognitive load by surfacing the items most likely to need human attention first. Public DTMO and service guidance describe voucher review as a checklist-driven process that includes trip dates and locations, travel mode, receipts, pre-audit flags, reason codes, advisories, and document validity; the triage queue is a way to present that work in a prioritized order. ^[2026-04-25-dts-ao-radar-public-research.md]

## What it would surface

A pre-decision triage queue would highlight issues that recur in public DTS guidance and oversight material, including missing or invalid receipts, amount mismatches, duplicate expenses, blank or vague justification text, DD Form 1351-2 problems, and date/location mismatches between the voucher and underlying orders. It could also surface high-level backlog information, such as how long vouchers have been waiting and which ones appear most likely to require correction. ^[2026-04-25-dts-ao-radar-public-research.md]

Examples of queue signals drawn from the source material include: receipt presence and validity, amount-vs-receipt reconciliation, justification-quality scoring, date/location coherence, per diem and lodging-tax policy checks, duplicate-expense detection, DD 1351-2 / NDEA path validation, and GTCC split-disbursement coherence. These are all triage signals for human review, not final determinations. ^[2026-04-25-dts-ao-radar-public-research.md, 2026-04-25-dts-ao-radar-research-synthesis.md]

## Why this is useful

Public oversight material shows that DTS travel pay remains a persistent error area and that invalid or missing receipts are a major failure mode. DTMO reports that more than 70% of improper DTS payments are due to inadequate or invalid receipts, and service-level checklists were created or made mandatory in response to recurring return reasons and audit findings. ^[2026-04-25-dts-ao-radar-public-research.md]

The queue concept is also consistent with the AO’s role as a quality-assurance reviewer rather than a primary receipt reader. The source material explicitly recommends preserving human judgment, visible trust boundaries, and review status so the AO remains the decision-maker and certifier. ^[2026-04-25-dts-ao-radar-research-synthesis.md, 2026-04-24-hackathon-operating-context.md, 2026-04-24-genai-mil-concept-seed.md]

## Trust boundaries

An AO radar triage queue must not approve, deny, certify, sign, submit, or amend DTS documents. It must not determine entitlement, accuse fraud, or bypass human review. The queue can rank, explain, and point to relevant policy references, but the AO remains responsible for the final action and any certifying-officer liability. ^[2026-04-25-dts-ao-radar-research-synthesis.md, 2026-04-24-genai-mil-concept-seed.md]

The source material also emphasizes that component and local business rules vary, so any queue logic should be overrideable by service or unit rather than hard-coded as a single universal rule set. This is especially important because the public checklist materials explicitly allow service-specific modifications. ^[2026-04-25-dts-ao-radar-public-research.md]

## Relationship to existing DTS controls

The triage queue would not replace DTS controls such as Pre-Audit flags, Reason Codes, Advisories, or the Travel Policy Compliance Tool (TPCT). Those controls already exist and, in the case of TPCT, are mandatory and near-real-time. The proposed queue is best understood as an AO-facing pre-decision layer that helps organize evidence and prioritize review before the human makes the final call. ^[2026-04-25-dts-ao-radar-public-research.md]

## Related concepts

- [[AO helper as quality assurance manager]]
- [[Administrative trenches as the GenAI.mil problem frame]]
- [[AI-assisted spec with human review]]
- [[Controlled Reference Retrieval]]
- [[Back-office military workflow examples]]

## Sources

- [2026-04-25-dts-ao-radar-public-research.md]
- [2026-04-25-dts-ao-radar-research-synthesis.md]
- [2026-04-24-hackathon-operating-context.md]
- [2026-04-24-genai-mil-concept-seed.md]
- [2026-04-25-genai-mil-public-context-and-links.md]
