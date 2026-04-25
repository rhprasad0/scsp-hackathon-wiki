---
title: Cross-cutting RAI and deployment constraints for GenAI.mil prototypes
summary: Prototypes should honor DoD responsible-AI principles, use traceable and reliable outputs, and avoid overclaiming production deployment or automated official-system actions.
sources:
  - 2026-04-25-genai-mil-user-workflows-and-trust-boundaries.md
createdAt: "2026-04-25T17:07:57.452Z"
updatedAt: "2026-04-25T17:07:57.452Z"
tags:
  - responsible-ai
  - deployment
  - doD
aliases:
  - cross-cutting-rai-and-deployment-constraints-for-genaimil-prototypes
  - deployment constraints for GenAI.mil prototypes and Cross-cutting RAI
  - CRADCFGP
---

# Cross-cutting RAI and deployment constraints for GenAI.mil prototypes

GenAI.mil prototypes are expected to work within a public-safe, unclassified posture and to reflect the Department’s Responsible AI principles in practice, even though a hackathon prototype cannot be RAI-certified in a short build window. The source material frames this as a non-negotiable trust boundary: use unclassified, public, or otherwise shareable data; avoid controlled or restricted information; and treat the submission as a public prototype rather than a production deployment claim. ^[2026-04-25-genai-mil-user-workflows-and-trust-boundaries.md]

A central cross-cutting constraint is human control. Across the described workflows, the AI may draft, retrieve, cite, structure, and pre-flight, but it may not approve, submit, classify, sign, file, or take a kinetic action. Official-system actions such as submitting to IPPS-A, DTS, SAM, or other systems must remain with a human reviewer, approver, or signatory. This makes [[Human-in-the-Loop Review and Approval]] a deployment requirement rather than a design preference. ^[2026-04-25-genai-mil-user-workflows-and-trust-boundaries.md]

Traceability is treated as a core trust mechanism. Retrieval-grounded answers should carry paragraph-level citations, form-fill outputs should point back to the source policy paragraph, and per-diem or other computed values should cite the underlying public source and date. The material also emphasizes that a wrong Army citation can create real leadership and pay-record problems, so the system should over-refuse when it is not grounded rather than generate plausible but unsupported output. Related concepts include [[Controlled Reference Retrieval]] and [[Citations and missing-field visibility]]. ^[2026-04-25-genai-mil-user-workflows-and-trust-boundaries.md]

The prototypes are also constrained by deployment posture. The source material says the GenAI.mil platform is approved at IL5 / CUI, but hackathon submissions themselves must work entirely on unclassified material. It also notes that the prompt’s “do it offline” posture suggests a system that can work without persistent cloud connectivity, which is useful for prototypes that complement rather than replace a cloud enterprise platform. Related concepts include [[Administrative trenches as the GenAI.mil problem frame]] and [[Scoped Prototype Wedge]]. ^[2026-04-25-genai-mil-user-workflows-and-trust-boundaries.md, 2026-04-25-genai-mil-challenge-prompt-and-rubric.md]

PII and PHI are explicitly out of bounds for the public demo posture described in the source material. The note says to avoid LES uploads and other PII entirely and to use synthetic test data instead, aligning with the broader instruction that the prototype should remain public-safe and billboard-safe. ^[2026-04-25-genai-mil-user-workflows-and-trust-boundaries.md]

The source material also warns against overstatement in how the prototype is presented. Submissions should not pretend to live inside GenAI.mil itself or claim production deployment; instead, they should be described as public, unclassified prototypes or candidate companions with an honest trust posture. In practical terms, this means the system should be scoped to one bounded workflow, show its sources and uncertainty, and preserve review status and human approval boundaries throughout. Related concepts include [[AI-assisted spec with human review]] and [[Boring workflow, spicy mechanism]]. ^[2026-04-25-genai-mil-user-workflows-and-trust-boundaries.md]

## Sources

- [2026-04-25-genai-mil-user-workflows-and-trust-boundaries.md]

