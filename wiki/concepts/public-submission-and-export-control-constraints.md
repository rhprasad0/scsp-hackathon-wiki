---
title: Public submission and export-control constraints
summary: Submissions must remain public and unclassified, avoid controlled information, and account for export-control restrictions such as ITAR and EAR.
sources:
  - 2026-04-25-genai-mil-challenge-prompt-and-rubric.md
createdAt: "2026-04-25T17:07:32.215Z"
updatedAt: "2026-04-25T17:07:32.215Z"
tags:
  - compliance
  - export-control
  - public-safe
aliases:
  - public-submission-and-export-control-constraints
  - export-control constraints and Public submission
  - PSAEC
---

# Public submission and export-control constraints

Public submission and export-control constraints are the rules shaping what can be built, shared, and submitted for the GenAI.mil challenge. The submission must be public, remain in a public GitHub repository throughout the hackathon and beyond, and use no classified materials. Only unclassified, public, or otherwise shareable data is allowed, and teams are told to mind ITAR and EAR restrictions and avoid controlled or restricted content. Preexisting code must also have a determined export classification. ^[2026-04-25-genai-mil-challenge-prompt-and-rubric.md]

These constraints interact with the challenge’s public-safe design posture. The example directions point teams toward back-office, administrative workflows built from public DoD and federal sources such as Army publications, Field Manuals, Joint Travel Regulations, GSA APIs, SAM.gov, USAspending.gov, DTIC Public STINET, Federal Register, and eCFR bulk data. That makes [[Controlled Reference Retrieval]] and [[AI-assisted spec with human review]] especially relevant, because the system should stay grounded in approved references and preserve human review before anything is exported or submitted. ^[2026-04-25-genai-mil-challenge-prompt-and-rubric.md, 2026-04-24-genai-mil-concept-seed.md]

The source material also emphasizes that a submission should be public-safe, sanitized, and reviewable. Drafts should show their sources, assumptions, unresolved fields, uncertainty, and review status, and downstream export should be separately sanitized. In this setting, [[Citations and missing-field visibility]] and [[Human-in-the-Loop Review and Approval]] are part of the compliance posture, not just product polish. ^[2026-04-24-hackathon-operating-context.md, 2026-04-24-genai-mil-concept-seed.md]

A further boundary is that the challenge is oriented to administrative, back-office use cases rather than tactical, kinetic, or weapons-relevant AI. The source material explicitly notes that a submission trying to do tactical or kinetic AI is off-track and may also collide with ITAR and EAR rules. Related pages include [[Administrative trenches as the GenAI.mil problem frame]] and [[Back-office military workflow use cases]]. ^[2026-04-25-genai-mil-challenge-prompt-and-rubric.md, 2026-04-25-genai-mil-public-context-and-links.md]

## Sources

- [2026-04-25-genai-mil-challenge-prompt-and-rubric.md]
- [2026-04-24-hackathon-operating-context.md]
- [2026-04-24-genai-mil-concept-seed.md]
- [2026-04-25-genai-mil-public-context-and-links.md]
