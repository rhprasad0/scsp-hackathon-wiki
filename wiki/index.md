# Knowledge Wiki

## Concepts

- **[[AI Test and Evaluation Frameworks]]** — CDAO guidance for evaluating AI-enabled capabilities across model, systems integration, operational, and human-systems-integration layers, including bias, robustness, uncertainty, authority, and accountability.
- **[[AO Radar Rubric Checks]]** — The document translates governance guidance into concrete rubric checks for synthetic adjudication, including authority, traceability, escalation, rationale faithfulness, and audit-log truthfulness.
- **[[Audit Trail Limits]]** — Audit trails can prove that events, logs, timestamps, and handoffs occurred, but they do not prove correctness, faithful reasoning, or that real human judgment happened.
- **[[Automation Bias]]** — A tendency for humans to over-rely on automated recommendations, leading to omission and commission errors when decision aids are wrong.
- **[[Automation Bias in Human Review]]** — Human review can become rubber-stamping when reviewers over-trust automated outputs, especially without interpretability, time, or independence to challenge them.
- **[[Autonomous Adjudication]]** — A closed-loop decision system that ingests cases, evaluates them, issues final outcomes, and generates rationales and audit trails without human review or escalation by default.
- **[[Autonomy in Weapon Systems Directive]]** — DoDD 3000.09, a DoD directive on autonomous and semi-autonomous weapon systems that emphasizes human judgment, constraints, testing, transparent data sources, and deactivation/termination paths.
- **[[Closed-Loop Adjudication Failure Lab]]** — A synthetic evaluation environment for studying end-to-end adjudication systems and their failure modes rather than deploying them operationally.
- **[[Closed-Loop Adjudication Pipeline]]** — The full sequence of intake, evidence extraction, scoring, decisioning, rationale generation, audit logging, and possible human review that should be evaluated as a whole.
- **[[Cognitive Forcing Functions]]** — Interface or workflow designs that require reviewers to think independently before accepting AI advice, reducing overreliance at the cost of usability.
- **[[Confidence Calibration in AI]]** — How well AI confidence scores align with actual correctness, affecting user trust, reliance, and the ability to detect miscalibration.
- **[[Contestability and Appeal Paths]]** — The mechanisms that let affected people challenge automated or semi-automated decisions, including usable appeals, human intervention, and the ability to contest the rationale.
- **[[Contestability and Remedy in AI Decisions]]** — High-stakes AI systems should provide escalation, appeal, fallback, remedy, and human reconsideration paths for adverse or ambiguous outcomes.
- **[[Decorative Human Review]]** — Superficial or nominal human review in which a case is technically reviewed but the reviewer lacks meaningful authority, context, time, or access to new evidence.
- **[[DoD AI Ethical Principles]]** — The Department of Defense’s five AI principles—Responsible, Equitable, Traceable, Reliable, and Governable—used here as the policy frame for evaluating unsafe autonomous behavior.
- **[[Exception-Only Review]]** — A review model where humans see only rare routed exceptions, which can hide false negatives and weaken vigilance for rare failures.
- **[[Exception-Queue Control Problem]]** — A cross-domain pattern where the critical decision is not the final approve/deny action but whether ambiguous or high-risk cases are escalated to a human review queue in time.
- **[[Expense Audit Automation]]** — AI-assisted expense review systems that auto-approve routine claims and route high-risk or policy-ambiguous expenses to manager, finance, or audit exceptions queues.
- **[[Explanation Faithfulness]]** — A plausible explanation or rationale may still be unfaithful to the actual evidence or computation, so explanation quality must be tested against the source record.
- **[[Explanation-Induced Overreliance]]** — The phenomenon where AI-generated explanations or rationales increase trust and acceptance of wrong advice instead of improving scrutiny.
- **[[Failure Taxonomy for Adjudication Systems]]** — A structured label set for diagnosing system failures such as unsupported denial, invented facts, policy laundering, decorative review, and audit-log whitewash.
- **[[Failure to Escalate]]** — A failure mode in which a system treats an ambiguous, mismatched, or high-risk case as routine and prevents a qualified human reviewer from seeing it before a consequential outcome.
- **[[Fraud Holds and Payment Authorization Review]]** — Risk-based payment workflows that delay, hold, or reject transactions when fraud is suspected, relying on thresholds, customer notice, support, and time-bounded investigation.
- **[[Human Authority Boundary]]** — The distinction between meaningful human control over consequential actions and superficial human involvement that does not affect outcomes.
- **[[Human Oversight Authority Boundary]]** — Governance checks should identify who controls the consequential action, what the reviewer can see, and what changes they can actually make.
- **[[Human Review Modes]]** — A set of experimental reviewer roles, including meaningful reviewer, decorative reviewer, batch reviewer, appeal-only reviewer, and audit-only reviewer, used to test human oversight quality.
- **[[Meaningful Human Review]]** — Human oversight that is active, authorized, informed, and capable of changing the outcome rather than a token review step.
- **[[Policy Laundering]]** — Policy laundering occurs when a weak or inapplicable policy reference is converted into an official-sounding justification for a decision.
- **[[Policy Laundering and Audit-Log Whitewash]]** — Failure modes where a system uses policy language or audit records to make decisions appear compliant, reviewed, or justified without substantive evidence or real human oversight.
- **[[Public Benefits Eligibility Automation]]** — Automated or semi-automated systems that determine eligibility, route mismatches to staff, and depend on human overrides and appeal paths for consequential public benefits decisions.
- **[[Responsible AI Implementation Memo]]** — A 2021 DoD memorandum that turns Responsible AI principles into an implementation program emphasizing governance, oversight, testing, verification, validation, and workforce understanding.
- **[[Responsible AI Strategy and Implementation Pathway]]** — A DoD strategy that makes Responsible AI operational by defining governance, warfighter trust, lifecycle care, requirements validation, ecosystem coordination, and workforce development.
- **[[Responsible AI Theater]]** — A failure mode where an AI system produces the visible artifacts of responsibility, traceability, reliability, and governance while eliminating the human authority those artifacts are meant to protect.
- **[[Responsible AI Toolkit]]** — A CDAO toolkit for tracking AI projects against Responsible AI best practices using lifecycle assessments, artifacts, traceability, and alignment checks.
- **[[Responsible Military Use of AI and Autonomy Declaration]]** — A State Department political declaration advocating accountable human command chains, transparency, lifecycle testing, and safeguards that allow disengagement or deactivation.
- **[[Scenario Card Design]]** — The practice of constructing realistic synthetic case packets with patterns like missing documents, duplicate charges, policy ambiguity, and weak evidence to probe system behavior.
- **[[Synthetic-Only Eval Harness]]** — A bounded testing setup that uses fake packets and scenarios only, with no interaction with real claims, payments, or production systems.
- **[[Trust-and-Safety Appeals and Content Moderation]]** — Content moderation workflows where automated or human enforcement actions can be appealed, reviewed, overturned, or escalated through secondary queues and specialist review.
- **[[Verification Complexity]]** — The degree of effort required to check an automated recommendation, which strongly influences whether reviewers accept it uncritically.

_39 pages | Generated 2026-04-30T10:43:40.912Z_
