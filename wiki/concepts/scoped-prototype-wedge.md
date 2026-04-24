---
title: Scoped Prototype Wedge
summary: The recommended implementation strategy is a narrowly scoped single workflow rather than a general-purpose military copilot, to reduce complexity and improve deliverability.
sources:
  - 2026-04-24-genai-mil-concept-seed.md
createdAt: "2026-04-24T21:22:54.441Z"
updatedAt: "2026-04-24T21:22:54.441Z"
tags:
  - product-strategy
  - scope
  - prototype
aliases:
  - scoped-prototype-wedge
  - SPW
---

# Scoped Prototype Wedge

A Scoped Prototype Wedge is a narrowly defined prototype pattern for AI-assisted workflow drafting: instead of building an all-purpose assistant, the system focuses on one specific workflow with clear boundaries, approved references, and a human review path. In the source material, the preferred wedge is a low-side assistant that turns messy workflow inputs into structured, reviewable drafts for routine administrative or logistics artifacts, helping produce a correct first draft faster while preserving human judgment, command review, and approval authority. ^[2026-04-24-genai-mil-concept-seed.md]

The wedge is intentionally constrained. The assistant retrieves approved low-side templates, SOPs, policies, and prior examples from a controlled document set, then classifies the request, identifies missing fields, generates a structured draft artifact, and marks assumptions, inferred content, missing information, and low-confidence claims. It may draft, cite, structure, and flag uncertainty, but it must not approve, autonomously submit, invent policy, or bypass review. ^[2026-04-24-genai-mil-concept-seed.md]

The prototype flow is designed around human oversight. A requester describes a routine admin or logistics task in plain language, the system retrieves relevant approved references, asks for required missing fields, and produces a draft in the expected format. A human reviewer then edits, accepts, rejects, or asks follow-up questions, and a supervisor or approver signs off outside or inside the tool before the final artifact is exported or submitted by an authorized human path. ^[2026-04-24-genai-mil-concept-seed.md]

This approach is meant to improve trust and reduce rework without widening scope. The source material notes common bottlenecks such as manual form filling, repeated status updates, fragmented guidance, tribal knowledge, wrong format, unclear routing, missing fields, and ungrounded assumptions. It also emphasizes that trust can fail if the assistant cannot show sources, assumptions, uncertainty, or review status, so the output must remain reviewable rather than autonomous. ^[2026-04-24-genai-mil-concept-seed.md]

Prototype scope excludes classified data, autonomous submission, approval automation, live integration with official DoD systems, personnel decisions, targeting, operational planning, and tactical recommendations. Related concepts include [[AI-assisted workflow drafting]], [[controlled reference retrieval]], [[human review]], [[controlled document set]], [[approved templates]], [[SOPs]], [[policy retrieval]], and [[draft review workspace]]. ^[2026-04-24-genai-mil-concept-seed.md]

## Sources

- [2026-04-24-genai-mil-concept-seed.md]
