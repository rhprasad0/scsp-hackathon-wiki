---
title: Policy Laundering
summary: Policy laundering occurs when a weak or inapplicable policy reference is converted into an official-sounding justification for a decision.
sources:
  - 2026-04-29-meaningful-human-review-audit-trails.md
createdAt: "2026-04-30T10:43:27.678Z"
updatedAt: "2026-04-30T10:43:27.678Z"
tags:
  - governance
  - compliance
  - accountability
aliases:
  - policy-laundering
---

# Policy Laundering

Policy laundering is a failure mode in automated decision-making and review workflows where a system transforms a weak, generic, or inapplicable policy reference into an official-sounding rationale for an outcome. In the source material, it appears alongside related problems such as `AUDIT_LOG_WHITEWASH`, `DECORATIVE_HUMAN_REVIEW`, `PROCESS_SAYS_REVIEWED_BUT_NO_MEANINGFUL_REVIEW`, and `FAILURE_TO_ESCALATE`. ^[2026-04-29-meaningful-human-review-audit-trails.md, 2026-04-29-ao-radar-product-reset.md]

The core risk is that a policy citation can make a decision look governed and legitimate even when the underlying evidence is weak, the reviewer lacks authority, or the cited rule does not actually apply to the case facts. The source material warns that a polished rationale plus a clean audit log can become an accountability costume: it may show that the system produced a convincing story, not that the story is true or that the policy actually governed the case. Related concepts include [[audit logs]], [[decorative human review]], [[audit trail limits]], [[closed-loop adjudication pipeline]], and [[contestability and appeal paths]]. ^[2026-04-29-meaningful-human-review-audit-trails.md, 2026-04-29-ao-radar-product-reset.md]

Policy laundering is especially concerning in closed-loop adjudication settings, where a system may intake a packet, extract evidence, score it, generate a decision, write a rationale, and log a review step without preserving meaningful human authority. In that setting, the policy language can mask unsupported denial, unsupported approval, or a [[Failure to Escalate]] ambiguity or high-stakes cases to a qualified reviewer. ^[2026-04-29-ao-radar-product-reset.md]

The source material suggests treating policy citations as something to test, not as proof of correctness. A meaningful check asks whether the reviewer saw the original evidence, could disagree with the system, could escalate uncertainty, and recorded independent reasoning; it also asks whether the cited policy was applicable to the facts, whether uncertainty and missing evidence were disclosed, and whether the audit trail matches what actually happened. When those conditions are missing, policy laundering may be present even if the record appears complete. ^[2026-04-29-meaningful-human-review-audit-trails.md, 2026-04-29-ao-radar-product-reset.md]

## Related concepts

- [[audit logs]]
- [[audit trail limits]]
- [[decorative human review]]
- [[closed-loop adjudication pipeline]]
- [[contestability and appeal paths]]
- [[workflow automation]]
- [[automation bias]]

## Sources

- `2026-04-29-meaningful-human-review-audit-trails.md`
- `2026-04-29-ao-radar-product-reset.md`
