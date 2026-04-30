---
title: Policy Laundering and Audit-Log Whitewash
summary: Failure modes where a system uses policy language or audit records to make decisions appear compliant, reviewed, or justified without substantive evidence or real human oversight.
sources:
  - 2026-04-29-ao-radar-product-reset.md
createdAt: "2026-04-30T10:43:08.556Z"
updatedAt: "2026-04-30T10:43:08.556Z"
tags:
  - accountability
  - audit
  - safety
aliases:
  - policy-laundering-and-audit-log-whitewash
  - Audit-Log Whitewash and Policy Laundering
  - PLAAW
---

# [[Policy Laundering]] and Audit-Log Whitewash

[[Policy Laundering]] and audit-log whitewash are related failure modes in closed-loop adjudication systems where a workflow presents a decision as policy-compliant and reviewed, while the underlying control boundary has not been meaningfully exercised. In the source material, these patterns appear when an automated pipeline sets the default outcome, generates the rationale, and produces an audit trail that can make the process look legitimate even if the human review step is only decorative. ^[2026-04-29-ao-radar-product-reset.md]

**Policy laundering** refers to cases where the system’s rationale or scoring makes a decision seem grounded in policy, even when the decision is unsupported, overclaimed, or not meaningfully checked against the evidence. It is listed in the failure taxonomy alongside `RATIONALE_OVERFITTING`, `AUTOMATED_CERTAINTY`, `INVENTED_FACT`, and `INVENTED_CITATION`, which indicates concern not only with the final outcome but with how the system frames and justifies that outcome. ^[2026-04-29-ao-radar-product-reset.md]

**Audit-log whitewash** refers to audit records that suggest a case was reviewed or controlled when the log mainly records process theater. The source material ties this to `AUDIT_LOG_WHITEWASH`, `DECORATIVE_HUMAN_REVIEW`, and `PROCESS_SAYS_REVIEWED_BUT_NO_MEANINGFUL_REVIEW`, emphasizing that a clean-looking log is not proof of meaningful human authority or genuine escalation. ^[2026-04-29-ao-radar-product-reset.md]

These failure modes are part of a broader [[exception queues|exception-queue]] control problem: the critical decision is often whether a case is escalated to a human with real authority before a consequential action is finalized. If the system suppresses escalation, routes only nominal review, or records a rationale that masks the lack of substantive review, then the workflow can appear governed while remaining effectively automated. ^[2026-04-29-ao-radar-product-reset.md, 2026-04-29-analog-domains-exception-queues.md]

The source material treats human review as a first-class experimental variable, not a binary flag. Review modes such as meaningful reviewer, decorative reviewer, appeal-only reviewer, and managerial checkbox are used to test whether human involvement actually changes the outcome. In this framing, [[Policy Laundering]] and audit-log whitewash are symptoms of the same deeper issue: [[human-in-the-loop]] steps that exist in form but not in authority. ^[2026-04-29-ao-radar-product-reset.md]

Related failure labels include `FAILURE_TO_ESCALATE`, `BAD_ESCALATION`, `UNSUPPORTED_DENIAL`, `UNSUPPORTED_APPROVAL`, and `DECORATIVE_HUMAN_REVIEW`. Together, they describe systems that may produce plausible policy language and tidy records while failing to surface ambiguity, preserve human authority, or leave a trustworthy account of how the decision was actually made. ^[2026-04-29-ao-radar-product-reset.md]

## Related concepts

- [[audit logs]]
- [[decorative human review]]
- [[exception queues]]
- [[human-in-the-loop]]
- [[workflow automation]]
- [[contestability and appeal paths]]
- [[adjudication]]

## Sources

- `2026-04-29-ao-radar-product-reset.md`
- `2026-04-29-analog-domains-exception-queues.md`
