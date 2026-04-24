---
title: SME Discovery for Hackathon Validation
summary: A structured process for finding subject matter experts to validate or reject an initial product wedge before writing a final spec.
sources:
  - 2026-04-24-sme-discovery-plan.md
createdAt: "2026-04-24T21:23:11.379Z"
updatedAt: "2026-04-24T21:23:11.379Z"
tags:
  - discovery
  - validation
  - hackathon
  - product-planning
aliases:
  - sme-discovery-for-hackathon-validation
  - SDFHV
---

# SME Discovery for Hackathon Validation

SME Discovery for Hackathon Validation is an interview-focused approach for a short hackathon or discovery sprint where the main goal is not to write the final spec immediately, but to find enough high-signal people to validate or eliminate the initial wedge. It is designed for situations where access to DoD-experienced participants may be uneven, so discovery must be lightweight, direct, and opportunistic. ^[2026-04-24-sme-discovery-plan.md, 2026-04-24-hackathon-operating-context.md]

The approach emphasizes recent concrete workflows rather than abstract opinions about AI. Interviewers are encouraged to ask about a real recent case, capture the workflow trigger, step-by-step flow, artifacts, bottlenecks, trust boundaries, and open questions, and then promote raw notes or speech-to-text into curated notes immediately after each conversation. These curated notes can then be queried in a private wiki to identify repeated pain points and candidate wedges. ^[2026-04-24-sme-discovery-plan.md, 2026-04-24-hackathon-operating-context.md]

A common working method is to ask organizers, track mentors, and nearby teams for people with DoD or government workflow experience, using a short opener such as: “I’m trying to understand real admin/logistics/document workflows before writing a spec. Could I ask you for 10 minutes about a recent workflow you’ve seen?” The interview process should be narrow and structured, and it should stop once new conversations are only sharpening the same story instead of changing it. ^[2026-04-24-sme-discovery-plan.md]

The discovery process should preserve trust boundaries. Names should not be recorded or retained unless explicitly necessary and approved, sensitive operational details should be redacted before ingest, and interviewers should ask what information is sensitive, restricted, or awkward to share. The team should also keep clear distinctions between what AI can assist with, what humans must judge, and what official systems must own. ^[2026-04-24-sme-discovery-plan.md]

This workflow supports validation by helping the team decide which candidate wedge survives first contact with real evidence. The notes suggest a minimum interview threshold of likely 3+ independent mentions of the same pain point plus one clear trust boundary before writing, and they recommend using a simple spec-readiness score such as red, yellow, or green. ^[2026-04-24-sme-discovery-plan.md]

## Practical interview flow

1. Find likely SMEs through organizers, track mentors, and nearby teams. ^[2026-04-24-sme-discovery-plan.md]
2. Use a short opener focused on a recent workflow. ^[2026-04-24-sme-discovery-plan.md]
3. Capture role, workflow trigger, flow, artifacts, bottlenecks, trust boundaries, and open questions. ^[2026-04-24-sme-discovery-plan.md]
4. Immediately turn raw notes into a curated debrief. ^[2026-04-24-sme-discovery-plan.md]
5. Query the wiki after a few notes for repeated pain points and candidate wedges. ^[2026-04-24-sme-discovery-plan.md, 2026-04-24-hackathon-operating-context.md]
6. Stop interviewing and pivot to writing when new conversations no longer change the story. ^[2026-04-24-sme-discovery-plan.md]

## Validation outputs

Useful outputs from this process include interview openers, a two-round SME interview template, raw STT or voice notes, curated interview debriefs, follow-up question lists, and a spec-readiness score. The public-safe summary of the plan is to conduct short, current-state SME interviews focused on concrete recent workflows, promote each conversation into redacted curated notes, and pivot to spec writing once repeated pain points and trust boundaries stabilize. ^[2026-04-24-sme-discovery-plan.md]

## Related concepts

- [[Opportunistic SME discovery]]
- [[Hackathon working-memory wiki]]
- [[Human-in-the-Loop Review and Approval]]
- [[Controlled Reference Retrieval]]
- [[Scoped Prototype Wedge]]

## Sources

- [2026-04-24-sme-discovery-plan.md]
