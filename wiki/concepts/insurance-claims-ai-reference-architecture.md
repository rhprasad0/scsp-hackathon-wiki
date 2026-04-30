---
title: Insurance claims AI reference architecture
summary: A vendor-style architecture that combines document extraction, classification, business rules, risk scoring, fraud analytics, retrieval, summarization, and workflow orchestration for claims handling.
sources:
  - 2026-04-29-insurance-claims-minimal-human-adjudication.md
createdAt: "2026-04-29T19:54:43.688Z"
updatedAt: "2026-04-29T19:54:43.688Z"
tags:
  - insurance
  - reference-architecture
  - ai
aliases:
  - insurance-claims-ai-reference-architecture
  - ICARA
---

# Insurance [[Claims AI reference architecture]]

An **insurance claims AI reference architecture** describes an end-to-end claims workflow in which software handles digital intake, document or image extraction, policy and coverage checks, rules evaluation, risk or fraud scoring, routing, automated settlement or payment for low-complexity cases, and exception handling for cases outside the confidence or policy envelope. The architecture is presented as a workflow stack rather than a single model, with cooperating components that can fail at intake, extraction, classification, scoring, decision-making, rationale generation, or audit logging. ^[2026-04-29-insurance-claims-minimal-human-adjudication.md]

The reference architecture typically breaks the claims lifecycle into stages such as FNOL/intake, assignment and analysis, claims decision and repair analysis, leakage analytics, and reporting. It may also include structured and unstructured data capture, medallion data layers, business-rule enforcement, claims classification, risk scoring, fraud pattern analytics, RAG, document Q&A, and automated summarization. ^[2026-04-29-insurance-claims-minimal-human-adjudication.md]

A central feature of the architecture is **straight-through processing (STP)** for simple claims, with human involvement minimized and reserved for exceptions or special cases. In this model, automation is expected to reduce manual touches and move claims “down to manual intervention” only when needed, then “back to automation” afterward. [[Closed-loop adjudication pipeline]] ^[2026-04-29-insurance-claims-minimal-human-adjudication.md]

Human review is therefore repositioned from primary adjudication to exception handling. Review can still be meaningful when it is used to examine exceptions, high-complexity cases, or emotionally sensitive cases, but it becomes problematic when humans are asked to batch-sign machine recommendations without file review. [[Human review modes as experimental variables]] [[Human authority boundary]] ^[2026-04-29-insurance-claims-minimal-human-adjudication.md]

The architecture is also shaped by governance requirements. The source material notes that AI-supported insurance decisions remain subject to requirements around unfair trade, unfair claims settlement, unfair discrimination, accuracy, arbitrariness, transparency, explainability, governance, documentation, and oversight. It also notes that algorithms or AI may assist coverage decisions, but should not replace individualized review or ignore case-specific history, recommendations, and notes. [[Audit trail analysis and whitewashing detection]] [[Appeals as the first meaningful human authority boundary]] ^[2026-04-29-insurance-claims-minimal-human-adjudication.md]

From an evaluation perspective, this architecture suggests a closed-loop specimen made up of intake → evidence extraction → policy or rules evaluation → risk scoring → decision → rationale → audit trail → human review mode. Useful tests include whether the system cites actual packet evidence, whether the log reconstructs what really happened, whether individual cases are reviewed on their own facts, and whether exceptions are routed to a reviewer with real authority. [[AO Radar closed-loop adjudication failure lab]] [[Closed-loop adjudication pipeline]] ^[2026-04-29-insurance-claims-minimal-human-adjudication.md]

Public controversy has highlighted failure patterns that the architecture should be able to expose, such as batch denials, seconds-per-case review, missing individualized evidence, and high reversal on appeal. These are best treated as scenario patterns for evaluation rather than as claims about any specific insurer’s system. [[Appeal-only correction]] [[Audit trail analysis and whitewashing detection]] ^[2026-04-29-insurance-claims-minimal-human-adjudication.md]

## Core components

- Digital intake
- Document/image extraction
- Policy and coverage checks
- Rules engine or business-rule enforcement
- Risk/fraud scoring
- Routing and exception handling
- Automated settlement/payment for low-complexity claims
- Decision and rationale generation
- Audit trail generation
- Human review modes

## Human review modes

The source material distinguishes several ways humans may be placed into the loop: no-touch or [[Straight-through processing]], exception-handler review, batch reviewer, meaningful reviewer, appeal-only reviewer, and audit-only reviewer. These modes matter because they determine whether human review preserves authority or merely simulates it. [[Human review modes as experimental variables]] [[Appeal-only correction]] ^[2026-04-29-insurance-claims-minimal-human-adjudication.md]

## Evaluation concerns

- Whether the system uses actual packet evidence versus generic population-level or policy logic
- Whether weak or ambiguous cases are escalated instead of auto-processed
- Whether the audit trail supports reconstruction of the decision
- Whether batch review is a meaningful review or a rubber stamp
- Whether appeals are the first real point of human authority
- Whether automated certainty is being presented where evidence is weak

These concerns align with failure patterns such as unsupported denial, [[Failure to escalate]], [[Decorative human review]], audit-log whitewash, and automated certainty. [[Failure taxonomy for adjudication systems]] [[Audit trail analysis and whitewashing detection]] ^[2026-04-29-insurance-claims-minimal-human-adjudication.md]

## Sources

- [2026-04-29-insurance-claims-minimal-human-adjudication.md]
