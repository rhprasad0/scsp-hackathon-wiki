---
title: Two-Round SME Interview Process
summary: A staged interviewing method where Round 1 maps current reality and Round 2 only fills gaps that could change the spec.
sources:
  - 2026-04-24-sme-discovery-plan.md
createdAt: "2026-04-24T21:23:02.628Z"
updatedAt: "2026-04-24T21:23:02.628Z"
tags:
  - interviewing
  - process
  - specification
  - research-method
aliases:
  - two-round-sme-interview-process
  - TSIP
---

# Two-Round SME Interview Process

The Two-Round SME Interview Process is a discovery workflow for validating or rejecting an initial spec wedge by interviewing people with relevant DoD, defense, logistics, admin, procurement, planning, or government workflow experience. It is designed to find enough high-signal people during a short hackathon, especially when organizers may not reliably route participants to the right SMEs. The process prioritizes recent concrete workflows over abstract opinions and uses interview evidence to decide when to stop exploring and start writing. ^[2026-04-24-sme-discovery-plan.md]

Round 1 maps current-state reality. Interviewers use a short opener focused on a recent workflow and capture the role or perspective, workflow trigger, step-by-step flow, artifacts, bottlenecks, trust boundaries, and open questions. Raw notes or speech-to-text are then promoted immediately into a curated note, and the wiki is queried after a few notes to identify repeated bottlenecks and candidate wedges. ^[2026-04-24-sme-discovery-plan.md]

Round 2 is targeted follow-up. It should close only the gaps that can change the spec, rather than broadening the research. The goal is to confirm whether the same pain points recur across conversations, clarify trust boundaries, and gather the minimum evidence needed to decide whether a candidate wedge survives first contact with real workflow evidence. ^[2026-04-24-sme-discovery-plan.md]

The process includes several guardrails: do not record or retain names unless explicitly necessary and approved; redact sensitive operational details before ingest; ask what information is sensitive, restricted, or awkward to share; and preserve the distinction between what AI can assist, what humans must judge, and what official systems must own. Interviews should stay anchored in a recent real case, since conversations can drift into solution brainstorming before the current workflow is understood. ^[2026-04-24-sme-discovery-plan.md]

A practical stopping rule is to pivot from interviewing to writing when new conversations sharpen the same story instead of changing it. The source material suggests a minimum interview threshold of likely 3+ independent mentions of the same pain point plus one clear trust boundary before writing. Supporting artifacts include an interview opener, a two-round SME interview template, raw STT or voice notes, curated interview debriefs, follow-up question lists, and a spec-readiness score marked red, yellow, or green. ^[2026-04-24-sme-discovery-plan.md]

Related concepts include [[human review]], [[curated markdown as durable source material]], [[working memory]], [[trust boundaries]], and [[evidence-backed synthesis over prototype sprawl]]. ^[2026-04-24-sme-discovery-plan.md]

## Sources

- [2026-04-24-sme-discovery-plan.md]
