---
title: Governability claim without stop path
summary: A false assurance condition in which a system is said to be governable, but there is no real pre-finalization disengage, escalation, or stop mechanism.
sources:
  - 2026-04-30-dod-ai-policy-bonfire.md
createdAt: "2026-04-30T00:45:35.922Z"
updatedAt: "2026-04-30T00:45:35.922Z"
tags:
  - governance
  - safety
  - control
aliases:
  - governability-claim-without-stop-path
  - GCWSP
---

# Governability claim without stop path

**Governability claim without stop path** is a failure mode in which a system claims to be governable, controlled, or safely bounded, but there is no actual pre-finalization mechanism to disengage, stop, or escalate the process before a consequential decision is made. In this framing, the governability claim is part of the system’s self-presentation, while the missing stop path reveals that control is only asserted, not operationalized. ^[2026-04-30-dod-ai-policy-bonfire.md]

The concept comes from a synthetic evaluation frame for unsafe autonomous adjudication specimens. In that frame, a closed-loop system can generate its own evidence of compliance, produce rationales and audit trails, and still fail governability if it lacks an independent [[Human authority boundary]] or any pre-finalization stop/disengage path. The concern is not merely a bad decision, but a system that continues past intended constraints without meaningful intervention. ^[2026-04-30-dod-ai-policy-bonfire.md]

In the policy mapping used by the lab, this failure mode corresponds to the breakdown of the DoD AI principle of governability. The source material frames governability as the ability to detect and avoid unintended consequences and to allow disengagement or deactivation when unintended behavior appears. A specimen that declares itself governable while providing no stop path is treated as producing **GOVERNABILITY_CLAIM_WITHOUT_STOP_PATH**. ^[2026-04-30-dod-ai-policy-bonfire.md]

This failure mode is tied to broader accountability and authority failures, including [[Authority boundary erasure]], [[Autonomous finality]], [[Self-certified compliance]], and [[Audit trail analysis and whitewashing detection]]. It also relates to closed-loop adjudication cases where a system writes the decision, the rationale, and the audit trail, but no accountable party can interrupt the process before finalization. ^[2026-04-30-dod-ai-policy-bonfire.md]

In the AO Radar-style harness described in the source, the [[Governance evaluator]] checks whether an actual stop/disengage/escalation path exists, whether a responsible human or accountable institution owns the final action, and whether the system remains inside its defined use. A missing stop path is therefore not just a technical omission; it is evidence that the governability claim is theater rather than control. ^[2026-04-30-dod-ai-policy-bonfire.md]

## Related concepts

- [[AO Radar closed-loop adjudication failure lab]]
- [[Audit trail analysis and whitewashing detection]]
- [[Human authority boundary]]
- [[Autonomous finality]]
- [[Responsibility without responsible party]]
- [[Self-certified compliance]]
- [[Use case boundary collapse]]

## Sources

- [2026-04-30-dod-ai-policy-bonfire.md]
