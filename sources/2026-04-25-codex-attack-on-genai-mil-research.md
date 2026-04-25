---
title: 2026 04 25 codex attack on genai mil research
source: curated/2026-04-25-codex-attack-on-genai-mil-research.md
ingestedAt: "2026-04-25T17:06:25.256Z"
---

---
title: Codex Attack on GenAI.mil Research
date: 2026-04-25
sensitivity: private-redacted
source_type: adversarial-critique
status: ready-for-ingest
---

# Context
- Thread/date: 2026-04-25
- Topic slug: codex-attack-on-genai-mil-research
- Confidence: medium
- Scope: adversarial critique of commit 02d0583, focused on weak claims, citation fit, wedge feasibility, and judge-fit risk. This is not a new research batch.
- Privacy posture: no raw transcripts, no PII, no secrets, no sensitive operational details. Public claims below are tied to public pages or to existing notes.

# Strongest findings
- The core shape is right: the GenAI.mil track is about rank-and-file administrative burden, public/unclassified inputs, and a narrow end-to-end workflow. The strongest general mechanism is not generic chat; it is controlled retrieval, structured draft generation, missing-field flags, refusal when ungrounded, and human approval.
- The DA 31 leave assistant is a credible weekend wedge because it has one persona, one concrete artifact, a visible before/after, and a clear trust boundary. Its weakness is not demo shape; its weakness is unvalidated frequency and Army-specific scope.
- TDY pre-flight checking has the strongest public evidence of process friction in the batch, but the cleanest numbers are old or locally scoped. It is evidence of a real pain pattern, not a current DoD-wide voucher KPI.
- Doctrine-at-the-edge is the cleanest technical reading if "offline" is literal. It is also the easiest way to avoid pretending to integrate with GenAI.mil. The risk is spending the whole build proving local inference instead of solving an admin workflow.
- The contract-intel wedge is lower confidence for this hackathon because it needs more specialized SME judgment, has less visceral rank-and-file fit, and SAM.gov API access is not actually frictionless.

# Weak evidence / assumptions
- Offline is over-weighted. The organizer QuickStart includes "and does it offline", but the public SCSP hackathon page does not use the word. Treat literal offline/DDIL as a hypothesis to validate, not the core claim unless the demo actually runs locally.
- GenAI.mil platform claims need provider-specific attribution. War.gov supports launch, CUI/IL5, Gemini for Government, and broad desktop rollout. OpenAI supports ChatGPT on GenAI.mil and says OpenAI data remains isolated from OpenAI public/commercial model training. That does not automatically prove identical terms for every model.
- Adoption claims are mixed quality. The 100K-agent number is useful color from DefenseScoop, but it is a single secondary source and should not be a slide headline without primary confirmation.
- Judge-fit language should be softer. Public bios support hypotheses about what judges may appreciate, but "will reward" statements are not evidence.
- DA 31 impact arithmetic is unsupported as written. "Every uniformed Soldier files DA 31 several times per year" is overbroad because DA 31 is Army-specific and the batch does not cite a rate or denominator.
- Current DTS rejection-rate framing was too strong. GAO-05-400T supports an 18% rejection rate for FY2004 Army National Guard travel claims; it should not be repeated as a current DoD average.
- SAM.gov was mislabeled as no-auth public API. GSA docs for Get Opportunities and Entity Management require public API keys. USAspending, eCFR, Federal Register, and GSA per diem are safer no-key demo dependencies.
- "IPPS-A-ready DA 31" overclaims integration. The prototype should produce a review-ready draft and rationale, not imply direct IPPS-A compatibility or official submission.

