---
title: Human authority boundary
summary: Human-in-the-loop only counts when the human actually controls the consequential action rather than serving as a decorative reviewer.
sources:
  - 2026-04-29-ao-radar-product-reset.md
  - 2026-04-29-meaningful-human-review-audit-trails.md
createdAt: "2026-04-29T18:29:46.268Z"
updatedAt: "2026-04-29T19:54:06.894Z"
tags:
  - human-in-the-loop
  - governance
  - adjudication
aliases:
  - human-authority-boundary
  - HAB
---

---
title: Human authority boundary
summary: The point in an automated adjudication workflow where human review still has real control over the consequential action, rather than functioning as a decorative checkbox.
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

Human authority boundary is the point in a closed-loop adjudication workflow where a human still controls the consequential action. In AO Radar’s framing, human-in-the-loop does not count as real control unless the human can meaningfully decide the outcome rather than merely confirm a machine-set default. The concept distinguishes substantive human oversight from decorative review in automated adjudication systems. ^[2026-04-29-ao-radar-product-reset.md]

AO Radar treats the boundary as something the evaluation harness should test: whether an automated adjudication pipeline preserves human authority or instead turns the human into a checkbox while the machine sets the default, writes the rationale, and cleans up the audit trail afterward. This makes the human authority boundary part of a broader analysis of accountability failure in synthetic adjudication environments. ^[2026-04-29-ao-radar-product-reset.md]

Related review modes help locate where authority actually resides in the workflow. These include meaningful reviewer, exception reviewer, decorative reviewer, batch reviewer, appeal-only reviewer, audit-only reviewer, and managerial checkbox. They are used to determine whether review has operational force or only a formal appearance. ^[2026-04-29-ao-radar-product-reset.md]

In AO Radar, human authority boundary analysis sits within a larger synthetic evaluation spec centered on packet generation, low-safeguard adjudication agents as specimens, closed-loop decision pipeline execution, evaluator rubrics, failure taxonomy, and audit trail analysis. The goal is to make failures legible without implying production deployment. ^[2026-04-29-ao-radar-product-reset.md]

## Related concepts

- [[AO Radar closed-loop adjudication failure lab]]
- [[Human review modes as experimental variables]]
- [[Batch review and rubber-stamp denials]]
- [[Audit trail analysis and whitewashing detection]]
- [[Failure taxonomy for adjudication systems]]

## Sources

- `2026-04-29-ao-radar-product-reset.md`
