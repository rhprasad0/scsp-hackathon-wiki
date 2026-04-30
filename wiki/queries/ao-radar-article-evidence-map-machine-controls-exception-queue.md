---
title: "AO Radar article evidence map: machine controls exception queue"
summary: The wiki supports an evidence map for “machine controls exception queue,” but it does not use that exact phrase as a sta
type: query
createdAt: "2026-04-29T19:55:33.236Z"
---

The wiki supports an evidence map for “machine controls exception queue,” but it does not use that exact phrase as a standalone concept.

What it does show is:

- The system is a **closed-loop adjudication pipeline** where the machine handles packet intake, evidence extraction, scoring, decisioning, rationale generation, and audit logging before any human review occurs [[Closed-loop adjudication pipeline]].
- Human involvement may be limited to **exception handling**, **exception queues**, sign-off, or appeal-only review, which means the machine can effectively set the default outcome while humans only see exceptions [[Claims adjudication workflow stack]] [[Audit trail sufficiency]].
- This becomes a failure mode when the human reviewer is not meaningful and the process becomes decorative or post hoc [[Closed-loop adjudication failure mode]] [[Audit trail analysis and whitewashing detection]].
- The key boundary question is whether the human still has real authority, or whether the machine controls the outcome and the human only rubber-stamps it [[Human authority boundary]].

So the best wiki-backed evidence map is:

1. **Machine-driven pipeline**: [[Closed-loop adjudication pipeline]]
2. **Exception-queue human role**: [[Claims adjudication workflow stack]] [[Audit trail sufficiency]]
3. **Failure if human lacks authority**: [[Closed-loop adjudication failure mode]] [[Audit trail analysis and whitewashing detection]]
4. **Core governance test**: [[Human authority boundary]]

If you want, I can turn this into a compact bullet “evidence map” table with claim → supporting page → implication.
