# AO Radar product reset

## Context

The hackathon phase is over. AO Radar is no longer a safe pre-approval travel-voucher assistant or a GenAI.mil submission concept. The current product frame is a closed-loop adjudication failure lab: a synthetic eval harness that tests unsafe adjudication agents as specimens.

The unsafe system is the specimen. The harness is the product.

## Current thesis

Human-in-the-loop is not a control unless the human controls the consequential action.

AO Radar should test when an automated adjudication pipeline preserves human authority versus when it turns the human into a decorative checkbox while the machine sets the default, writes the rationale, and cleans up the audit trail afterward.

## Product boundary

AO Radar is a synthetic-only evaluation environment. It must not touch real vouchers, real claimants, real payments, official systems, real fraud accusations, or production adjudication workflows.

The system under test can be intentionally low-safeguard or unsafe, but only as a controlled eval specimen. The actual AO Radar harness remains safe, synthetic, logged, and bounded.

## System-under-test loop

A representative closed-loop adjudication agent follows this pipeline:

1. packet intake
2. evidence extraction
3. anomaly or policy scoring
4. decision: approve, deny, escalate, or request information
5. rationale generation
6. audit-log generation
7. optional human review or rubber stamp

The product should evaluate the full loop, not just a single model answer.

## First-domain stance

Voucher-like packets remain useful as a first synthetic domain because they are familiar, document-heavy, and easy to turn into realistic but fake scenario cards. But the broader target is closed-loop adjudication across claims, benefits, reimbursements, payment authorization, fraud scoring, trust-and-safety decisions, and other workflows where a machine can set the default outcome.

## Scenario-card primitives

Scenario cards should include clean packets, missing documentation, weak documentation with plausible context, duplicate charges, date or location inconsistency, ambiguous authorization, stale-memory reconstruction, tempting but unsupported fraud framing, incomplete but human-explainable packets, and policy ambiguity requiring escalation.

## Failure labels

Core failure labels include:

- UNSUPPORTED_DENIAL
- UNSUPPORTED_APPROVAL
- FAILURE_TO_ESCALATE
- BAD_ESCALATION
- EVIDENCE_MISMATCH
- INVENTED_FACT
- INVENTED_CITATION
- POLICY_LAUNDERING
- RATIONALE_OVERFITTING
- AUTOMATED_CERTAINTY
- DECORATIVE_HUMAN_REVIEW
- AUDIT_LOG_WHITEWASH
- WEAK_DOC_OVERCLAIMED
- PROCESS_SAYS_REVIEWED_BUT_NO_MEANINGFUL_REVIEW

## Human review modes

Human review should be represented as a first-class experimental variable, not a binary property. Review modes include meaningful reviewer, exception reviewer, decorative reviewer, batch reviewer, appeal-only reviewer, audit-only reviewer, and managerial checkbox.

## Spec implications

The product spec should center on:

1. synthetic packet generation
2. low-safeguard adjudication agents as specimens
3. closed-loop decision pipeline execution
4. evaluator rubric and failure taxonomy
5. audit trail analysis
6. human authority boundary analysis
7. product outputs that make failure modes legible without implying production deployment

## Public language

Use language like closed-loop adjudication failure lab, synthetic eval harness, unsafe agents as specimens, low-safeguard system under test, rubber-stamp theater, decorative human review, audit-log whitewash, policy laundering, unsupported denial, automated certainty, accountability failure, and human authority boundary.

Avoid language that implies real deployment, real payments, real fraud accusations, military operational use, or autonomous production decisions.
