---
title: Organizer Judging Signal
date: 2026-04-25
sensitivity: private-redacted
source_type: organizer-comment
status: ready-for-ingest
---

# Context
- Thread/date: 2026-04-25
- Topic slug: organizer-judging-signal
- Confidence: medium
- Source: brief informal organizer guidance relayed by Ryan during the SCSP hackathon.

# Core observations
- The organizer was not hands-on familiar with the challenge domain, so this is judging/event-shape signal rather than SME workflow evidence.
- Organizer guidance: projects should be **creative**, **interesting**, and **technically challenging**.
- This implies the final submission should not be only a sober workflow/spec artifact; it needs a memorable technical wedge and demo hook.
- The guidance does not replace the need for a grounded user/workflow story, but it shifts the bar: the project must be both operationally credible and hackathon-interesting.

# Workflow implications
1. Keep the current discovery/spec focus as the grounding layer.
2. Add a technically challenging mechanism that judges can understand quickly.
3. Frame the demo around a creative but bounded capability, not a generic admin assistant.
4. Preserve trust boundaries explicitly so the creative element does not look reckless.

# Bottlenecks / risks
- Over-correcting toward creativity could produce a flashy toy with weak workflow evidence.
- Over-correcting toward workflow rigor could produce a useful but boring spec that underperforms in hackathon judging.
- “Technically challenging” needs to be visible in the demo/story, not buried in implementation details.

# Trust boundaries / approvals
- Creativity should not mean removing human review.
- The final concept should make AI uncertainty, citations, missing information, and human approval visible.
- Any public-facing repo/spec must stay sanitized and avoid sensitive operational details.

# Candidate framing update
- Best target shape: **boring workflow, spicy mechanism**.
- Example pattern: a constrained GenAI.mil assistant that turns messy low-side requests into cited, reviewable military-style artifacts, then stress-tests or red-teams its own draft for missing authority, assumptions, hallucinations, and approval gaps.
- This preserves a grounded workflow while adding technical challenge through retrieval, structured drafting, self-critique/evaluation, and trust-boundary visualization.

# Open questions
- Which technical mechanism will feel most impressive without widening scope: retrieval/citations, policy compliance checks, adversarial self-review, eval harness, multi-agent critique, or provenance/audit trail?
- What single demo sentence best communicates creativity + utility?
- What assumptions should Codex attack before implementation begins?

# Public-safe summary
- Organizer signal: winning work should feel creative, interesting, and technically challenging. For this project, that argues for a narrow real workflow with a visible technical hook: not “generic military chatbot,” but a constrained, reviewable artifact-generation workflow with citations, missing-field flags, and a built-in critique/evaluation layer.
