---
title: Human review modes as experimental variables
summary: Different review roles—meaningful, exception, decorative, batch, appeal-only, audit-only, managerial checkbox—are treated as distinct conditions for measurement.
sources:
  - 2026-04-29-ao-radar-product-reset.md
createdAt: "2026-04-29T18:29:38.879Z"
updatedAt: "2026-04-29T19:54:10.188Z"
tags:
  - human-review
  - experiment-design
  - governance
aliases:
  - human-review-modes-as-experimental-variables
  - HRMAEV
---

# Human review modes as experimental variables

Human review modes should be treated as a first-class experimental variable in a [[Closed-loop adjudication pipeline]], not as a binary safeguard. The core idea is that human-in-the-loop only counts as meaningful oversight when the human controls the consequential action; otherwise, review can degrade into a decorative checkbox, managerial formality, or rubber stamp while the machine sets the default, writes the rationale, and manages the audit trail. ^[2026-04-29-ao-radar-product-reset.md]

The review modes named in the source material include meaningful reviewer, exception reviewer, decorative reviewer, batch reviewer, appeal-only reviewer, audit-only reviewer, and managerial checkbox. Treating these as distinct conditions makes it possible to compare substantive human authority against procedural participation and to test whether a process labeled “reviewed” actually involved meaningful review. ^[2026-04-29-ao-radar-product-reset.md]

In the AO Radar framing, human review mode is part of the evaluation design for a synthetic, logged, bounded harness that studies unsafe adjudication agents as specimens. The full closed loop is evaluated end to end—packet intake, evidence extraction, scoring, decisioning, rationale generation, audit logging, and optional human review—while remaining synthetic-only and avoiding real vouchers, claimants, payments, official systems, fraud accusations, or production workflows. ^[2026-04-29-ao-radar-product-reset.md]

Modeling review as an experimental variable also supports failure analysis. The source material uses labels such as unsupported denial, unsupported approval, [[Failure to escalate]], bad escalation, invented fact, invented citation, policy laundering, rationale overfitting, automated certainty, [[Decorative human review]], audit-log whitewash, and process says reviewed but no meaningful review to distinguish a meaningful reviewer from a process that only simulates oversight. ^[2026-04-29-ao-radar-product-reset.md]

Review-mode variation can be combined with scenario cards that include clean packets, missing or weak documentation, duplicate charges, date or location inconsistencies, ambiguous authorization, stale-memory reconstruction, unsupported fraud framing, incomplete but human-explainable packets, and policy ambiguity requiring escalation. This makes human review a controlled dimension of the experiment rather than a fixed assumption about oversight. ^[2026-04-29-ao-radar-product-reset.md]

Related concepts include [[Human authority boundary]], [[Audit trail analysis and whitewashing detection]], [[Failure taxonomy for adjudication systems]], [[AO Radar closed-loop adjudication failure lab]], and [[Batch review and rubber-stamp denials]]. ^[2026-04-29-ao-radar-product-reset.md]

## Sources

- `2026-04-29-ao-radar-product-reset.md`
