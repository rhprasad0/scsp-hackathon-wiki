---
title: AO triage assistant / 'AO radar' for risk-scored vouchers
summary: A proposed AI wedge is a pre-decision queue-ranker that scores DTS vouchers by likely error risk so AOs can focus attention on the most problematic submissions first.
sources:
  - 2026-04-25-dts-ao-radar-public-research.md
createdAt: "2026-04-25T18:38:45.722Z"
updatedAt: "2026-04-25T18:38:45.722Z"
tags:
  - triage
  - risk-scoring
  - ai-assistant
  - dts
aliases:
  - ao-triage-assistant-ao-radar-for-risk-scored-vouchers
  - ATA/'RFRV
---

# AO triage assistant / “AO radar” for risk-scored vouchers

An AO triage assistant, or “AO radar,” is a proposed [[Back-office military workflow examples|back-office]] tool for Defense Travel System (DTS) Approving Officials (AOs) that would rank vouchers by risk before human review. The wedge is specifically aimed at reducing cognitive load on AOs when they triage submitted travel vouchers and reimbursement packets, especially where the AO owns the approval decision and faces pecuniary liability if an improper payment slips through. ^[2026-04-25-dts-ao-radar-public-research.md]

The public research frames this as a narrow, operationally legible assistant for an existing human workflow, not a replacement for the AO. The intended posture is pre-decision triage: surface likely problem documents, show evidence gaps, and point the AO to the relevant rules and receipts so the human approver can make the decision. ^[2026-04-25-dts-ao-radar-public-research.md]

## What the AO has to check

Public DTMO guidance describes a substantial per-voucher checklist. AOs are expected to verify trip dates and locations, travel mode, expenses, supporting records and receipts, pre-audit flags and reason codes, and any displayed advisories; they must also return a document if an expense is not within mission or the request for payment is inappropriate. DTMO and service guidance further emphasizes valid receipts, duplicate-expense checks, receipt coverage for lodging and higher-value items, and documentation for NDEA-processed vouchers. ^[2026-04-25-dts-ao-radar-public-research.md]

The Navy’s mandatory AO voucher checklist gives a particularly concrete view of the workload: the AO must affirm items across trip review, expenses, per diem, accounting, financial summary, pre-audits, and sign-and-submit screens. Its requirements include checking for duplicate expenses, final itemized receipts, TMC/e-ticket documentation, rental car return details, and proper reason codes and oral-order justification when an approval occurs after trip start. ^[2026-04-25-dts-ao-radar-public-research.md]

## Why a triage assistant is needed

The source material identifies voucher processing as a hard human-factors problem with recurring failure modes. DoD oversight reports and DTMO guidance repeatedly point to receipt problems, documentation gaps, duplicate payments, and mismatches between claimed amounts and supporting records. DTMO states that more than 70% of improper payments are due to inadequate or invalid receipts, and GAO notes that approving officials historically could not always see receipts attached in DTS, making approval without required documentation possible. ^[2026-04-25-dts-ao-radar-public-research.md]

The research also shows that the workload is not abstract: unit-level policies already exist because commands have had to respond to returns, backlog, and audit findings. HQ RIO’s “Big Six” policy says six common errors account for 80% of returned submissions, cites a 50% reduction in AO staffing, and warns of reimbursement delays potentially exceeding 90 days if current processes continue. ^[2026-04-25-dts-ao-radar-public-research.md]

## What the radar could surface

A risk-scored AO queue could combine several pre-decision checks already supported by the public evidence base:

- missing or invalid receipts, especially lodging and other required supporting documents
- mismatch between claimed amounts and receipt totals
- duplicate expenses
- date and location mismatches between DTS and the orders
- weak or blank justification text for pre-audit flags
- per diem, lodging-tax, and entitlement-policy edge cases
- missing wet-signed DD 1351-2 support on NDEA-processed vouchers
- split-disbursement and GTCC coherence issues
- high-risk merchant signals for closer human review, without accusing fraud ^[2026-04-25-dts-ao-radar-public-research.md]

The research also suggests a useful user-facing pattern: for each flag, the assistant should show the relevant rule source and a short prompt for what the AO should ask the traveler. This fits the public-safe framing of “anomaly,” “policy-risk indicator,” or “documentation gap,” rather than a fraud conclusion. ^[2026-04-25-dts-ao-radar-public-research.md]

## Trust boundaries

The AO must remain the human approver, certifier, and signer. The assistant must not apply the APPROVED stamp, submit a voucher, certify a payment, deny or cancel documents, or determine entitlement. It also must not accuse fraud; the source material is explicit that the proper framing is reviewable risk, not a factual allegation. ^[2026-04-25-dts-ao-radar-public-research.md]

This boundary matters because the existing DTMO Travel Policy Compliance Tool already performs mandatory post-approval checks, but it has documented blind spots for missing or invalid receipts and receipt-vs-claim mismatches. An AO radar would therefore be positioned as a pre-decision aid that complements existing controls rather than duplicating them. ^[2026-04-25-dts-ao-radar-public-research.md]

## Existing context and precedent

The source material places this idea inside the broader GenAI.mil administrative-burden frame: useful military AI should target back-office friction, not tactical or kinetic use. It also notes that DTS modernization is still in flux, so any assistant must work against current DTS rather than assume a replacement system is already available. ^[2026-04-25-dts-ao-radar-public-research.md]

There is also prior art for automated receipt and voucher analysis. A USAFA capstone on Defense Travel System improper payments proposed a receipt reader and explicitly argued for reframing AOs as quality assurance managers rather than primary receipt readers. That makes the AO radar concept a natural extension of an already established public research direction. ^[2026-04-25-dts-ao-radar-public-research.md]

## Sources

- [2026-04-25-dts-ao-radar-public-research.md]
