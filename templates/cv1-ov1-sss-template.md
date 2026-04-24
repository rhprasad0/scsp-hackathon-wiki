---
title: CV-1 / OV-1 / SSS Template
date: 2026-04-24
sensitivity: private-redacted
source_type: architecture-template
status: reusable-template
---

# CV-1 / OV-1 / SSS Template

Use this to turn a narrow GenAI.mil concept into three complementary artifacts:

- **CV-1:** capability vision — why this should exist and what future state it supports.
- **OV-1:** operational concept — how the capability works in a concrete mission/workflow scenario.
- **SSS:** system/subsystem specification — what the system must do, must not do, interface with, and guarantee.

Keep this public-safe: no names, PII, sensitive operational details, classified details, or unit-specific specifics unless explicitly cleared.

---

## 0. Concept Snapshot

**Working concept name:**  
`<short descriptive name>`

**One-sentence concept:**  
`<A low-side / approved-environment tool that helps [user group] do [workflow] while preserving [human authority / trust boundary].>`

**Primary user:**  
`<role or persona, redacted / generic>`

**Workflow target:**  
`<one narrow recurring workflow>`

**Environment assumption:**  
`<public / low-side / approved enclave / other>`

**Out of scope:**
- `<scope guardrail 1>`
- `<scope guardrail 2>`
- `<scope guardrail 3>`

---

# 1. CV-1 — Capability Vision

## Capability Name

`<Capability name>`

## Vision

`<Describe the desired future state in capability terms. Focus on what users can reliably do after the capability exists.>`

Example shape:

> Enable `<user group>` to convert `<messy / slow / manual workflow>` into `<structured, reviewable output>` without bypassing `<approval chain / classification boundary / human judgment>`.

## Strategic Problem

`<What recurring pain point, bottleneck, or mission-support gap does this capability address?>`

Prompts:
- What work is currently too slow, manual, fragmented, or tribal-knowledge dependent?
- What causes rework, inconsistency, or delay?
- What artifact or decision gets stuck?

## Desired Future State

`<What should be true when the capability works?>`

Include:
- who can use it
- what input they provide
- what output they receive
- what safeguards remain visible
- what human decision remains human

## Capabilities Needed

- `<Capability 1>`
- `<Capability 2>`
- `<Capability 3>`
- `<Capability 4>`
- `<Capability 5>`

Suggested categories:
- intake / workflow identification
- retrieval from approved sources
- draft generation or transformation
- missing-information detection
- citation / provenance display
- review, approval, auditability
- security and data-boundary controls

## Measurable Benefits

- `<Benefit 1, ideally measurable>`
- `<Benefit 2, ideally measurable>`
- `<Benefit 3, ideally measurable>`

Examples:
- Reduce first-draft time for `<artifact>`.
- Reduce rework from missing fields or wrong format.
- Improve consistency across teams or staff sections.
- Increase trust through citations and visible uncertainty.
- Preserve approval authority with humans.

## Time Horizon

- **Prototype:** `<48-hour / hackathon demo scope>`
- **Pilot:** `<30–90 day scope>`
- **Scaled capability:** `<6–12 month scope>`

## Capability Guardrails

- The capability does **not** approve official actions.
- The capability does **not** replace accountable human judgment.
- The capability does **not** use unauthorized sensitive or classified information.
- The capability does **not** invent policy or cite nonexistent sources.

---

# 2. OV-1 — Operational Concept

## Scenario

`<Describe one concrete operational/admin/logistics workflow scenario. Keep it generic and redacted.>`

Example shape:

> A `<role>` needs to create `<artifact/request/summary>`. They understand the situation but do not know the exact format, routing, required fields, or relevant reference language.

## Operational Need

`<What needs to happen faster, more consistently, or with better traceability?>`

## Key Actors

- **Requester / operator:** `<who initiates the workflow>`
- **AI assistant / system:** `<what the tool does and does not do>`
- **Reviewer:** `<who checks draft correctness>`
- **Approver:** `<who has authority, if different>`
- **Reference repository:** `<approved templates, SOPs, policy, examples>`
- **System of record:** `<where final approved artifact goes>`

## High-Level Flow

```text
[Requester / User]
        |
        | 1. Describes task in plain language
        |    + provides approved low-side references if needed
        v
[AI Workflow Assistant]
        |
        | 2. Identifies workflow type
        | 3. Retrieves relevant approved references
        | 4. Asks for missing required fields
        | 5. Drafts artifact / summary / recommendation
        | 6. Flags assumptions, uncertainty, and source coverage
        v
[Draft Review Workspace]
        |
        | 7. Human edits, accepts, rejects, or asks follow-up
        v
[Reviewer / Supervisor / Approver]
        |
        | 8. Reviews final draft and approves or returns for revision
        v
[Official System / Email / Document Repository]
```

## Main Operational Steps

1. `<Step 1>`
2. `<Step 2>`
3. `<Step 3>`
4. `<Step 4>`
5. `<Step 5>`
6. `<Step 6>`

## Trust Boundaries

- AI may draft but may not approve.
- AI may cite approved references but may not invent authority.
- User must see assumptions and unresolved fields before submission.
- Sensitive details stay out unless the environment is explicitly authorized.
- Final accountability remains with the human reviewer/approver.

## Inputs

- `<User description>`
- `<Approved template / SOP / policy>`
- `<Prior example, if allowed>`
- `<Structured fields required for this workflow>`

## Outputs

- `<Draft artifact>`
- `<Missing-information checklist>`
- `<Citations / source links>`
- `<Assumptions and confidence notes>`
- `<Review/export package>`

