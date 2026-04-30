---
title: AI Test and Evaluation Frameworks
summary: CDAO guidance for evaluating AI-enabled capabilities across model, systems integration, operational, and human-systems-integration layers, including bias, robustness, uncertainty, authority, and accountability.
sources:
  - 2026-04-30-dod-ai-policy-bonfire.md
createdAt: "2026-04-30T10:43:40.772Z"
updatedAt: "2026-04-30T10:43:40.772Z"
tags:
  - testing
  - evaluation
  - ai-systems
aliases:
  - ai-test-and-evaluation-frameworks
  - Evaluation Frameworks and AI Test
  - ATAEF
---

# AI Test and Evaluation Frameworks

AI test and evaluation frameworks are structured approaches for assessing AI-enabled capabilities across multiple layers, not just by checking whether a model’s output is correct. The source material distinguishes model T&E, systems integration T&E, operational T&E, and human systems integration T&E, emphasizing that evaluation should cover the full socio-technical loop, including decision quality, uncertainty, authority, accountability, and human review behavior. ^[2026-04-30-dod-ai-policy-bonfire.md]

A core theme is that correctness is only one part of evaluation. The source material says model T&E should also consider bias, interpretability, robustness, drift, uncertainty, resilience, representativeness, latency, and documentation, while systems-level and human-centered evaluations examine whether AI helps stakeholders observe, orient, make informed decisions, and carry out missions. ^[2026-04-30-dod-ai-policy-bonfire.md]

These frameworks are especially important for closed-loop adjudication and other workflow automation settings, where a system may ingest a case, score it, generate a rationale, produce an audit trail, and optionally route it to a human. In that context, the source material warns that a workflow can look complete while still failing to preserve meaningful human authority, escalation, or contestability. Related concepts include [[closed-loop adjudication failure lab]], [[closed-loop adjudication pipeline]], and [[workflow automation]]. ^[2026-04-29-ao-radar-product-reset.md, 2026-04-30-dod-ai-policy-bonfire.md]

The source material also frames governance as a distinct evaluation target. A good framework should test whether a responsible human or accountable institution retains final authority, whether a stop or disengage path exists, whether assurance artifacts are independent, and whether the system stays within its defined use. It warns that self-certification, traceability theater, and procedural completeness can create a false sense of legitimacy if they are not backed by actual human comprehension and control. Related concepts include [[audit trail limits]], [[automation bias]], and [[autonomous adjudication]]. ^[2026-04-30-dod-ai-policy-bonfire.md, 2026-04-29-meaningful-human-review-audit-trails.md, 2026-04-29-automation-bias-rationales-reviewers.md]

Human systems integration is another major concern. The source material notes that offloading work to AI makes HSI more important, not less, and that a clever interface cannot fix a poorly designed socio-technical system. Relevant factors include goals, incentives, procedures, infrastructure, culture, data quality, training, expertise, authority, accountability, and autonomy. ^[2026-04-30-dod-ai-policy-bonfire.md]

In practice, test and evaluation frameworks in the source material are meant to expose failure modes such as unsupported denial, unsupported approval, [[Failure to Escalate]], invented facts, invented citations, [[Policy Laundering]], automated certainty, [[Decorative Human Review]], audit-log whitewash, and self-certified compliance. The overall purpose is to determine whether an AI system is merely producing plausible artifacts or is actually operating within bounded, governable, and reviewable limits. ^[2026-04-29-ao-radar-product-reset.md, 2026-04-29-automation-bias-rationales-reviewers.md]

## Related concepts

- [[closed-loop adjudication failure lab]]
- [[closed-loop adjudication pipeline]]
- [[autonomous adjudication]]
- [[automation bias]]
- [[audit trail limits]]
- [[human-in-the-loop]]
- [[workflow automation]]
- [[responsible AI]]

## Sources

- `2026-04-30-dod-ai-policy-bonfire.md`
- `2026-04-29-ao-radar-product-reset.md`
- `2026-04-29-meaningful-human-review-audit-trails.md`
- `2026-04-29-automation-bias-rationales-reviewers.md`
