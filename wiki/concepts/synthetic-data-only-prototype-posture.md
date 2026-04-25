---
title: Synthetic-data-only prototype posture
summary: Because real DTS vouchers contain sensitive data, the hackathon concept should be demonstrated only with synthetic data and no live DTS integration.
sources:
  - 2026-04-25-dts-ao-radar-public-research.md
createdAt: "2026-04-25T18:58:39.698Z"
updatedAt: "2026-04-25T18:58:39.698Z"
tags:
  - privacy
  - prototyping
  - dts
aliases:
  - synthetic-data-only-prototype-posture
  - SPP
---

# Synthetic-data-only prototype posture

Synthetic-data-only prototype posture is a development and demo stance for military AI tools in which the prototype is built and shown using synthetic or otherwise non-real records only, rather than real traveler PII, GTCC data, or operationally sensitive voucher content. In the provided source material, this posture is presented as the appropriate way to frame a public-safe hackathon artifact: a companion concept or synthetic candidate workflow, not a live DTS integration, a GenAI.mil deployment claim, or a system authorized to process real personal data. ^[2026-04-25-dts-ao-radar-public-research.md]

This posture is tied to the broader trust and governance rules for AI-assisted military workflows. The source material requires that a human remain the approver, certifier, and signer; that the AI not approve, certify, submit, deny, or cancel DTS documents; and that the system avoid inventing facts, bypassing review, or accusing fraud. Synthetic data is therefore not just a privacy preference, but part of preserving clear human-review boundaries and avoiding a demo that implies unauthorized authority over real records. Related concepts include [[AI-assisted spec with human review]], [[Human-in-the-Loop Review and Approval]], and [[AO helper as quality assurance manager]]. ^[2026-04-25-dts-ao-radar-public-research.md, 2026-04-24-hackathon-operating-context.md, 2026-04-24-genai-mil-concept-seed.md]

The source material also notes that real DTS vouchers can contain GTCC numbers, EFT routing data, traveler names and ranks, lodging addresses, and sometimes medical justification text, which makes synthetic-only handling the safest public demo posture. The CamoGPT slick sheet is cited as a model for this stance because it explicitly uses a “not authorized to process PHI/PII” posture. In this context, synthetic data supports safe testing of features such as queue ranking, receipt presence checks, amount reconciliation, and justification-quality scoring without exposing actual traveler information. Related concepts include [[Controlled Reference Retrieval]], [[Citations and missing-field visibility]], and [[Back-office military workflow use cases]]. ^[2026-04-25-dts-ao-radar-public-research.md]

A synthetic-data-only posture also helps keep the prototype aligned with the limits of existing DTS controls. The source material emphasizes that current DTMO and DTMO-aligned tools already handle pre-audit flags, reason codes, advisories, and post-approval compliance notifications, so a new assistant should be positioned as pre-decision triage and evidence surfacing rather than as a duplicate control or an operational replacement. In that framing, synthetic data lets the team demonstrate workflow value while avoiding claims of live access, mandatory-process authority, or component-specific policy enforcement. Related concepts include [[AO Radar pre-approval triage queue]] and [[Administrative trenches as the GenAI.mil problem frame]]. ^[2026-04-25-dts-ao-radar-public-research.md, 2026-04-25-genai-mil-public-context-and-links.md]

## Sources

- [2026-04-25-dts-ao-radar-public-research.md]
- [2026-04-24-hackathon-operating-context.md]
- [2026-04-24-genai-mil-concept-seed.md]
- [2026-04-25-genai-mil-public-context-and-links.md]