# Recommended wedge
- Primary recommendation: DA 31 leave draft assistant, but only with conservative claims.
- Demo promise: "Given a synthetic plain-English leave request, generate a review-ready DA 31 draft plus a cited rationale, unresolved-field list, and refusal/critique panel. The human submits through official channels."
- Technical hook: local packaged corpus, paragraph-level citation, structured form mapping, missing-field validation, and a tiny held-out evaluation set. If local inference is not reliable, say "local corpus/no live retrieval" rather than "offline AI".
- Trust boundary: no PII, no LES upload, no signature, no submission, no leave-balance invention, no authoritative policy paraphrase without citation.
- Fallback wedge if Army leave validation fails: TDY pre-flight lint over synthetic itinerary/voucher data, JTR, and GSA per diem. This has stronger public pain evidence but a harder demo if the team drifts toward DTS integration.
- Fallback wedge if judges/organizers confirm literal offline as central: doctrine-at-the-edge RAG over a small APD corpus with a visible eval/refusal scoreboard. Keep it read-only unless time remains.

# Rejected or low-confidence claims
- Reject: "GenAI.mil lacks capability X" unless the source proves absence. Say the prototype differentiates from a broad model gateway through a bounded workflow and visible evaluation.
- Reject: "Every DoD desktop/user will use GenAI.mil" as a practical usage claim. Public releases support broad availability, not adoption by every person.
- Reject: "Every Soldier files DA 31 several times per year" and "millions per year" unless a sourced denominator is found.
- Reject: "DTS currently rejects one in five vouchers" as a current average. Use "historical GAO evidence and current public guidance show travel-process friction."
- Reject: "SAM.gov is ungated/no-auth." It is public data, but major API paths require keys.
- Low confidence: Dr. Ho-Chit Liu equals Dr. Ho Chit (Hosea) Siu. Possible, but surname mismatch means this should not be treated as fact before event confirmation.
- Low confidence: xAI Grok and future Anthropic model details for GenAI.mil. Keep as secondary reporting unless primary-sourced.
- Low confidence: judge-specific reward predictions. Use public bios to tune the story, not as claims about scoring.

# Next validation questions
- Ask organizers: Does "offline" mean literal no-network/on-device operation, or only getting warfighters away from desk-bound bureaucracy?
- Ask one Army admin/S1-informed SME: Is DA 31 still the right artifact to demo, and what are the top three real rework causes?
- Ask one traveler/DTS-informed SME: Are voucher kicks more painful and common than leave-form rework for rank-and-file users?
- Ask whether synthetic data and public forms are enough for judging, or whether judges expect a live official-system-adjacent demo.
- Ask whether "local packaged corpus with no live retrieval" is sufficient for the offline story if model inference still uses a hosted API.
- Ask whether any GenAI.mil program staff will judge or mentor; if yes, calibrate whether companion-component framing is welcome.
- Ask what one measurable eval would feel credible in five minutes: paragraph retrieval accuracy, missing-field detection, refusal correctness, or form-field mapping accuracy.

# Public-source spot checks used
- SCSP public hackathon page confirms the GenAI.mil track framing around administrative trenches, paperwork, logistics, and tactical knowledge retrieval, and confirms 20,000+ AI+ Expo attendees: https://expo.scsp.ai/hackathon/
- War.gov GenAI.mil launch release confirms December 9, 2025 launch, Gemini for Government as first capability, broad desktop rollout language, and CUI/IL5 certification: https://www.war.gov/News/Releases/Release/Article/4354916/the-war-department-unleashes-ai-on-new-genaimil-platform/
- OpenAI confirms ChatGPT on GenAI.mil for unclassified work and states OpenAI data isolation / no training for OpenAI public or commercial models: https://openai.com/index/bringing-chatgpt-to-genaimil/
- GSA SAM.gov Get Opportunities Public API docs require an API key, contradicting the "no auth required" wording: https://open.gsa.gov/api/get-opportunities-public-api/

# Public-safe summary
- Keep the wedge narrow and honest. The best current bet is a DA 31 leave draft assistant with citations, missing-field flags, synthetic data, no official submission, and a small evaluation/refusal panel. Do not overclaim offline, GenAI.mil platform gaps, DA 31 population impact, current DTS rejection rates, SAM.gov auth, or judge preferences. Validate the exact workflow with an SME before turning the research into the final spec.

