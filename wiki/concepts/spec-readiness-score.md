---
title: Spec Readiness Score
summary: A red-yellow-green rubric used to judge when enough repeated evidence has been gathered to stop interviewing and start writing.
sources:
  - 2026-04-24-sme-discovery-plan.md
createdAt: "2026-04-24T21:23:06.915Z"
updatedAt: "2026-04-24T21:23:06.915Z"
tags:
  - prioritization
  - readiness
  - decision-making
  - product-planning
aliases:
  - spec-readiness-score
  - SRS
---

# Spec Readiness Score

Spec Readiness Score is a simple red/yellow/green indicator used during SME discovery to decide whether the team has enough evidence to begin writing a spec. It reflects whether repeated workflow evidence, bottlenecks, and trust boundaries have stabilized enough to justify pivoting from interviewing to drafting. ^[2026-04-24-sme-discovery-plan.md]

The score is tied to a current-state discovery process, not to abstract opinions about AI. Interviews are meant to focus on recent concrete workflows, with raw notes or STT promoted into curated notes and then queried in the wiki for repeated pain points and candidate wedges. The score helps answer whether the project has reached the point where new conversations are mainly sharpening the same story rather than changing it. ^[2026-04-24-sme-discovery-plan.md]

A spec is considered closer to ready when there are enough independent mentions of the same pain point and at least one clear trust boundary. The source material gives a minimum interview target of likely 3+ independent mentions of the same pain point plus one clear trust boundary before writing. ^[2026-04-24-sme-discovery-plan.md]

The score supports an [[AI-assisted spec with human review]] workflow by marking when evidence has become strong enough to move from discovery into drafting, while still preserving human judgment and approval. It also fits with [[Curated markdown as durable source material]] and [[Evidence-backed synthesis over prototype sprawl]] because the readiness judgment depends on curated notes, repeated evidence, and a narrow wedge rather than broad prototype expansion. ^[2026-04-24-hackathon-operating-context.md, 2026-04-24-sme-discovery-plan.md]

## Interpreting the score

- **Red**: the team does not yet have enough high-signal workflow evidence to write.
- **Yellow**: evidence is accumulating, but the main story is still changing and more interviews are needed.
- **Green**: repeated pain points and trust boundaries have stabilized enough to pivot to writing. ^[2026-04-24-sme-discovery-plan.md]

## How it is used

The score is checked after a few interviews and wiki notes have been compiled. If new conversations are no longer changing the underlying workflow story and instead are only refining it, the team can stop interviewing and pivot to writing. If the team is still collecting weak opinions, abstractions, or conflicting workflow traces, the score should remain low. ^[2026-04-24-sme-discovery-plan.md]

## Related concepts

- [[AI-assisted spec with human review]]
- [[Curated markdown as durable source material]]
- [[Evidence-backed synthesis over prototype sprawl]]
- [[Hackathon working-memory wiki]]
- [[human review]]
- [[trust boundaries]]

## Sources

- [2026-04-24-sme-discovery-plan.md]
