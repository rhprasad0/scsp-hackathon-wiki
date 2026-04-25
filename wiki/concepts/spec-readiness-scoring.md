---
title: Spec readiness scoring
summary: A red-yellow-green judgment for deciding when enough repeated evidence has been gathered to stop interviewing and start writing the spec.
sources:
  - 2026-04-24-sme-discovery-plan.md
createdAt: "2026-04-25T16:28:18.384Z"
updatedAt: "2026-04-25T16:28:18.384Z"
tags:
  - spec-writing
  - validation
  - decision-making
aliases:
  - spec-readiness-scoring
  - SRS
---

# Spec readiness scoring

Spec readiness scoring is a simple status model for deciding when enough interview evidence has been gathered to start writing a spec. In the source material, it appears as a three-color indicator: red, yellow, or green. The idea is to track whether discovery is still trying to find a valid wedge, whether the team has enough signal to keep probing, or whether the repeated workflow story is stable enough to move into spec writing. ^[2026-04-24-sme-discovery-plan.md]

The scoring is tied to current-state SME discovery rather than abstract brainstorming. A project is considered more ready when interviews focus on recent concrete workflows, repeated bottlenecks show up across conversations, and trust boundaries are clearer. The discovery plan explicitly says to stop interviewing and pivot to writing when new conversations sharpen the same story instead of changing it. ^[2026-04-24-sme-discovery-plan.md]

The source material also gives a practical threshold for readiness: likely 3+ independent mentions of the same pain point, plus one clear trust boundary. That benchmark is meant to help teams avoid collecting too many weak opinions and instead wait for enough high-signal evidence to support a narrow, reusable spec. ^[2026-04-24-sme-discovery-plan.md]

In this workflow, the score is supported by lightweight interview practices such as asking for a recent concrete case, capturing role, workflow trigger, step-by-step flow, artifacts, bottlenecks, trust boundaries, and open questions, then promoting raw notes into curated notes right away. Related concepts include [[Current-State Workflow Interviewing]], [[AI-assisted spec with human review]], and [[Scoped Prototype Wedge]]. ^[2026-04-24-sme-discovery-plan.md, 2026-04-24-hackathon-operating-context.md, 2026-04-24-genai-mil-concept-seed.md]

## Sources

- [2026-04-24-sme-discovery-plan.md]
