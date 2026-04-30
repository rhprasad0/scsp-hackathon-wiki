---
title: Automation bias in human review
summary: The tendency for reviewers to over-rely on automated recommendations, treating them as correct even when verification is difficult or the system is wrong.
sources:
  - 2026-04-29-automation-bias-rationales-reviewers.md
  - 2026-04-29-meaningful-human-review-audit-trails.md
createdAt: "2026-04-29T19:54:12.271Z"
updatedAt: "2026-04-29T19:54:12.271Z"
tags:
  - human-factors
  - automation-bias
  - human-review
aliases:
  - automation-bias-in-human-review
  - ABIHR
---

# Automation bias in human review

**Automation bias in human review** is the tendency for reviewers to over-rely on automated recommendations, confidence cues, explanations, or generated rationales instead of independently checking the underlying evidence. In closed-loop adjudication settings, this can make human review nominal while the automated system sets the default outcome and the reviewer is left to confirm it. ^[2026-04-29-automation-bias-rationales-reviewers.md, 2026-04-29-meaningful-human-review-audit-trails.md]

This bias is most likely when the reviewer faces high verification complexity, divided attention, uncertainty, unfamiliar tasks, or compressed summaries rather than original evidence. Under these conditions, a review step can become acceptance of the machine’s output, especially when the system presents a clear default recommendation and a fluent rationale. ^[2026-04-29-automation-bias-rationales-reviewers.md]

In AO Radar terms, automation bias is one mechanism behind failure modes such as `AUTOMATED_CERTAINTY`, `FAILURE_TO_ESCALATE`, `DECORATIVE_HUMAN_REVIEW`, and `PROCESS_SAYS_REVIEWED_BUT_NO_MEANINGFUL_REVIEW`. The key issue is not whether a human appears in the workflow, but whether that human has the time, information, authority, incentives, and cognitive posture needed to challenge the automated default. ^[2026-04-29-automation-bias-rationales-reviewers.md, 2026-04-29-meaningful-human-review-audit-trails.md]

Research notes tied to AO Radar emphasize that explanations and confidence scores are not sufficient safeguards on their own. In some studies, explanations increased overreliance when AI advice was wrong, and miscalibrated confidence cues made appropriate reliance harder. [[Cognitive forcing functions]] and other designs can reduce overreliance, but they may also increase effort and lower user satisfaction. ^[2026-04-29-automation-bias-rationales-reviewers.md]

[[Meaningful human review]] therefore requires more than a checkbox or a logged review event. Reviewers need access to the original evidence, discretion and authority to alter the outcome, visible uncertainty and counterevidence, and a path to escalate ambiguous or unsupported cases. Audit trails should be treated as process traces to verify against underlying evidence, not as proof that review was substantive. ^[2026-04-29-meaningful-human-review-audit-trails.md]

Automation bias can be especially hard to spot in exception-only or batch-review workflows. When most cases are auto-processed, the reviewer may lose the attentional posture needed to detect rare failures; when cases are compressed into summaries, the reviewer may be evaluating narrative coherence rather than decision quality. This is why AO Radar treats review mode as an experimental variable rather than assuming human-in-the-loop oversight is always protective. ^[2026-04-29-automation-bias-rationales-reviewers.md]

## Related concepts

- [[Human review modes as experimental variables]]
- [[Meaningful human review, audit trails, and governance standards]]
- [[Audit trail analysis and whitewashing detection]]
- [[Appeals as the first meaningful human authority boundary]]
- [[Closed-loop adjudication pipeline]]
- [[Failure taxonomy for adjudication systems]]

## Sources

- [2026-04-29-automation-bias-rationales-reviewers.md]
- [2026-04-29-meaningful-human-review-audit-trails.md]
