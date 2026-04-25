---
title: Human approval boundary for DTS AI
summary: The AI may draft, flag, cite, and prioritize, but humans must retain authority to approve, certify, sign, submit, return, cancel, or amend official DTS documents.
sources:
  - 2026-04-25-dts-ao-radar-research-synthesis.md
createdAt: "2026-04-25T18:58:46.425Z"
updatedAt: "2026-04-25T18:58:46.425Z"
tags:
  - human-in-the-loop
  - governance
  - dts
aliases:
  - human-approval-boundary-for-dts-ai
  - HABFDA
---

# Human approval boundary for DTS AI

The human approval boundary for DTS AI is the line between AI-assisted review and human-authorized action in the DTS voucher workflow. AI can help classify requests, retrieve approved references, identify missing fields, generate structured drafts, and flag uncertainty, but it must not approve, autonomously submit, invent policy, or bypass review. A human reviewer remains responsible for checking, editing, accepting, rejecting, and approving the result through an authorized human path. ^[2026-04-24-hackathon-operating-context.md, 2026-04-24-genai-mil-concept-seed.md]

In this boundary model, DTS AI is positioned as a pre-decision support tool rather than a decision-maker. The AI may package evidence, surface policy references, and highlight likely problem areas, but it does not determine entitlement, sign, certify, return, cancel, amend, or submit any DTS document. Those actions remain with the human certifying or approving official, who carries personal responsibility for the final decision. Related concepts include [[AI-assisted spec with human review]], [[Controlled Reference Retrieval]], and [[AO checklist-driven voucher review]]. ^[2026-04-24-hackathon-operating-context.md, 2026-04-24-genai-mil-concept-seed.md, 2026-04-25-dts-ao-radar-public-research.md]

The boundary is especially important because DTS approving officials are expected to verify evidence and policy fit before approval. Public guidance emphasizes checking trip dates and locations, travel mode, receipts, pre-audit flags, reason codes, advisories, document validity, and other supporting records, with service checklists calling for meaningful justification rather than boilerplate text. In practice, the AI can help the reviewer prepare for that work, but it cannot replace the reviewer’s checklist-driven judgment or the human signoff required for approval. Related concepts include [[AO checklist mandate and recurring service-level return reasons]] and [[AO checklist-driven voucher review]]. ^[2026-04-25-dts-ao-radar-public-research.md]

This boundary also protects against overreaching claims and audit risk. The source material warns that AI-generated specifications should not invent operational facts, should preserve visible trust boundaries, and should keep outputs sanitized and reviewable. For DTS use, that means the system should expose sources, assumptions, unresolved fields, uncertainty, and review status, while leaving official approval authority with a human reviewer. ^[2026-04-24-hackathon-operating-context.md, 2026-04-24-genai-mil-concept-seed.md]

## What the AI may do

- Classify the request
- Retrieve approved references from a controlled document set
- Identify missing fields
- Generate a structured draft artifact
- Flag uncertainty
- Package evidence for review
- Surface likely policy-risk indicators ^[2026-04-24-genai-mil-concept-seed.md, 2026-04-24-hackathon-operating-context.md]

## What the AI may not do

- Approve a DTS document
- Autonomously submit a DTS document
- Invent policy
- Bypass human review
- Determine entitlement
- Sign, certify, return, cancel, amend, or submit on behalf of a human official
- Accuse fraud or make official compliance determinations ^[2026-04-24-genai-mil-concept-seed.md, 2026-04-24-hackathon-operating-context.md, 2026-04-25-dts-ao-radar-research-synthesis.md]

## Why this boundary matters

DTS voucher review is a high-liability, checklist-shaped workflow. Approving officials are expected to verify evidence before approval, and recurring return reasons often involve missing receipts, mismatched amounts, weak justification, or date and location inconsistencies. Human approval remains necessary because the final decision depends on context, policy interpretation, and the certifying official’s responsibility for the voucher. ^[2026-04-25-dts-ao-radar-public-research.md, 2026-04-25-dts-ao-radar-research-synthesis.md]

## Sources

- [2026-04-24-hackathon-operating-context.md]
- [2026-04-24-genai-mil-concept-seed.md]
- [2026-04-25-dts-ao-radar-public-research.md]
- [2026-04-25-dts-ao-radar-research-synthesis.md]
