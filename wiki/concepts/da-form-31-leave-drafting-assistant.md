---
title: DA Form 31 leave drafting assistant
summary: An assistant that converts plain-English leave requests into a block-by-block DA Form 31 draft while flagging missing fields and leaving approval to humans.
sources:
  - 2026-04-25-genai-mil-user-workflows-and-trust-boundaries.md
createdAt: "2026-04-25T16:28:54.458Z"
updatedAt: "2026-04-25T16:28:54.458Z"
tags:
  - forms
  - workflow-automation
  - army
aliases:
  - da-form-31-leave-drafting-assistant
  - DF3LDA
---

# DA Form 31 leave drafting assistant

A DA Form 31 leave drafting assistant is a narrow, retrieval-grounded workflow that helps a Soldier turn a leave request into a draft of DA Form 31, the Army “Request and Authority for Leave.” In the source material, this use case is presented as a form auto-filler: the assistant should convert a natural-language leave request into the right form, the right leave type, a block-by-block draft, and an explicit list of fields the user still must supply. It is designed for public-safe, unclassified administration work rather than automated submission. ^[2026-04-25-genai-mil-user-workflows-and-trust-boundaries.md]

The expected drafting flow is to identify the request as DA Form 31, fill the relevant leave details such as start and end dates, address, and contact information, and surface any policy facts needed to support the draft. The source material notes that recent fillable versions of the form are tied to IPPS-A for leave-balance verification, but the assistant should not invent a leave balance; it should either read from a user-provided LES or mark the field for user verification. ^[2026-04-25-genai-mil-user-workflows-and-trust-boundaries.md]

The assistant is meant to help with common rejection modes, including selecting the wrong leave type, mismatching accrued, chargeable, or non-chargeable balances, omitting dependent-travel or TDY linkage when travel is involved, and mishandling permissive TDY rules. The workflow should therefore include [[Controlled Reference Retrieval]] and paragraph-level citations from authoritative Army sources so the user can see the basis for the draft and correct any missing or uncertain fields before use. ^[2026-04-25-genai-mil-user-workflows-and-trust-boundaries.md]

Human review remains mandatory. The chain of command, not the assistant, handles supervisor recommendation and approving-authority actions, and the assistant must never approve leave or submit the form on the user’s behalf. The output should be a draft artifact suitable for printing or IPPS-A use, with visible trust boundaries and a clear separation between policy grounding and human decision-making. Related concepts include [[AI-assisted spec with human review]], [[Army regulation Q&A with paragraph-level citations]], and [[Back-office military workflow use cases]]. ^[2026-04-25-genai-mil-user-workflows-and-trust-boundaries.md]

## Sources

- [2026-04-25-genai-mil-user-workflows-and-trust-boundaries.md]
