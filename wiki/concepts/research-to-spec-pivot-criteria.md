---
title: Research-to-Spec Pivot Criteria
summary: A decision rule to stop discovery and pivot to spec writing when new interviews reinforce the same story instead of revealing new information.
sources:
  - 2026-04-24-sme-discovery-plan.md
createdAt: "2026-04-24T21:23:10.472Z"
updatedAt: "2026-04-24T21:23:10.472Z"
tags:
  - decision-making
  - research
  - specification
  - product-management
aliases:
  - research-to-spec-pivot-criteria
  - RPC
---

# Research-to-Spec Pivot Criteria

Research-to-Spec Pivot Criteria are the practical conditions used to decide when discovery work has gathered enough signal to stop interviewing and start writing a spec. In the described workflow, the pivot happens when repeated conversations sharpen the same story instead of changing it, and when current-state workflows, pain points, and trust boundaries have been confirmed often enough to support a narrow, evidence-backed direction. ^[2026-04-24-sme-discovery-plan.md, 2026-04-24-hackathon-operating-context.md]

A key criterion is repetition with stability. The source material suggests moving toward spec writing once the same pain points and trust boundaries are repeatedly confirmed, with a practical minimum of three independent mentions of the same pain point plus one clear trust boundary. At that point, the team can treat the evidence as sufficient to narrow to a candidate wedge rather than continue broad discovery. ^[2026-04-24-sme-discovery-plan.md]

Another criterion is that the interviews should be grounded in recent concrete workflows rather than abstract opinions. The discovery process should have captured role or perspective, workflow trigger, step-by-step flow, artifacts, bottlenecks, trust boundaries, and open questions, and the team should have used prompts like “Walk me through the last time this happened” to keep the evidence current-state and actionable. ^[2026-04-24-sme-discovery-plan.md]

The pivot also depends on whether additional conversations are still changing the shape of the problem. The source material says to stop interviewing and pivot to writing when new conversations sharpen the same story instead of changing it. This is intended to prevent solution drift, over-collection of weak opinions, and prototype sprawl. ^[2026-04-24-sme-discovery-plan.md, 2026-04-24-hackathon-operating-context.md]

The output of the research phase should be curated and reviewable before the pivot. Raw notes, screenshots, voice notes, or speech-to-text should be promoted into short structured redacted curated notes, then compiled into the wiki and queried for repeated pain points, workflows, artifacts, trust boundaries, and candidate wedges. The wiki is a working-memory layer for synthesis, not a public source of truth. ^[2026-04-24-hackathon-operating-context.md, 2026-04-24-sme-discovery-plan.md]

A successful pivot should preserve human judgment and review. Any spec draft should remain narrow, evidence-backed, and sanitized, with clear visibility into sources, assumptions, unresolved fields, uncertainty, and review status before anything is submitted. The AI may assist with drafting and structuring, but it must not invent operational facts or bypass human approval. ^[2026-04-24-hackathon-operating-context.md, 2026-04-24-genai-mil-concept-seed.md]

Related concepts include [[Current-State Workflow Interviewing]], [[Evidence-backed Synthesis over Prototype Sprawl]], [[Curated markdown as durable source material]], [[AI-assisted spec with human review]], and [[spec readiness score]]. ^[2026-04-24-sme-discovery-plan.md, 2026-04-24-hackathon-operating-context.md]

## Sources

- [2026-04-24-sme-discovery-plan.md]
- [2026-04-24-hackathon-operating-context.md]
- [2026-04-24-genai-mil-concept-seed.md]
