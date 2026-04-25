---
title: AO helper as quality assurance manager
summary: The recommended trust posture is to support the Approving Official as a quality-assurance reviewer rather than replacing them as the primary receipt reader or decision-maker.
sources:
  - 2026-04-25-dts-ao-radar-research-synthesis.md
createdAt: "2026-04-25T18:38:51.121Z"
updatedAt: "2026-04-25T18:38:51.121Z"
tags:
  - human-in-the-loop
  - trust-boundaries
  - ux-pattern
aliases:
  - ao-helper-as-quality-assurance-manager
  - AHAQAM
---

# AO helper as quality assurance manager

AO helper as quality assurance manager is a proposed framing for a DTS support tool that assists an Approving Official by surfacing evidence, policy references, and likely problem areas before a voucher is approved. The framing treats the AO less as a primary receipt reader and more as a [[quality assurance]] role: the system can help check documentation, reconcile details, and flag uncertainty, but the human remains responsible for approval and any certifying-officer action. ^[2026-04-25-dts-ao-radar-research-synthesis.md]

This framing comes from public prior art in the DTS travel review space. A 2021 USAFA cadet capstone built a Tesseract-based receipt reader, reported 87% accuracy and 3.5% false positives on a training set, and proposed reframing the AO “as a quality assurance manager, rather than the primary receipt reader.” The same synthesis uses that idea to position an AI assistant as a pre-decision triage aid rather than a replacement for AO judgment. ^[2026-04-25-dts-ao-radar-research-synthesis.md]

In practice, the quality-assurance framing fits the structure of the AO’s work. Public DTMO and service guidance describe voucher review as a detailed checklist process covering receipts, amounts, dates, locations, lines of accounting, justifications, transportation mode, lodging entitlement, and split disbursement. The recurring error patterns are also well documented: invalid or missing receipts, amount-vs-receipt mismatches, date/location mismatches, weak justifications, and related documentation gaps. ^[2026-04-25-dts-ao-radar-public-research.md]

A helper designed around this framing would therefore focus on pre-approval triage: ranking trips awaiting action, surfacing missing or invalid evidence, highlighting questionable justifications, and linking each flag back to the relevant policy source. This is consistent with the broader [[Administrative trenches as the GenAI.mil problem frame]] and with [[AI-assisted spec with human review]], which preserves human review and avoids inventing or approving operational facts. ^[2026-04-25-dts-ao-radar-research-synthesis.md, 2026-04-24-hackathon-operating-context.md, 2026-04-24-genai-mil-concept-seed.md]

The quality-assurance analogy also helps define the tool’s limits. The source material is explicit that the AI should not approve, deny, certify, sign, submit, or accuse fraud; it should instead surface anomalies, documentation gaps, and policy-risk indicators for a human AO to inspect. In that sense, the helper is a control surface for review quality, not a substitute decision-maker. ^[2026-04-25-dts-ao-radar-research-synthesis.md]

Related concepts include [[AO Radar pre-approval triage queue]], [[Administrative trenches as the GenAI.mil problem frame]], [[AI-assisted spec with human review]], [[Controlled Reference Retrieval]], and [[Back-office military workflow use cases]]. ^[2026-04-25-dts-ao-radar-research-synthesis.md]

## Sources

- [2026-04-25-dts-ao-radar-research-synthesis.md]
- [2026-04-25-dts-ao-radar-public-research.md]
- [2026-04-24-hackathon-operating-context.md]
- [2026-04-24-genai-mil-concept-seed.md]
