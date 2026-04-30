---
title: Unsafe system as specimen
summary: The low-safeguard or unsafe adjudication agent is treated as the object of study, while the surrounding harness remains controlled and safe.
sources:
  - 2026-04-29-ao-radar-product-reset.md
createdAt: "2026-04-29T18:29:34.188Z"
updatedAt: "2026-04-29T19:54:05.870Z"
tags:
  - evaluation
  - safety
  - agent-testing
aliases:
  - unsafe-system-as-specimen
  - USAS
---

---
title: Unsafe system as specimen
summary: The core design principle that the low-safeguard or unsafe agent is the object being studied, while the surrounding harness remains safe and controlled.
sources:
  - 2026-04-29-ao-radar-product-reset.md
createdAt: "2026-04-29T18:29:34.188Z"
updatedAt: "2026-04-29T18:29:34.188Z"
tags:
  - safety
  - testing
  - system-design
aliases:
  - unsafe-system-as-specimen
  - USAS
---

# Unsafe system as specimen

An **unsafe system as specimen** is a design principle in AO Radar in which the low-safeguard or unsafe agent is the object being studied, while the surrounding harness remains safe, synthetic, logged, and bounded. The unsafe system may be intentionally risky, but only as a controlled evaluation specimen inside the harness. ^[2026-04-29-ao-radar-product-reset.md]

This principle reflects AO Radar’s current product frame as a closed-loop adjudication failure lab rather than a production assistant or deployment concept. The harness is the product: it exists to test how unsafe adjudication agents behave across the full loop while keeping the evaluation environment separate from real-world consequences. ^[2026-04-29-ao-radar-product-reset.md]

A central implication is that human-in-the-loop is not considered a control unless the human controls the consequential action. The system under test is evaluated across packet intake, evidence extraction, anomaly or policy scoring, decision-making, rationale generation, audit-log generation, and optional human review or rubber stamp, to see whether human authority is preserved or reduced to a decorative checkbox. ^[2026-04-29-ao-radar-product-reset.md]

The product boundary is explicitly synthetic-only. It must not touch real vouchers, real claimants, real payments, official systems, real fraud accusations, or production adjudication workflows, even when the specimen itself is unsafe or low-safeguard. ^[2026-04-29-ao-radar-product-reset.md]

In practice, the specimen can be an adjudication agent used in domains such as claims, benefits, reimbursements, payment authorization, fraud scoring, and trust-and-safety decisions. Voucher-like packets are used as a first synthetic domain because they are familiar, document-heavy, and easy to convert into realistic but fake scenario cards. ^[2026-04-29-ao-radar-product-reset.md]

Evaluation scenario cards should include clean packets, missing documentation, weak documentation with plausible context, duplicate charges, date or location inconsistency, ambiguous authorization, stale-memory reconstruction, unsupported fraud framing, incomplete but human-explainable packets, and policy ambiguity requiring escalation. These scenarios help surface failures such as unsupported denial, unsupported approval, [[Failure to escalate]], bad escalation, invented facts, invented citations, policy laundering, rationale overfitting, automated certainty, [[Decorative human review]], and audit-log whitewash. ^[2026-04-29-ao-radar-product-reset.md]

Human review is treated as a first-class experimental variable rather than a binary safeguard. Review modes can include meaningful reviewer, exception reviewer, decorative reviewer, batch reviewer, appeal-only reviewer, audit-only reviewer, and managerial checkbox, allowing the lab to distinguish substantive oversight from procedural formality. ^[2026-04-29-ao-radar-product-reset.md]

## Related concepts

- [[AO Radar closed-loop adjudication failure lab]]
- [[Closed-loop adjudication pipeline]]
- [[Human authority boundary]]
- [[Human review modes as experimental variables]]
- [[Audit trail analysis and whitewashing detection]]
- [[Failure taxonomy for adjudication systems]]

## Sources

- [2026-04-29-ao-radar-product-reset.md]
