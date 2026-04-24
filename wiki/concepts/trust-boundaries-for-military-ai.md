---
title: Trust Boundaries for Military AI
summary: Operational limits for the assistant include no inventing policy, no autonomous submission, no approval automation, no classified data, and no live integration with official DoD systems.
sources:
  - 2026-04-24-genai-mil-concept-seed.md
createdAt: "2026-04-24T21:22:55.289Z"
updatedAt: "2026-04-24T21:22:55.289Z"
tags:
  - governance
  - security
  - military-ai
aliases:
  - trust-boundaries-for-military-ai
  - TBFMA
---

# Trust Boundaries for Military AI

Trust boundaries for military AI define what the system may do, what it must not do, and where human authority remains mandatory. In the concept source, the intended pattern is a low-side AI assistant that helps personnel turn messy workflow inputs into structured, reviewable drafts while preserving human judgment, command review, and approval authority. The assistant may draft, cite, structure, and flag uncertainty, but it must not approve work, autonomously submit it, invent policy, or bypass review. ^[2026-04-24-genai-mil-concept-seed.md]

A central trust boundary is the approval line. Human review is required before export or submission, and the final artifact is to be exported or submitted by an authorized human path. The source also notes that a supervisor or approver signs off outside or inside the tool, but not by the AI itself. This keeps the system in a support role rather than an autonomous decision-making role. ^[2026-04-24-genai-mil-concept-seed.md]

Another boundary concerns information sources. The assistant should retrieve approved low-side templates, SOPs, policies, and prior examples from a controlled document set, and it may cite those approved references. It must not invent policy, and sensitive or unauthorized information should stay out unless the environment is authorized. ^[2026-04-24-genai-mil-concept-seed.md]

Trust also depends on visibility into uncertainty. The system is expected to mark assumptions, inferred content, missing information, unresolved fields, and low-confidence claims before submission. The source material states that trust can fail if the assistant cannot show sources, assumptions, uncertainty, or review status, so these elements are part of the trust boundary itself rather than optional extras. ^[2026-04-24-genai-mil-concept-seed.md]

The concept is deliberately narrow in scope. It is framed as one workflow, not an all-purpose military copilot, and it excludes classified data, autonomous submission, approval automation, live integration with official DoD systems, personnel decisions, targeting, operational planning, and tactical recommendations. This scope limitation helps keep the assistant inside a bounded support function. ^[2026-04-24-genai-mil-concept-seed.md]

In practice, the workflow is meant to proceed through classification of the request, retrieval of relevant approved references, identification of missing fields, draft generation, uncertainty flagging, and then human review. Trust boundaries for military AI therefore separate drafting assistance from authority, reference use from policy invention, and transparent uncertainty from hidden inference. ^[2026-04-24-genai-mil-concept-seed.md]

## Related concepts

- [[Controlled Reference Retrieval]]
- [[Uncertainty and Assumption Flagging]]
- [[Human Review]]
- [[Draft Review Workspace]]
- [[Approved References]]
- [[Controlled Document Set]]

## Sources

- `2026-04-24-genai-mil-concept-seed.md`
