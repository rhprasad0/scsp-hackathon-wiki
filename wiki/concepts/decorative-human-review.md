---
title: Decorative human review
summary: A nominal review step where a human is present but lacks the authority, evidence, or incentives needed to meaningfully affect the decision.
sources:
  - 2026-04-29-automation-bias-rationales-reviewers.md
  - 2026-04-29-exception-based-adjudication-workflows.md
createdAt: "2026-04-29T19:54:23.759Z"
updatedAt: "2026-04-29T19:54:23.759Z"
tags:
  - human-review
  - governance
  - automation-bias
aliases:
  - decorative-human-review
  - DHR
---

# Decorative human review

**Decorative human review** is a pattern in closed-loop adjudication systems where a human is present in the workflow, but the review step does not meaningfully affect the outcome. The human may appear in logs, queues, or sign-off screens, yet lacks the time, evidence, authority, or incentive to challenge the automated default. In this framing, review is performative rather than substantive. ^[2026-04-29-ao-radar-product-reset.md, 2026-04-29-automation-bias-rationales-reviewers.md]

AO Radar treats decorative human review as a first-class failure mode rather than a vague complaint. It is used to test whether human involvement preserves real authority or merely simulates oversight after the system has already set the default decision. Related labels include **PROCESS_SAYS_REVIEWED_BUT_NO_MEANINGFUL_REVIEW**, **DECORATIVE_HUMAN_REVIEW**, **FAILURE_TO_ESCALATE**, **AUDIT_LOG_WHITEWASH**, and **AUTOMATED_CERTAINTY**. ^[2026-04-29-ao-radar-product-reset.md]

Decorative review is especially likely when the automated system provides a clear recommendation, a fluent rationale, or a confidence cue, and the reviewer must verify a complex case under workload or uncertainty. Research notes tied to AO Radar indicate that explanations and confidence scores can increase overreliance, and that human-in-the-loop is not a control unless the human has the time, information, authority, incentives, and cognitive posture needed to challenge the automated default. ^[2026-04-29-automation-bias-rationales-reviewers.md]

AO Radar distinguishes decorative review from meaningful review by asking whether the reviewer can still change the outcome, access the underlying evidence, and escalate ambiguous or unsupported cases. Meaningful review is described as active rather than token, with actual influence over the decision; decorative review is the opposite, where a person touches the file but does not exercise real authority. ^[2026-04-29-automation-bias-rationales-reviewers.md]

This concept is also tied to the boundary between initial processing and appeal. In some workflows, the first real opportunity for a human to alter the outcome comes only on appeal, making the earlier “review” decorative rather than contestable. That same structure appears in exception queues and audit trails when the system records a review event without preserving meaningful human judgment. ^[2026-04-29-analog-domains-exception-queues.md, 2026-04-29-ao-radar-product-reset.md]

## Related concepts

- [[Human review modes as experimental variables]]
- [[Audit trail analysis and whitewashing detection]]
- [[Appeals as the first meaningful human authority boundary]]
- [[Human authority boundary]]
- [[Closed-loop adjudication pipeline]]
- [[Failure taxonomy for adjudication systems]]
- [[AO Radar closed-loop adjudication failure lab]]

## Sources

- [2026-04-29-ao-radar-product-reset.md]
- [2026-04-29-automation-bias-rationales-reviewers.md]
- [2026-04-29-analog-domains-exception-queues.md]