## Failure / Escalation Paths

- If required fields are missing, the system asks follow-up questions.
- If no approved reference exists, the system says so instead of fabricating.
- If the request appears sensitive or unauthorized, the system refuses or redirects.
- If confidence is low, the system labels the draft as incomplete / needs expert review.

---

# 3. SSS — System/Subsystem Specification

## 3.1 System Name

`<System name>`

## 3.2 System Purpose

`<The system shall assist authorized users in [workflow] using [approved sources] while preserving [human review/approval/accountability].>`

## 3.3 Scope

The prototype shall support:

- `<one narrow workflow>`
- `<one or two artifact types>`
- `<one approved document/reference set>`
- `<one review/export path>`

The prototype shall **not** support:

- classified data
- autonomous submission
- approval automation
- live integration with official systems, unless explicitly approved
- personnel decisions
- targeting, tactical recommendations, or operational planning
- use of unauthorized sources or sensitive details

## 3.4 Functional Requirements

**FR-1: Workflow Identification**  
The system shall classify the user’s request into a supported workflow type.

**FR-2: Guided Intake**  
The system shall ask for required missing fields before generating a final draft.

**FR-3: Reference Retrieval**  
The system shall retrieve relevant approved templates, SOPs, policies, or examples from a controlled document set.

**FR-4: Draft Generation**  
The system shall generate a draft artifact in the expected structure for the selected workflow.

**FR-5: Citation Display**  
The system shall show which reference materials influenced each major section of the draft.

**FR-6: Assumption Flagging**  
The system shall explicitly mark assumptions, inferred content, unsupported claims, and low-confidence sections.

**FR-7: Human Review**  
The system shall require human review before export, submission, or use as an official artifact.

**FR-8: Export**  
The system shall allow the reviewed draft to be copied or exported in a common format, such as Markdown, DOCX, PDF, or plain text.

**FR-9: Audit Log**  
The system shall record the user request, retrieved references, generated draft, edits, and export event when permitted by the environment.

**FR-10: Refusal / Redirect**  
The system shall refuse or redirect requests involving unsupported workflows, unauthorized sensitive information, or prohibited use cases.

## 3.5 Non-Functional Requirements

**NFR-1: Security Boundary**  
The system shall operate only on data appropriate for its deployment environment.

**NFR-2: Explainability**  
The system shall expose citations, assumptions, uncertainty, and missing fields to the user.

**NFR-3: Latency**  
The system should produce an initial draft within `<target latency>` for a normal request.

**NFR-4: Usability**  
A first-time user should be able to complete the workflow with minimal training.

**NFR-5: Data Handling**  
The system shall not persist raw user inputs longer than required unless explicitly configured and approved.

**NFR-6: Human Authority**  
The system shall not represent generated output as official, approved, or authoritative until a human approver has reviewed it.

**NFR-7: Robustness**  
The system shall degrade safely when retrieval fails, sources conflict, or model confidence is low.

## 3.6 External Interfaces

**User Interface:**  
`<web app / chat interface / form / other>`

**Document Store:**  
`<approved templates, SOPs, policy excerpts, examples>`

**Model Interface:**  
`<LLM API / local model / retrieval pipeline>`

**Export Interface:**  
`<copy, Markdown, DOCX, PDF, email draft, system handoff>`

**Audit / Logging Interface:**  
`<local log / app database / none for prototype>`

## 3.7 Data Objects

- **User request:** `<plain-language task description>`
- **Workflow type:** `<classified supported workflow>`
- **Reference chunk:** `<retrieved approved source excerpt>`
- **Draft artifact:** `<generated draft>`
- **Missing-field checklist:** `<required fields not yet provided>`
- **Assumption list:** `<model/system assumptions>`
- **Review record:** `<human edits / approval status>`

## 3.8 Safety / Trust Requirements

- The system shall distinguish between retrieved source content and generated suggestion.
- The system shall never fabricate citations.
- The system shall label uncertainty instead of hiding it.
- The system shall warn users not to enter data outside the environment’s authorization boundary.
- The system shall preserve human approval authority.
- The system shall make refusal reasons clear and actionable when possible.

## 3.9 Acceptance Criteria

A prototype demo is acceptable when:

- A user can complete the target workflow from plain-language intake to draft output.
- The draft uses the correct structure for the selected artifact.
- Missing required fields are identified before final export.
- At least one citation or source reference is visible for major generated sections.
- Assumptions and uncertainties are visible.
- The user can edit/review before export.
- The system does not imply that the draft is officially approved.

---

# 4. Evidence Hooks From Interviews

Use this section to connect the artifact to discovery notes.

## Observed Pain Points

- `<pain point from interview / notes>`
- `<pain point from interview / notes>`

## Repeated Workflow Frictions

- `<friction>`
- `<friction>`

## Artifacts Mentioned

- `<form / memo / tracker / spreadsheet / email / system>`

## Trust / Approval Constraints Mentioned

- `<constraint>`
- `<constraint>`

## Open Questions for Next SME

- `<question>`
- `<question>`

---

# 5. Public-Safe Summary

`<Short sanitized paragraph suitable for a public spec or hackathon submission. No names, sensitive details, or operational specifics.>`

Suggested shape:

> The proposed capability helps authorized users transform repetitive, document-heavy workflows into structured, reviewable drafts grounded in approved references. It focuses on reducing first-draft burden, improving consistency, and preserving human approval authority through citations, missing-field checks, and explicit uncertainty labels.
