---
title: Evidence access for review
summary: Meaningful review requires access to original facts, packet evidence, system inputs, policy basis, uncertainty notes, and conflicting or missing information.
sources:
  - 2026-04-29-meaningful-human-review-audit-trails.md
createdAt: "2026-04-29T19:54:49.958Z"
updatedAt: "2026-04-29T19:54:49.958Z"
tags:
  - review-process
  - evidence
  - governance
aliases:
  - evidence-access-for-review
  - EAFR
---

# Evidence access for review

**Evidence access for review** is the requirement that a human reviewer have access to the original evidence, relevant data, extracted facts, policy references, and system limitations needed to meaningfully assess an automated adjudication outcome. In AO Radar, this is treated as part of [[Meaningful human review]] rather than a cosmetic “reviewed” label: a reviewer cannot be considered meaningful if they only see a generated rationale and not the underlying packet or evidence trail. ^[2026-04-29-meaningful-human-review-audit-trails.md]

This concept is central to closed-loop adjudication systems where automation handles intake, evidence extraction, scoring, decision-making, rationale generation, and audit logging, while human involvement may be limited to exception queues, reviewer sign-off, or post hoc appeal handling. AO Radar uses evidence access to test whether human review preserves authority or becomes decorative, especially when the human arrives only after the system has already set the default outcome. [[Human review modes as experimental variables]] [[Human authority boundary]] ^[2026-04-29-meaningful-human-review-audit-trails.md, 2026-04-29-ao-radar-product-reset.md]

Meaningful evidence access includes the original packet evidence, any extracted fields, missing or contradictory evidence, policy references, confidence or uncertainty notes, and any other data used by the system in reaching its recommendation. Guidance in the source material treats review as an evidence-review requirement, not a UI click: the reviewer should be able to see the data and facts the system used, plus additional evidence supplied by the affected person. ^[2026-04-29-meaningful-human-review-audit-trails.md]

Evidence access is also important for contestability. Official guidance summarized in the source material emphasizes human consideration and remedy processes, escalation and fallback paths, and the ability for a reviewer to alter, override, reverse, or stop the automated result. If the reviewer lacks access to the relevant evidence, the system may produce a decision that looks complete while still preventing meaningful intervention. [[Appeals as the first meaningful human authority boundary]] [[Audit trail analysis and whitewashing detection]] ^[2026-04-29-meaningful-human-review-audit-trails.md, 2026-04-29-ao-radar-product-reset.md]

In AO Radar’s rubric, weak evidence access can support failure labels such as `PROCESS_SAYS_REVIEWED_BUT_NO_MEANINGFUL_REVIEW`, `FAILURE_TO_ESCALATE`, `AUDIT_LOG_WHITEWASH`, and `POLICY_LAUNDERING`. The point is not merely whether a person appeared in the workflow, but whether that person had enough evidence to exercise independent judgment and challenge the system’s recommendation. ^[2026-04-29-meaningful-human-review-audit-trails.md, 2026-04-29-ao-radar-product-reset.md]

## What evidence access should include

- Original packet evidence
- Extracted evidence or fields used by the system
- Missing, weak, or contradictory evidence
- Relevant policy or rule references
- Uncertainty, limitations, and confidence notes
- Any additional evidence or explanation submitted by the affected person ^[2026-04-29-meaningful-human-review-audit-trails.md]

## Why it matters

A clean audit trail can show that a packet was received, a decision was made, and a review step was recorded, but it does not by itself prove that the reviewer had the evidence needed to exercise real judgment. Evidence access is therefore a boundary condition for [[Meaningful human review]]: without it, the review may be only decorative, and the audit record may overstate the level of oversight that actually occurred. [[Audit trail analysis and whitewashing detection]] ^[2026-04-29-meaningful-human-review-audit-trails.md]

## Related concepts

- [[Meaningful human review]]
- [[Human review modes as experimental variables]]
- [[Human authority boundary]]
- [[Appeals as the first meaningful human authority boundary]]
- [[Audit trail analysis and whitewashing detection]]
- [[Audit-log whitewash detection]]
- [[AO Radar closed-loop adjudication failure lab]]

## Sources

- [2026-04-29-meaningful-human-review-audit-trails.md]
- [2026-04-29-ao-radar-product-reset.md]
