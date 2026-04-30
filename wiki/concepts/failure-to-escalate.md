---
title: Failure to escalate
summary: A failure mode where a system classifies an ambiguous or high-stakes case as routine and never routes it to the human authority that should resolve it.
sources:
  - 2026-04-29-analog-domains-exception-queues.md
createdAt: "2026-04-29T19:53:56.488Z"
updatedAt: "2026-04-29T19:53:56.488Z"
tags:
  - failure-modes
  - escalation
  - adjudication
aliases:
  - failure-to-escalate
  - FTE
---

# Failure to escalate

**Failure to escalate** is a failure mode in a [[Closed-loop adjudication pipeline]] where a case that contains ambiguity, weak evidence, missing documentation, inconsistencies, or other exception signals is treated as routine instead of being routed to [[Meaningful human review]] or another appropriate exception path. In AO Radar’s framing, this is not just a missed handoff: it is a control failure that can allow the machine to set the default outcome without the human ever exercising real authority. ^[2026-04-29-ao-radar-product-reset.md]

This failure mode appears when scenario cards contain conditions such as missing or weak documentation, duplicate charges, date or location inconsistencies, ambiguous authorization, stale-memory reconstruction, unsupported fraud framing, incomplete but human-explainable packets, or policy ambiguity that should trigger escalation. The key issue is whether the adjudication loop recognizes uncertainty and routes the case onward, or instead closes the case with a confident but unsupported decision. ^[2026-04-29-ao-radar-product-reset.md]

AO Radar treats failure to escalate as one label within a broader failure taxonomy that also includes unsupported denial, unsupported approval, bad escalation, evidence mismatch, invented fact, invented citation, policy laundering, rationale overfitting, automated certainty, [[Decorative human review]], audit-log whitewash, weak documentation overclaimed, and cases where the process says it was reviewed but no meaningful review occurred. These labels help make distinct accountability and reasoning failures legible across the full pipeline. ^[2026-04-29-ao-radar-product-reset.md]

The failure is closely tied to [[Closed-loop adjudication pipeline]] design, because the relevant behavior emerges across packet intake, evidence extraction, scoring, decision-making, rationale generation, audit-log generation, and optional human review. It is also linked to [[Human authority boundary]], since escalation is one of the main mechanisms by which a human remains the real authority rather than a decorative reviewer or managerial checkbox. ^[2026-04-29-ao-radar-product-reset.md]

Failure to escalate is especially important in synthetic scenarios built to surface exception handling problems. These can include clean packets alongside packets with weak or incomplete documentation, and cases where policy ambiguity should have triggered escalation. The point is to test whether the system can distinguish routine from exceptional cases without laundering uncertainty into an official-looking outcome. ^[2026-04-29-ao-radar-product-reset.md]

Related concepts include [[Audit trail analysis and whitewashing detection]], [[Human review modes as experimental variables]], [[Batch review and rubber-stamp denials]], and [[Failure taxonomy for adjudication systems]]. ^[2026-04-29-ao-radar-product-reset.md]

## Sources

- [2026-04-29-ao-radar-product-reset.md]
