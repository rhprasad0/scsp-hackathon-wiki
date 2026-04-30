---
title: Automation bias, rationales, and exception-reviewer behavior
created: 2026-04-29
tags:
  - ao-radar
  - automation-bias
  - human-review
  - explainable-ai
  - evidence-map
status: research-note
---

# Automation bias, rationales, and exception-reviewer behavior

## Research question

Evidence lane 2 asks how nominal human review can fail when an automated adjudication system sets the default recommendation, attaches confidence or an explanation, routes only rare exceptions to humans, and writes the rationale or audit trail after the fact.

Questions answered here:

1. Under what conditions do humans over-rely on automated recommendations?
2. How do confidence scores, explanations, and generated rationales affect reviewer trust and calibration?
3. How does this apply when humans only see rare exceptions or compressed summaries?

## Bottom line

The strongest evidence supports a narrow claim: **human-in-the-loop is not a control unless the human has the time, information, authority, incentives, and cognitive posture needed to challenge the automated default.** Automation bias and complacency are well-established in human factors research; more recent HCI/XAI studies show that explanations and confidence cues can improve performance in some cases but can also make wrong AI advice more persuasive, especially when reviewers are uncertain, cognitively loaded, unfamiliar with the task, or asked to verify a complex recommendation quickly.

For AO Radar, this supports evaluating human review as an experimental condition rather than a checkbox. The harness should test whether the reviewer actually changes outcomes, catches seeded defects, and escalates ambiguity — not merely whether the process record says a review happened.

## Evidence map

### 1. Automation bias and complacency are attentional failures, not just naive-user mistakes

- **Source:** Raja Parasuraman & Dietrich H. Manzey, “Complacency and Bias in Human Use of Automation: An Attentional Integration,” *Human Factors* (2010). https://doi.org/10.1177/0018720810376055
- **Source class:** Human factors review.
- **Supports:** General automation-bias frame; rare-failure monitoring; decision-aid commission and omission errors.
- **Useful finding:** Automation complacency occurs when multiple tasks compete for attention; automation bias creates both omission errors and commission errors when decision aids are imperfect. The review reports that these effects appear in both naive and expert users and are not eliminated by simple training or instructions.
- **Confidence:** High for general phenomenon; medium for direct transfer to adjudication workflows.
- **AO Radar mapping:** `AUTOMATED_CERTAINTY`, `FAILURE_TO_ESCALATE`, `DECORATIVE_HUMAN_REVIEW`.
- **Article-ready line:** “A reviewer can be nominally in the loop while attention has already left the loop.”
- **Caveat:** The classic evidence base is strongest in aviation, monitoring, and decision-support settings; AO Radar should use it as mechanism evidence, not as proof of any specific claims workflow.

### 2. Verification complexity is a key condition for overreliance

- **Source:** David Lyell et al., “Automation bias and verification complexity: a systematic review,” *Journal of the American Medical Informatics Association* (2017). https://doi.org/10.1093/jamia/ocw105
- **Source class:** Systematic review.
- **Supports:** Overreliance when checking the automation requires many cognitive steps.
- **Useful finding:** The review identified 40 relevant studies and found that automation bias is not limited to multitasking environments. It also appears in single-task settings, especially diagnostic tasks with high verification complexity. The authors conclude that strategies to reduce automation bias may need to reduce cognitive load.
- **Confidence:** High for verification-complexity concept.
- **AO Radar mapping:** `PROCESS_SAYS_REVIEWED_BUT_NO_MEANINGFUL_REVIEW`, `FAILURE_TO_ESCALATE`, `RATIONALE_OVERFITTING`.
- **Article-ready line:** “The harder a recommendation is to verify, the easier it is for review to become acceptance.”
- **Caveat:** Most reviewed studies are lab or healthcare/monitoring analogs; use for workflow design principles, not incidence rates.

### 3. Human review must be active, authorized, and outcome-affecting to count as meaningful

- **Source:** UK Information Commissioner’s Office, “What does the UK GDPR say about ADM?” (updated 2026 draft guidance). https://ico.org.uk/for-organisations/uk-gdpr-guidance-and-resources/individual-rights/automated-decision-making/what-does-the-uk-gdpr-say-about-adm/
- **Source class:** Regulator guidance.
- **Supports:** Definition of meaningful human involvement; distinction between real review and token gesture.
- **Useful finding:** The ICO states that meaningful human involvement must be “active and not just a token gesture.” A human should assess the decision at an appropriate point, have actual influence, have discretion and authority to alter the decision, understand the system’s outputs and limits, and consider the relevant data and factors. Spot checks are not enough when individual automated decisions are at issue.
- **Confidence:** High for public framing of meaningful review.
- **AO Radar mapping:** `DECORATIVE_HUMAN_REVIEW`, `PROCESS_SAYS_REVIEWED_BUT_NO_MEANINGFUL_REVIEW`, `FAILURE_TO_ESCALATE`.
- **Article-ready line:** “The question is not whether a person touched the file; it is whether the person could still change the outcome.”
- **Caveat:** This is UK data-protection guidance, not a universal standard for all domains; useful as a strong definition of meaningfulness.

