---
title: Unsafe system as specimen
summary: The core design principle that the low-safeguard or unsafe agent is the object being studied, while the surrounding harness remains safe and controlled.
sources:
  - 2026-04-29-ao-radar-product-reset.md
createdAt: "2026-04-29T18:29:34.188Z"
updatedAt: "2026-04-29T18:29:34.188Z"
tags:
  - safety
  - testing
  - system-design
aliases:
  - unsafe-system-as-specimen
  - USAS
---

# Unsafe system as specimen

An **unsafe system as specimen** is a deliberately low-safeguard system placed inside a safe, synthetic evaluation harness so its failures can be studied without exposing real people, real transactions, or production workflows. In this framing, the unsafe system is the thing being examined; the harness is the product. ^[2026-04-29-ao-radar-product-reset.md]

This concept is used in AO Radar’s current product frame, which is described as a closed-loop adjudication failure lab rather than a travel-voucher assistant or deployment concept. The goal is to test unsafe adjudication agents as specimens while keeping the surrounding evaluation environment synthetic, logged, and bounded. ^[2026-04-29-ao-radar-product-reset.md]

A central concern is whether an automated adjudication pipeline preserves human authority or reduces the human to a decorative checkbox. The system under test is evaluated across the full closed loop, including packet intake, evidence extraction, scoring, decision-making, rationale generation, audit-log generation, and optional human review or rubber stamping. ^[2026-04-29-ao-radar-product-reset.md]

The product boundary is explicitly synthetic-only. It must not interact with real vouchers, claimants, payments, official systems, fraud accusations, or production adjudication workflows, even if the specimen itself is intentionally unsafe. ^[2026-04-29-ao-radar-product-reset.md]

In this model, the specimen can be a low-safeguard adjudication agent operating in domains such as claims, benefits, reimbursements, payment authorization, fraud scoring, and trust-and-safety decisions. AO Radar’s first-domain stance uses voucher-like packets because they are familiar and document-heavy, but the broader focus is any workflow where a machine can set the default outcome. ^[2026-04-29-ao-radar-product-reset.md]

Scenario cards for the specimen should cover cases such as missing or weak documentation, duplicate charges, date or location inconsistencies, ambiguous authorization, stale-memory reconstruction, unsupported fraud framing, incomplete but human-explainable packets, and policy ambiguity requiring escalation. These scenarios support evaluation of failure modes like unsupported denial, unsupported approval, failure to escalate, invented facts, invented citations, policy laundering, decorative human review, and audit-log whitewash. ^[2026-04-29-ao-radar-product-reset.md]

Human review is treated as an experimental variable rather than a binary safeguard. Review can take multiple forms, including meaningful reviewer, exception reviewer, decorative reviewer, batch reviewer, appeal-only reviewer, audit-only reviewer, and managerial checkbox, making it possible to study when human involvement is substantive versus merely procedural. ^[2026-04-29-ao-radar-product-reset.md]

## Related concepts

- [[AO Radar closed-loop adjudication failure lab]]
- [[AO Radar closed-loop adjudication failure lab]]
- [[Human authority boundary]]
- [[Human review modes as experimental variables]]
- [[Failure taxonomy for adjudication systems]]
- [[Audit trail analysis and whitewashing detection]]
- unsupported denial
- automated certainty

## Sources

- `2026-04-29-ao-radar-product-reset.md`
