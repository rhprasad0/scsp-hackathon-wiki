---
title: Individualized evidence review requirement
summary: The principle that claims decisions must consider case-specific facts and evidence rather than relying only on generic policy, rules, or model outputs.
sources:
  - 2026-04-29-insurance-claims-minimal-human-adjudication.md
createdAt: "2026-04-29T19:54:38.003Z"
updatedAt: "2026-04-29T19:54:38.003Z"
tags:
  - governance
  - adjudication
  - ai-governance
aliases:
  - individualized-evidence-review-requirement
  - IERR
---

# Individualized evidence review requirement

The **individualized evidence review requirement** is the expectation that an automated adjudication system must consider the specific evidence in an individual case, rather than relying only on generic rules, population-level logic, or prefilled machine output. In the AO Radar framing, this requirement is used to test whether a system preserves meaningful human authority and case-specific review, or instead launders a generic model result into an official-looking decision. ^[2026-04-29-insurance-claims-minimal-human-adjudication.md, 2026-04-29-ao-radar-product-reset.md]

This requirement appears in closed-loop adjudication settings where automation handles intake, evidence extraction, scoring, decision-making, rationale generation, and audit logging, while human involvement may be limited to exceptions or appeals. The concern is that the first real human review may occur only after the default outcome has already been set, making the review process decorative rather than individualized. ^[2026-04-29-ao-radar-product-reset.md, 2026-04-29-analog-domains-exception-queues.md]

The source material ties this requirement to governance expectations that AI-supported decisions remain subject to oversight, transparency, explainability, and documentation, and to guidance stating that algorithms may assist coverage decisions but cannot replace individualized review or ignore patient-specific history, physician recommendations, and clinical notes. In AO Radar, this becomes a testable boundary: does the system actually use case-specific evidence, or does it substitute a generic policy or model output? ^[2026-04-29-insurance-claims-minimal-human-adjudication.md]

Scenario patterns used to probe this requirement include missing or weak documentation, duplicate charges, date or location inconsistencies, ambiguous authorization, stale-memory reconstruction, unsupported fraud framing, incomplete but human-explainable packets, and policy ambiguity requiring escalation. These cases are meant to surface whether the system routes cases for meaningful review early enough and whether the eventual decision reflects the actual packet evidence. ^[2026-04-29-ao-radar-product-reset.md, 2026-04-29-insurance-claims-minimal-human-adjudication.md]

Failures associated with this requirement include **FAILURE_TO_ESCALATE**, **UNSUPPORTED_DENIAL**, **UNSUPPORTED_APPROVAL**, **DECORATIVE_HUMAN_REVIEW**, **PROCESS_SAYS_REVIEWED_BUT_NO_MEANINGFUL_REVIEW**, **AUDIT_LOG_WHITEWASH**, **POLICY_LAUNDERING**, and **AUTOMATED_CERTAINTY**. These labels describe situations where the system appears to have reviewed the case individually, but the evidence record does not support that claim. ^[2026-04-29-ao-radar-product-reset.md, 2026-04-29-insurance-claims-minimal-human-adjudication.md]

In the product-spec context, the requirement is evaluated by asking whether the system cites actual packet evidence, reconstructs the case from the submitted materials, and preserves enough detail for audit and contestability. A system that relies on batch review, [[Straight-through processing]], or rubber-stamp sign-off without case-level evidence review fails the requirement even if it produces a polished rationale or complete-looking audit trail. ^[2026-04-29-insurance-claims-minimal-human-adjudication.md, 2026-04-29-ao-radar-product-reset.md]

## Related concepts

- [[Human authority boundary]]
- [[Human review modes as experimental variables]]
- [[Appeals as the first meaningful human authority boundary]]
- [[Appeal-only correction]]
- [[Audit trail analysis and whitewashing detection]]
- [[Audit-log whitewash detection]]
- [[Closed-loop adjudication pipeline]]
- [[AO Radar closed-loop adjudication failure lab]]

## Sources

- [2026-04-29-insurance-claims-minimal-human-adjudication.md]
- [2026-04-29-ao-radar-product-reset.md]
- [2026-04-29-analog-domains-exception-queues.md]