### 4. AI risk governance should measure whether humans are empowered and incentivized to challenge AI output

- **Source:** NIST AI Risk Management Framework 1.0, Appendix C: “AI Risk Management and Human-AI Interaction” (2023). https://airc.nist.gov/AI_RMF_Knowledge_Base/AI_RMF/Appendices/Appendix_C
- **Source class:** Official standards/guidance.
- **Supports:** Human-AI role clarity; measuring override frequency and rationale; risk of human cognitive bias in deployed settings.
- **Useful finding:** NIST emphasizes that human roles and responsibilities in AI decision-making need to be clearly defined and differentiated. It notes that human-AI interaction varies by context, that AI outputs and explanations are interpreted differently by different users, and that data about how often and why humans overrule AI output may be useful to collect and analyze.
- **Confidence:** High for governance framing; medium for operational prescriptions.
- **AO Radar mapping:** `DECORATIVE_HUMAN_REVIEW`, `PROCESS_SAYS_REVIEWED_BUT_NO_MEANINGFUL_REVIEW`, `AUTOMATED_CERTAINTY`.
- **Article-ready line:** “Override rate is not a footnote; it is an instrument panel for whether oversight exists.”
- **Caveat:** NIST does not prescribe one universal override rate; AO Radar should treat override behavior as a diagnostic signal, not a standalone success metric.

### 5. Simple explanations often do not reduce overreliance; cognitive forcing can help but has usability costs

- **Source:** Zana Buçinca, Maja B. Malaya & Krzysztof Z. Gajos, “To Trust or to Think: Cognitive Forcing Functions Can Reduce Overreliance on AI in AI-assisted Decision-making,” *Proceedings of the ACM on Human-Computer Interaction* (2021). https://doi.org/10.1145/3449287
- **Source class:** HCI experiment.
- **Supports:** Explanations as insufficient safeguard; cognitive forcing as design mitigation.
- **Useful finding:** The paper argues that people frequently overrely on AI by accepting wrong suggestions. Adding explanations does not necessarily reduce overreliance and may increase it in some settings. The authors found that cognitive forcing functions reduced overreliance compared with simple explainable-AI interfaces, but participants rated the more effective designs less favorably.
- **Confidence:** High for interface-design implication; medium for direct adjudication transfer.
- **AO Radar mapping:** `RATIONALE_OVERFITTING`, `POLICY_LAUNDERING`, `AUTOMATED_CERTAINTY`.
- **Article-ready line:** “Explanations are not inspections; without a forcing function, they can become a permission slip.”
- **Caveat:** Cognitive forcing can increase effort and may not help every reviewer equally; it should be evaluated, not assumed.

### 6. Explanation type matters: feature-based explanations can increase overreliance, while example-based explanations may better support override intuition

- **Source:** Valerie Chen, Q. Vera Liao, Jennifer Wortman Vaughan & Gagan Bansal, “Understanding the Role of Human Intuition on Reliance in Human-AI Decision-Making with Explanations,” *Proceedings of the ACM on Human-Computer Interaction* (2023). https://www.microsoft.com/en-us/research/publication/understanding-the-role-of-human-intuition-on-reliance-in-human-ai-decision-making-with-explanations/
- **Source class:** HCI mixed-methods study.
- **Supports:** Explanations can increase overreliance when wrong; decision-makers need usable paths to non-reliance.
- **Useful finding:** The study reports that empirical work has not consistently shown explanations to improve human-AI decisions and may increase overreliance when AI is wrong. In this study, feature-based explanations increased overreliance, while example-based explanations helped decision-makers apply intuition about task outcomes, features, and AI limitations to override AI predictions.
- **Confidence:** Medium-high; specific to studied tasks and explanation designs.
- **AO Radar mapping:** `RATIONALE_OVERFITTING`, `POLICY_LAUNDERING`, `FAILURE_TO_ESCALATE`.
- **Article-ready line:** “A rationale that points at features is not the same as an evidence path that helps a reviewer know when to disagree.”
- **Caveat:** Not all explanations are harmful; the relevant design question is whether the explanation helps reviewers identify unreliability and exercise independent judgment.

### 7. AI advice can be over-relied on even when it conflicts with context and self-interest

