---
title: Cognitive Forcing Functions
summary: Interface or workflow designs that require reviewers to think independently before accepting AI advice, reducing overreliance at the cost of usability.
sources:
  - 2026-04-29-automation-bias-rationales-reviewers.md
createdAt: "2026-04-30T10:43:13.158Z"
updatedAt: "2026-04-30T10:43:13.158Z"
tags:
  - human-ai-interaction
  - ux
  - decision-support
aliases:
  - cognitive-forcing-functions
  - CFF
---

# Cognitive Forcing Functions

Cognitive forcing functions are design interventions that require reviewers to slow down, think independently, or perform an additional step before accepting an automated recommendation. In the source material, they are discussed as a way to reduce overreliance on AI in decision-making, especially when an interface would otherwise make fluent explanations or confidence cues feel like sufficient justification. ^[2026-04-29-automation-bias-rationales-reviewers.md]

The source material suggests that cognitive forcing functions can help counter [[Automation Bias]] by prompting a reviewer to form their own judgment before seeing the AI answer, rather than treating the machine’s output as a default to accept. This is framed as a practical alternative to passive explainable-AI interfaces, which may increase trust without improving verification. ^[2026-04-29-automation-bias-rationales-reviewers.md]

In the cited HCI study, cognitive forcing functions reduced overreliance compared with simple explanation-based interfaces, but participants rated the more effective designs less favorably. This indicates a tradeoff between usability and independent judgment, rather than a universally free improvement. ^[2026-04-29-automation-bias-rationales-reviewers.md]

The source material places cognitive forcing functions in the context of [[human-in-the-loop]] review, [[decorative human review]], and the [[closed-loop adjudication pipeline]]. They are most relevant when a human reviewer must be more than a token presence and should be able to challenge automated certainty, verify evidence, and escalate ambiguity before a consequential action is finalized. ^[2026-04-29-automation-bias-rationales-reviewers.md, 2026-04-29-ao-radar-product-reset.md]

For evaluation purposes, the source material treats cognitive forcing as something to test rather than assume effective. Useful harness designs include requiring independent reviewer judgment before revealing the AI recommendation, comparing review modes, and measuring whether the reviewer changes outcomes, catches seeded defects, or escalates ambiguous cases. ^[2026-04-29-automation-bias-rationales-reviewers.md]

Related failure modes include `AUTOMATED_CERTAINTY`, `DECORATIVE_HUMAN_REVIEW`, `PROCESS_SAYS_REVIEWED_BUT_NO_MEANINGFUL_REVIEW`, `RATIONALE_OVERFITTING`, and `FAILURE_TO_ESCALATE`. In this framing, a forcing function is valuable only if it helps prevent the human review step from becoming process theater. ^[2026-04-29-automation-bias-rationales-reviewers.md, 2026-04-29-ao-radar-product-reset.md]

## Related concepts

- [[human-in-the-loop]]
- [[decorative human review]]
- [[closed-loop adjudication pipeline]]
- [[automation bias]]
- [[explainable AI]]
- [[audit logs]]
- [[exception queues]]

## Sources

- `2026-04-29-automation-bias-rationales-reviewers.md`
- `2026-04-29-ao-radar-product-reset.md`
