---
title: Automation Bias
summary: A tendency for humans to over-rely on automated recommendations, leading to omission and commission errors when decision aids are wrong.
sources:
  - 2026-04-29-automation-bias-rationales-reviewers.md
createdAt: "2026-04-30T10:43:10.605Z"
updatedAt: "2026-04-30T10:43:10.605Z"
tags:
  - human-factors
  - automation
  - decision-making
aliases:
  - automation-bias
---

# Automation Bias

Automation bias is the tendency for people to over-rely on automated recommendations, especially when a system sets a default outcome, presents confidence cues, or attaches a fluent explanation. In the source material, this is treated as a human-factors failure mode that can appear even when a human is technically “in the loop,” particularly if the reviewer lacks time, information, authority, incentives, or the cognitive posture needed to challenge the automated default. ^[2026-04-29-automation-bias-rationales-reviewers.md]

The bias is closely associated with complacency and attention-allocation problems. The source material notes that automation bias can produce omission errors and commission errors, and that it can affect both novice and expert users. It is especially likely when multiple tasks compete for attention, when workload is high, or when the reviewer must verify a recommendation quickly. ^[2026-04-29-automation-bias-rationales-reviewers.md]

A key insight in the source material is that [[Verification Complexity]] matters: the harder it is to check the recommendation against the underlying evidence, policy, chronology, or exceptions, the easier it is for review to become acceptance. In this sense, automation bias is not just about trust in machines; it is also about the cost of independent verification. ^[2026-04-29-automation-bias-rationales-reviewers.md]

The source material also emphasizes that explanations and rationales do not reliably prevent overreliance. In some studies, explanations made wrong AI advice more persuasive, and feature-based rationales increased overreliance. [[Cognitive Forcing Functions]] can reduce overreliance, but they may be less liked by users and can increase effort. Confidence cues can help when calibrated and understood, but miscalibrated confidence is difficult for users to detect and can still distort reliance. ^[2026-04-29-automation-bias-rationales-reviewers.md]

In closed-loop adjudication settings, automation bias can show up as `AUTOMATED_CERTAINTY`, `DECORATIVE_HUMAN_REVIEW`, `PROCESS_SAYS_REVIEWED_BUT_NO_MEANINGFUL_REVIEW`, `POLICY_LAUNDERING`, `RATIONALE_OVERFITTING`, and `FAILURE_TO_ESCALATE`. The practical risk is that a human appears to review a case while the automated default already determines the result, including whether an ambiguous or high-risk case is escalated at all. Related concepts include [[human-in-the-loop]], [[decorative human review]], [[exception queues]], [[adjudication]], and [[workflow automation]]. ^[2026-04-29-automation-bias-rationales-reviewers.md, 2026-04-29-analog-domains-exception-queues.md]

A useful way to think about automation bias is that it becomes a control problem when it changes the reviewer’s behavior more than it improves the decision. The source material frames [[Meaningful Human Review]] as active, authorized, and outcome-affecting: the reviewer must be able to see the underlying evidence, disagree with the system, escalate ambiguity, and record independent reasoning. ^[2026-04-29-automation-bias-rationales-reviewers.md, 2026-04-29-analog-domains-exception-queues.md]

## Related concepts

- [[human-in-the-loop]]
- [[decorative human review]]
- [[exception queues]]
- [[adjudication]]
- [[workflow automation]]
- [[audit logs]]
- [[contestability and appeal paths]]
- [[automation bias, rationales, and exception-reviewer behavior]]

## Sources

- `2026-04-29-automation-bias-rationales-reviewers.md`
- `2026-04-29-analog-domains-exception-queues.md`
