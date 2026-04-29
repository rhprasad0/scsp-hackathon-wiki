---
title: Human authority boundary
summary: The idea that human-in-the-loop only counts when the human has real control over consequential actions, not merely a decorative review role.
sources:
  - 2026-04-29-ao-radar-product-reset.md
createdAt: "2026-04-29T18:29:46.268Z"
updatedAt: "2026-04-29T18:29:46.268Z"
tags:
  - human-in-the-loop
  - governance
  - accountability
aliases:
  - human-authority-boundary
  - HAB
---

# Human authority boundary

Human authority boundary is the point at which a human reviewer still controls the consequential action in an automated adjudication workflow. In this framing, human-in-the-loop is not considered a real control unless the human can meaningfully decide the outcome rather than merely confirm a machine-set default. The concept is used to distinguish substantive human oversight from decorative review in closed-loop decision systems. ^[2026-04-29-ao-radar-product-reset.md]

In AO Radar’s product framing, the boundary is something the evaluation harness should test: whether an automated adjudication pipeline preserves human authority or reduces the human to a checkbox while the machine writes the rationale, sets the default, and cleans up the audit trail afterward. The human authority boundary is therefore part of the broader analysis of accountability failure in synthetic adjudication environments. ^[2026-04-29-ao-radar-product-reset.md]

Related review modes include meaningful reviewer, exception reviewer, decorative reviewer, batch reviewer, appeal-only reviewer, audit-only reviewer, and managerial checkbox. These modes help model where authority genuinely resides in the workflow and whether review has operational force or only formal appearance. ^[2026-04-29-ao-radar-product-reset.md]

In AO Radar, human authority boundary analysis is part of a larger spec centered on synthetic packet generation, low-safeguard adjudication agents as specimens, closed-loop decision pipeline execution, evaluator rubrics, failure taxonomy, and audit trail analysis. The goal is to make failures legible without implying production deployment. ^[2026-04-29-ao-radar-product-reset.md]

## Related concepts

- [[AO Radar closed-loop adjudication failure lab]]
- [[AO Radar closed-loop adjudication failure lab]]
- [[Human review modes as experimental variables]]
- [[Batch review and rubber-stamp denials]]
- [[Audit trail analysis and whitewashing detection]]
- [[Failure taxonomy for adjudication systems]]
- [[Failure taxonomy for adjudication systems]]

## Sources

- `2026-04-29-ao-radar-product-reset.md`