- **Source:** Artur Klingbeil, Cassandra Grützner & Philipp Schreck, “Trust and reliance on AI — An experimental study on the extent and costs of overreliance on AI,” *Computers in Human Behavior* (2024). https://doi.org/10.1016/j.chb.2024.108352
- **Source class:** Open-access behavioral experiment.
- **Supports:** AI label/advice can increase reliance; trust attitudes correlate with reliance behavior.
- **Useful finding:** In a domain-independent incentivized experiment, participants overrelied on AI advice for financially risky decisions. The authors report that mere knowledge of advice being generated by AI caused participants to follow advice even when it conflicted with contextual information and their own assessment.
- **Confidence:** Medium-high for broad behavioral effect; medium for high-stakes reviewer settings.
- **AO Radar mapping:** `AUTOMATED_CERTAINTY`, `DECORATIVE_HUMAN_REVIEW`, `PROCESS_SAYS_REVIEWED_BUT_NO_MEANINGFUL_REVIEW`.
- **Article-ready line:** “The label ‘AI recommendation’ can move behavior before the evidence does.”
- **Caveat:** Experimental stakes and participants differ from trained adjudicators; use as evidence of mechanism and interface risk.

### 8. Miscalibrated confidence scores impair appropriate reliance and are hard for users to detect

- **Source:** Jingshu Li et al., “Understanding the Effects of Miscalibrated AI Confidence on User Trust, Reliance, and Decision Efficacy,” arXiv (2024/2025). https://arxiv.org/abs/2402.07632
- **Source class:** HCI preprint.
- **Supports:** Confidence scores as trust-calibration tool with failure modes.
- **Useful finding:** The authors report that miscalibrated AI confidence impairs appropriate reliance and reduces AI-assisted decision efficacy, and that users have difficulty detecting miscalibration. Communicating calibration levels helped users detect miscalibration but also decreased trust in uncalibrated AI, producing under-reliance rather than better decision efficacy.
- **Confidence:** Medium; preprint, but directly relevant.
- **AO Radar mapping:** `AUTOMATED_CERTAINTY`, `FAILURE_TO_ESCALATE`, `RATIONALE_OVERFITTING`.
- **Article-ready line:** “A confidence score is a control only if the user can tell when the score itself deserves confidence.”
- **Caveat:** Confidence scores can help when genuinely calibrated and understood; AO Radar should test calibration, not ban confidence display categorically.

### 9. Generated explanations can create false confidence when the AI is wrong

- **Source:** Manshu Khanna, Ziyi Wang, Lijia Wei & Lian Xue, “AI Transparency Paradox: When Medical AI Explanations Help and When They Harm” (working paper). https://www.chapman.edu/research/institutes-and-centers/economic-science-institute/_files/ifree-papers-and-photos/ai-health-belief.pdf
- **Source class:** Working paper / lab-in-the-field experiment.
- **Supports:** Explanations can indiscriminately increase reliance and confidence.
- **Useful finding:** In an experiment with medical students and GPT-4-generated diagnostic advice, explanations improved accuracy when AI advice was correct but decreased accuracy when it was incorrect. The paper reports that explanations made AI advice more persuasive regardless of quality and inflated perceived reliability and confidence, especially among uncertain decision-makers.
- **Confidence:** Medium; working paper and medical-student sample, but highly relevant to rationale risk.
- **AO Radar mapping:** `POLICY_LAUNDERING`, `RATIONALE_OVERFITTING`, `AUTOMATED_CERTAINTY`.
- **Article-ready line:** “A polished explanation can raise confidence precisely when skepticism is most valuable.”
- **Caveat:** Treat as emerging evidence; avoid presenting as settled consensus or as proof that transparency is bad in general.

## Conditions that increase overreliance

Across the sources, overreliance becomes more likely when:

- **The automated system sets a clear default recommendation.** Reviewers tend to anchor on the recommended approve/deny/escalate path.
- **The reviewer faces high verification complexity.** If checking the recommendation requires reconstructing evidence, policy, chronology, and exceptions, acceptance is cheaper than verification.
- **The reviewer has divided attention or high workload.** Automation bias and complacency are attention-allocation problems, not just attitude problems.
- **The automation appears generally reliable.** High baseline reliability can reduce monitoring for rare failures.
- **The reviewer is uncertain or lower-expertise in the specific case.** Uncertain reviewers may treat explanations as credibility signals rather than evidence to scrutinize.
- **The interface provides explanations without forcing independent judgment.** Rationales can become signals of competence, especially when they are fluent and policy-shaped.
- **Confidence cues are miscalibrated or poorly understood.** Numeric confidence can create false precision if users cannot evaluate calibration.
- **Organizational incentives reward throughput over correction.** A reviewer with no time or penalty-free override authority is structurally pushed toward acceptance.

## Exception-reviewer and compressed-summary implications

Exception-only review is not automatically safer. It can be a useful allocation strategy, but it creates three distinct risks:

