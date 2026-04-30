---
title: Confidence scores and calibration
summary: Numeric confidence cues can help or harm decision-making depending on whether they are well calibrated and understood by users.
sources:
  - 2026-04-29-automation-bias-rationales-reviewers.md
createdAt: "2026-04-29T19:54:19.547Z"
updatedAt: "2026-04-29T19:54:19.547Z"
tags:
  - confidence
  - calibration
  - ai-governance
aliases:
  - confidence-scores-and-calibration
  - calibration and Confidence scores
  - CSAC
---

# Confidence scores and calibration

Confidence scores are numerical or otherwise explicit indicators attached to an AI recommendation or decision. In AO Radar’s framing, they are useful only when they are calibrated and when users can tell whether the score itself deserves confidence. Miscalibrated confidence can impair appropriate reliance, reduce decision efficacy, and be difficult for users to detect. ^[2026-04-29-automation-bias-rationales-reviewers.md]

Calibration matters because confidence cues can change reviewer behavior. Evidence in the source material shows that miscalibrated AI confidence may increase or decrease trust in ways that do not improve decisions, and that communicating calibration levels can help users detect miscalibration while also pushing them toward under-reliance. AO Radar therefore treats confidence display as something to test, not as an assumption of safety. ^[2026-04-29-automation-bias-rationales-reviewers.md]

In automated adjudication workflows, confidence scores interact with default recommendations, rationale generation, and human review. When the system sets a clear default and presents a high-confidence output, reviewers may anchor on the automated path, especially if verification is complex, workload is high, or the reviewer has limited authority to challenge the result. Under those conditions, confidence can become a signal of credibility rather than a prompt for independent checking. ^[2026-04-29-automation-bias-rationales-reviewers.md]

The sources also warn that explanations and rationales do not reliably correct overreliance. Fluent, policy-shaped rationales can make wrong advice more persuasive, and feature-based explanations can increase overreliance in some settings. More effective designs may use cognitive forcing or evidence-linked explanations that support independent judgment, but these approaches can raise effort and usability costs. ^[2026-04-29-automation-bias-rationales-reviewers.md]

For evaluation, AO Radar maps confidence-related failure patterns to labels such as **AUTOMATED_CERTAINTY**, **FAILURE_TO_ESCALATE**, **RATIONALE_OVERFITTING**, and **POLICY_LAUNDERING**. A good test harness should seed ambiguous or weakly supported cases, vary confidence calibration, and measure whether reviewers override, escalate, or simply accept the automated default. ^[2026-04-29-automation-bias-rationales-reviewers.md]

Calibration should be assessed alongside the human review mode. The sources distinguish meaningful reviewers, exception reviewers, compressed-summary reviewers, decorative reviewers, and appeal-only reviewers, since confidence cues can have different effects depending on whether the reviewer sees underlying evidence, has time to inspect it, and has authority to change the outcome. In this sense, confidence scores are not just model metadata; they are part of the human-authority boundary. ^[2026-04-29-automation-bias-rationales-reviewers.md]

## Related concepts

- [[Human review modes as experimental variables]]
- [[Human authority boundary]]
- [[Automation bias]]
- [[Rationales and overreliance]]
- [[Failure taxonomy for adjudication systems]]
- [[Closed-loop adjudication pipeline]]

## Sources

- [2026-04-29-automation-bias-rationales-reviewers.md]
