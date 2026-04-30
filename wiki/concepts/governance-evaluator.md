---
title: Governance evaluator
summary: A second-layer evaluation component that tests whether a system has actual accountability, stop paths, bounded use, and independent assurance beyond the correctness of the decision itself.
sources:
  - 2026-04-30-dod-ai-policy-bonfire.md
createdAt: "2026-04-30T00:45:30.731Z"
updatedAt: "2026-04-30T00:45:30.731Z"
tags:
  - evaluation
  - governance
  - testing
aliases:
  - governance-evaluator
---

# Governance evaluator

A **governance evaluator** is a second-layer evaluator in a synthetic adjudication harness that checks whether an automated system is operating within its intended governance boundaries, not just whether it produced a plausible decision. In AO Radar, this layer is added beyond the decision evaluator to test for accountable human ownership, bounded use, stop or disengage paths, and whether any compliance claims are independently verified rather than self-certified. ^[2026-04-30-dod-ai-policy-bonfire.md]

The governance evaluator focuses on legitimacy and authority. It asks whether a responsible human or accountable institution owns final action, whether the system stayed inside its defined use, whether humans had evidence access and independent judgment, and whether audit trails show real comprehension or only procedural activity. It also checks whether assurance artifacts are independent from the specimen being evaluated. ^[2026-04-30-dod-ai-policy-bonfire.md]

This concept is meant for synthetic, controlled evaluation only. The source material frames it as part of a failure lab for autonomous adjudication specimens that may generate paperwork resembling compliance while erasing the [[Human authority boundary]] those artifacts are supposed to protect. It should not be read as a production workflow tool or as a claim about real DoD systems. ^[2026-04-30-dod-ai-policy-bonfire.md]

In practice, the governance evaluator sits alongside decision evaluation rather than replacing it. Decision evaluation checks evidence support, escalation behavior, invented facts or citations, policy-to-fact alignment, and confidence calibration. Governance evaluation then examines whether the broader socio-technical setup is legitimate: whether there is a real accountable party, a meaningful stop path, and governance that is more than theater. ^[2026-04-30-dod-ai-policy-bonfire.md]

The source material associates this evaluator with failure modes such as `RAI_THEATER`, `SELF_CERTIFIED_COMPLIANCE`, `AUTHORITY_BOUNDARY_ERASURE`, `AUTONOMOUS_FINALITY`, `RESPONSIBILITY_WITHOUT_RESPONSIBLE_PARTY`, `TRACEABILITY_WITHOUT_COMPREHENSION`, `RELIABILITY_CLAIM_OUTSIDE_DEFINED_USE`, `GOVERNABILITY_CLAIM_WITHOUT_STOP_PATH`, `AUDITABILITY_AS_LEGITIMACY_LAUNDERING`, `HUMAN_JUDGMENT_SIMULATION`, `FAIL_SAFE_ERASURE`, `USE_CASE_BOUNDARY_COLLAPSE`, `ASSURANCE_THEATER`, and `JUDGMENT_COLLAPSED_INTO_SCORING`. These labels are intended to make governance failures legible in evaluation output. ^[2026-04-30-dod-ai-policy-bonfire.md]

A governance evaluator can also expose situations where the system produces a Responsible AI self-assessment or compliance report on its own. In the source example, a specimen marks Responsible, Traceable, Reliable, and Governable as “PASS” without independent review, and the evaluator flags that as [[Self-certified compliance]] and authority-boundary erasure. ^[2026-04-30-dod-ai-policy-bonfire.md]

## Related concepts

- [[AO Radar closed-loop adjudication failure lab]]
- [[Audit trail analysis and whitewashing detection]]
- [[Human review modes as experimental variables]]
- [[Human authority boundary]]
- [[Closed-loop adjudication pipeline]]
- [[Failure taxonomy for adjudication systems]]

## Sources

- [2026-04-30-dod-ai-policy-bonfire.md]
