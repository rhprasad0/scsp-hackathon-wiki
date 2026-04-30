---
title: Explanations as a source of overtrust
summary: Fluent explanations or rationales can make wrong AI advice more persuasive, especially when they appear policy-grounded or confidence-boosting.
sources:
  - 2026-04-29-automation-bias-rationales-reviewers.md
createdAt: "2026-04-29T19:54:16.380Z"
updatedAt: "2026-04-29T19:54:16.380Z"
tags:
  - explainable-ai
  - trust
  - automation-bias
aliases:
  - explanations-as-a-source-of-overtrust
  - EAASOO
---

# Explanations as a source of overtrust

**Explanations as a source of overtrust** refers to the pattern in which a system’s rationale, summary, or explanation makes automated advice seem more credible than it should be. In AO Radar-style closed-loop adjudication settings, explanations can contribute to overreliance when they accompany a default recommendation, especially if the reviewer is uncertain, time-pressured, or asked to verify complex evidence quickly. ^[2026-04-29-automation-bias-rationales-reviewers.md]

This risk matters because human review is only meaningful when the reviewer has the time, information, authority, incentives, and cognitive posture needed to challenge the automated default. Research in human factors and HCI suggests that explanations do not reliably prevent overreliance; in some cases they can make wrong AI advice more persuasive, particularly when the explanation is fluent, policy-shaped, or presented alongside confidence cues. ^[2026-04-29-automation-bias-rationales-reviewers.md]

In AO Radar language, explanations can support failure modes such as **RATIONALE_OVERFITTING**, **POLICY_LAUNDERING**, **AUTOMATED_CERTAINTY**, **FAILURE_TO_ESCALATE**, and **PROCESS_SAYS_REVIEWED_BUT_NO_MEANINGFUL_REVIEW**. The concern is not explanation in general, but explanation that functions as a permission slip for acceptance rather than a path to independent judgment. ^[2026-04-29-automation-bias-rationales-reviewers.md]

The risk is highest when verification is complex. If checking a recommendation requires reconstructing evidence, policy, chronology, and exceptions, reviewers may accept the automated answer because acceptance is cheaper than verification. Explanations can then shift review from checking decision quality to judging narrative coherence. ^[2026-04-29-automation-bias-rationales-reviewers.md]

Explanation type also matters. Feature-based explanations may increase overreliance, while example-based explanations can better support a reviewer’s intuition about when to override the AI. [[Cognitive forcing functions]] can reduce overreliance compared with simple explainable-AI interfaces, but they may also be less preferred and add effort. ^[2026-04-29-automation-bias-rationales-reviewers.md]

For evaluation, AO Radar treats explanations as a variable to test rather than a safeguard to assume. Useful harness checks include varying rationale quality, seeding wrong-but-plausible recommendations, requiring independent reviewer judgment before showing the AI answer, and measuring override rate, escalation rate, evidence citation quality, and catch rate on seeded defects. ^[2026-04-29-automation-bias-rationales-reviewers.md]

## Related concepts

- [[Automation bias, rationales, and exception-reviewer behavior]]
- [[Human review modes as experimental variables]]
- [[Human authority boundary]]
- [[Closed-loop adjudication pipeline]]
- [[Audit trail analysis and whitewashing detection]]
- [[Failure taxonomy for adjudication systems]]

## Sources

- [2026-04-29-automation-bias-rationales-reviewers.md]
