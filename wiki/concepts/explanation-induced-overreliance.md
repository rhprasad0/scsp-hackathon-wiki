---
title: Explanation-Induced Overreliance
summary: The phenomenon where AI-generated explanations or rationales increase trust and acceptance of wrong advice instead of improving scrutiny.
sources:
  - 2026-04-29-automation-bias-rationales-reviewers.md
createdAt: "2026-04-30T10:43:15.225Z"
updatedAt: "2026-04-30T10:43:15.225Z"
tags:
  - explainable-ai
  - trust
  - overreliance
aliases:
  - explanation-induced-overreliance
---

# Explanation-Induced Overreliance

Explanation-induced overreliance is a pattern in which explanations, rationales, or other explanatory cues make people more likely to accept an automated recommendation, even when that recommendation is wrong. The source material treats this as a failure mode within human-AI decision-making: explanations can improve performance in some settings, but they can also increase reliance, especially when the reviewer is uncertain, cognitively loaded, unfamiliar with the task, or asked to verify a complex recommendation quickly. ^[2026-04-29-automation-bias-rationales-reviewers.md]

The core concern is not simply that a system explains itself, but that the explanation can function as a credibility signal rather than a verification aid. In the source material, feature-based explanations increased overreliance in some studies, and generated rationales could make wrong AI advice more persuasive. This means a fluent rationale may encourage acceptance even when the underlying evidence is weak or the recommendation conflicts with context. ^[2026-04-29-automation-bias-rationales-reviewers.md]

Explanation-induced overreliance is closely related to [[automation bias]] and [[decorative human review]]. The same conditions that produce those failures—high workload, divided attention, high [[Verification Complexity]], rare exceptions, and miscalibrated confidence cues—also make explanations riskier. In these settings, a rationale can become a permission slip for acceptance unless the reviewer has enough time, authority, and access to underlying evidence to challenge the automated default. ^[2026-04-29-automation-bias-rationales-reviewers.md]

The source material distinguishes between explanations that merely justify a decision and evidence paths that support independent judgment. It emphasizes that human review is meaningful only when it is active, authorized, and outcome-affecting: the reviewer must be able to see the underlying evidence, disagree with the system, escalate ambiguity, and record independent reasoning. Related concepts include [[human-in-the-loop]], [[exception queues]], [[contestability and appeal paths]], [[adjudication]], and [[workflow automation]]. ^[2026-04-29-automation-bias-rationales-reviewers.md, 2026-04-29-analog-domains-exception-queues.md]

A practical implication is that explanations should be evaluated as part of the full review pipeline, not treated as safeguards by default. The source material suggests testing whether a rationale actually helps reviewers detect unreliability, catch seeded defects, and escalate ambiguous cases, rather than assuming that more explanation means better oversight. ^[2026-04-29-automation-bias-rationales-reviewers.md]

## Related concepts

- [[automation bias]]
- [[decorative human review]]
- [[human-in-the-loop]]
- [[exception queues]]
- [[contestability and appeal paths]]
- [[workflow automation]]
- [[adjudication]]

## Sources

- `2026-04-29-automation-bias-rationales-reviewers.md`
- `2026-04-29-analog-domains-exception-queues.md`
