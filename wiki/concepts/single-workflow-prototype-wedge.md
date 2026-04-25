---
title: Single-workflow prototype wedge
summary: The recommended prototype shape is one narrowly scoped workflow rather than an all-purpose military copilot.
sources:
  - 2026-04-24-genai-mil-concept-seed.md
createdAt: "2026-04-25T16:27:52.960Z"
updatedAt: "2026-04-25T16:27:52.960Z"
tags:
  - product-strategy
  - hackathon
  - scope
aliases:
  - single-workflow-prototype-wedge
  - SPW
---

# Single-workflow prototype wedge

A single-workflow prototype wedge is a design approach that narrows a project to one real workflow, one clear output, and one bounded demo. In the source material, this is presented as the preferred shape for a prototype: not an all-purpose assistant, but a focused system that helps with a specific administrative or logistics task while preserving human judgment and approval authority. ^[2026-04-24-genai-mil-concept-seed.md]

The wedge is intentionally narrow. It starts from a routine task where people struggle with manual form filling, repeated status updates, fragmented guidance, or tribal knowledge, and then adds AI support for drafting, retrieval, and structuring without crossing trust boundaries. The assistant may classify requests, retrieve approved references, identify missing fields, generate a draft artifact, and flag uncertainty, but it must not approve, autonomously submit, invent policy, or bypass review. ^[2026-04-24-genai-mil-concept-seed.md]

In practice, the workflow is meant to produce a correct first draft faster. Users describe the task in plain language, the system retrieves relevant approved templates, SOPs, policies, or prior examples from a controlled document set, and the result is a structured draft that marks assumptions, inferred content, missing information, and low-confidence claims for human review. ^[2026-04-24-genai-mil-concept-seed.md]

This approach fits a broader pattern of [[AI-assisted spec with human review]] and [[Boring workflow, spicy mechanism]]. The “boring” part is the constrained, operationally legible workflow; the “spicy” part is the technical mechanism underneath, such as controlled retrieval, citations, structured drafting, and reviewable outputs. ^[2026-04-24-genai-mil-concept-seed.md, 2026-04-25-organizer-judging-signal.md]

The source material emphasizes several guardrails: human review is required before export or submission, users must be able to see sources and unresolved fields, and the prototype scope should exclude classified data, autonomous submission, approval automation, live integration with official DoD systems, personnel decisions, targeting, operational planning, and tactical recommendations. In this framing, the wedge is useful because it stays close to a believable user pain point while remaining small enough to build and demo well. ^[2026-04-24-genai-mil-concept-seed.md]

Related concepts include [[Controlled Reference Retrieval]], [[Human-in-the-Loop Review and Approval]], [[Citations and missing-field visibility]], [[Back-office military workflow use cases]], and [[Administrative trenches as the GenAI.mil problem frame]]. ^[2026-04-24-genai-mil-concept-seed.md, 2026-04-25-genai-mil-challenge-prompt-and-rubric.md]

## Sources

- [2026-04-24-genai-mil-concept-seed.md]
- [2026-04-25-organizer-judging-signal.md]
- [2026-04-25-genai-mil-challenge-prompt-and-rubric.md]