1. **Rare-failure vigilance problem.** When most cases are auto-processed and only occasional exceptions appear, reviewers may lose the attentional posture needed to detect the rare but consequential error.
2. **Compressed-evidence problem.** Summaries can hide the very context needed to challenge the recommendation. If the reviewer sees a clean rationale rather than the underlying evidence, they are reviewing narrative coherence rather than decision quality.
3. **Default-preservation problem.** If the system routes only cases it has already labeled as exceptions, the reviewer may treat the route itself as evidence that non-routed cases are safe, while routed cases still arrive with an automated frame.

For AO Radar, the key experimental variable is not “human review: yes/no.” It is the review mode:

- **Meaningful reviewer:** sees underlying evidence, can change the outcome, has time, and must record independent reasoning.
- **Exception reviewer:** sees only routed cases and may lack visibility into false negatives that never reached review.
- **Compressed-summary reviewer:** sees an AI-produced summary/rationale and must decide whether to trust the summary.
- **Decorative reviewer:** clicks approval after the system has effectively determined the outcome.
- **Appeal-only reviewer:** acts after the decision has already affected the subject, so the authority boundary has shifted.

## AO Radar label mapping

| Label | Evidence-backed interpretation | What to test in the harness |
|---|---|---|
| `AUTOMATED_CERTAINTY` | The system presents uncertain evidence as resolved through recommendation, confidence, or fluent rationale. | Seed ambiguous cases and check whether the specimen overstates certainty or suppresses uncertainty. |
| `DECORATIVE_HUMAN_REVIEW` | A human is present but lacks time, evidence, authority, independence, or incentive to alter the outcome. | Compare approval/override behavior across review modes and workloads. |
| `PROCESS_SAYS_REVIEWED_BUT_NO_MEANINGFUL_REVIEW` | The audit trail records a review event without evidence of independent judgment. | Require review notes to cite original evidence and explain disagreement/escalation choices. |
| `POLICY_LAUNDERING` | A generated explanation makes a weak or unsupported action appear policy-grounded. | Check whether cited policy actually supports the decision and whether alternatives/escalation were considered. |
| `RATIONALE_OVERFITTING` | The rationale is optimized to justify the chosen outcome rather than reflect the evidence. | Insert conflicting facts and test whether rationales ignore, reframe, or invent support. |
| `FAILURE_TO_ESCALATE` | The system or reviewer accepts a default decision where ambiguity, missing evidence, or policy conflict should trigger escalation. | Include explicit escalation-required scenarios and measure missed escalations. |

## Demo implications

1. **Add a reviewer-mode toggle.** Run the same synthetic packet under no review, meaningful review, exception review, compressed-summary review, and decorative review.
2. **Inject known-bad recommendations.** Seed cases where the automated recommendation is wrong but plausible. Measure whether the reviewer catches the defect.
3. **Vary rationale quality.** Compare no rationale, terse evidence list, fluent policy-shaped rationale, and evidence-linked rationale. The expected failure is higher trust in fluent but unsupported rationales.
4. **Vary confidence calibration.** Include calibrated confidence, overconfident wrong advice, and confidence-with-calibration-warning. Measure whether confidence changes override and escalation behavior.
5. **Require independent reviewer judgment before showing the AI answer.** This creates a cognitive forcing baseline and lets the harness measure whether AI advice changes the reviewer’s decision.
6. **Score the review, not just the model answer.** Record override rate, escalation rate, time-to-review, evidence citations, rationale-evidence alignment, and catch rate on seeded defects.
7. **Treat low override rates as ambiguous.** A low override rate can mean the system is strong, the scenarios are easy, or the review is decorative. The harness needs adversarial sampling to tell the difference.

## Caveats and controlled framing

- Do not claim that all human review is meaningless. The evidence supports a conditional claim: review fails when structure, information, time, authority, and incentives are missing.
- Do not claim that all explanations are bad. Explanations can help when they reveal uncertainty, expose evidence, and support independent verification. They are risky when they become fluent justifications for an automated default.
- Do not claim confidence scores are inherently unsafe. The risk is miscalibration, user misunderstanding, or false precision in high-verification-complexity settings.
- Do not infer real-world failure rates from lab studies. Use these sources to justify synthetic eval design and failure labels.
- Preserve the product boundary: AO Radar is a synthetic eval harness for testing closed-loop adjudication failure modes, not a production decision system.

## Public-safe synthesis paragraph

AO Radar tests a known human-AI failure pattern: when a machine sets the default decision, displays confidence, writes a plausible rationale, and leaves a human to approve exceptions, the human review step can become process theater. Human factors and HCI research show that reviewers over-rely on automation under workload, uncertainty, and high verification complexity; explanations and confidence cues can improve calibration in some designs but can also make wrong recommendations more persuasive. The harness should therefore evaluate whether human review actually changes outcomes, catches seeded defects, and escalates ambiguity — not merely whether the audit trail says a human reviewed the case.
