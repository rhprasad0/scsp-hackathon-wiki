---
title: Cognitive forcing functions
summary: Interface or workflow designs that require independent judgment before seeing or accepting AI output can reduce overreliance, though often at a usability cost.
sources:
  - 2026-04-29-automation-bias-rationales-reviewers.md
createdAt: "2026-04-29T19:54:18.179Z"
updatedAt: "2026-04-29T19:54:18.179Z"
tags:
  - hci
  - decision-support
  - mitigation
aliases:
  - cognitive-forcing-functions
  - CFF
---

# Cognitive forcing functions

**Cognitive forcing functions** are design mechanisms that prompt reviewers to slow down, think independently, and actively verify automated outputs rather than accepting them by default. In AO Radar’s research framing, they are discussed as a way to reduce overreliance on AI advice, especially when explanations or confidence cues might otherwise make wrong recommendations more persuasive. ^[2026-04-29-automation-bias-rationales-reviewers.md]

These functions are relevant in closed-loop adjudication settings where automation sets a default recommendation and human review can become nominal. The goal is to create conditions where the reviewer must apply independent judgment, detect seeded defects, and decide whether to override or escalate, rather than simply confirming the machine’s output. ^[2026-04-29-automation-bias-rationales-reviewers.md]

Research notes associated with AO Radar report that simple explanations do not reliably reduce overreliance, and may sometimes increase it. By contrast, cognitive forcing functions can reduce overreliance compared with explainable-AI interfaces, though they may also increase effort and reduce user satisfaction. ^[2026-04-29-automation-bias-rationales-reviewers.md]

In this framing, a cognitive forcing function is not the same as a generic review checkbox. It is useful when the reviewer has the time, information, authority, incentives, and cognitive posture needed to challenge the automated default. Without those conditions, review can remain decorative even if a forcing step is present. ^[2026-04-29-automation-bias-rationales-reviewers.md]

AO Radar would treat cognitive forcing functions as part of a broader human-review experiment, alongside review modes such as meaningful reviewer, exception reviewer, compressed-summary reviewer, decorative reviewer, and appeal-only reviewer. The key question is whether the design changes the outcome path in meaningful cases, especially ambiguous or weakly supported packets that should trigger escalation. ^[2026-04-29-automation-bias-rationales-reviewers.md]

## Related concepts

- [[Automation bias in human review]]
- [[Human review modes as experimental variables]]
- [[Appeals as the first meaningful human authority boundary]]
- [[Audit trail analysis and whitewashing detection]]
- [[Closed-loop adjudication pipeline]]
- [[Failure taxonomy for adjudication systems]]

## Sources

- [2026-04-29-automation-bias-rationales-reviewers.md]
