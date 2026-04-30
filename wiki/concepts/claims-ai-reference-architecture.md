---
title: Claims AI reference architecture
summary: A multi-component claims stack built from data capture, classification, rules enforcement, risk scoring, fraud analytics, retrieval, summarization, and workflow orchestration rather than a single model.
sources:
  - 2026-04-29-insurance-claims-minimal-human-adjudication.md
createdAt: "2026-04-29T18:29:57.341Z"
updatedAt: "2026-04-29T18:29:57.341Z"
tags:
  - architecture
  - ai
  - insurance
  - claims
aliases:
  - claims-ai-reference-architecture
  - CARA
---

# Claims AI reference architecture

A **Claims AI reference architecture** is a workflow-based model for how AI-enabled claims systems are commonly structured: digital intake, document and image extraction, policy and coverage checks, rules engines, risk and fraud scoring, routing, automated settlement or payment for low-complexity cases, and exception handling for cases outside the confidence or policy envelope. In this framing, the important unit is not a single model but an end-to-end pipeline that can set defaults, generate rationales, and record audit trails while limiting human involvement. ^[2026-04-29-insurance-claims-minimal-human-adjudication.md]

The architecture is explicitly multi-component. Public sources describe claims lifecycles that include FNOL or intake, assignment and analysis, claims decision and repair analysis, leakage analytics, reporting, structured and unstructured data capture, claims classification, business-rule enforcement, risk scoring, fraud pattern analytics, RAG, document Q&A, and automated summarization. This supports a [[Closed-loop adjudication pipeline]] view of claims AI rather than a monolithic chatbot view. ^[2026-04-29-insurance-claims-minimal-human-adjudication.md]

A recurring design pattern is straight-through processing for simple claims, with humans moved to exception handling for more complex cases. Vendor and consulting material describes “complete automation” as the norm, with human involvement minimized and reserved for exceptions or special cases. In practice, this creates a [[Human authority boundary]] question: whether humans still control consequential actions or are reduced to batch reviewers, appeal-only participants, or decorative reviewers. ^[2026-04-29-insurance-claims-minimal-human-adjudication.md]

Governance sources place limits on this automation. The NAIC Model Bulletin says AI-supported insurance decisions remain subject to requirements around fairness, accuracy, transparency, explainability, governance, documentation, and oversight. CMS guidance for Medicare Advantage says algorithms or AI may assist coverage decisions, but cannot replace individualized review of patient-specific history, physician recommendations, and clinical notes. These sources support evaluators checking whether the system preserves individualized evidence review or launders generic policy logic into an official-looking decision. ^[2026-04-29-insurance-claims-minimal-human-adjudication.md]

For AO Radar-style evaluation, the reference architecture should be treated as a synthetic specimen model, not a production system. The relevant test sequence is packet intake, evidence extraction, scoring, decisioning, rationale generation, audit logging, and optional human review. This aligns with [[Closed-loop adjudication pipeline]], [[AO Radar closed-loop adjudication failure lab]], [[Audit trail analysis and whitewashing detection]], and [[Human review modes as experimental variables]] concepts. ^[2026-04-29-insurance-claims-minimal-human-adjudication.md]

Failure analysis should include scenarios such as clean packets, missing or weak documentation, duplicate charges, date or location inconsistencies, ambiguous authorization, stale-memory reconstruction, unsupported fraud framing, incomplete but human-explainable packets, and policy ambiguity that should trigger escalation. These scenarios help surface failure modes such as unsupported denial, unsupported approval, [[Failure to escalate]], evidence mismatch, policy laundering, automated certainty, decorative human review, and audit-log whitewash. ^[2026-04-29-insurance-claims-minimal-human-adjudication.md]

Public controversies are useful as pattern evidence, not as proof that any specific system works the same way. Reporting on batch denials and algorithmic care termination illustrates the risk of rubber-stamp behavior, weak individualized review, and high-confidence decisions made with little human attention. For a claims AI reference architecture, this motivates explicit checks for meaningful review and reconstructable audit trails. ^[2026-04-29-insurance-claims-minimal-human-adjudication.md]

In AO Radar terms, a claims AI reference architecture should include these elements:
- intake and packet capture;
- evidence extraction;
- policy or rules evaluation;
- risk and fraud scoring;
- decision and routing;
- rationale generation;
- audit trail generation;
- human review mode. ^[2026-04-29-insurance-claims-minimal-human-adjudication.md]

Useful related concepts include [[Closed-loop adjudication pipeline]], [[Failure taxonomy for adjudication systems]], [[Human authority boundary]], [[Audit trail analysis and whitewashing detection]], fraud scoring, and trust and safety. ^[2026-04-29-insurance-claims-minimal-human-adjudication.md]

## Sources

- [2026-04-29-insurance-claims-minimal-human-adjudication.md]
