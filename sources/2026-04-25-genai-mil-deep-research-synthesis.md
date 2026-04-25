---
title: 2026 04 25 genai mil deep research synthesis
source: curated/2026-04-25-genai-mil-deep-research-synthesis.md
ingestedAt: "2026-04-25T16:27:07.406Z"
---

---
title: GenAI.mil Deep Research Synthesis
date: 2026-04-25
sensitivity: public-safe
source_type: deep-research-synthesis
status: ready-for-ingest
---

# Context
- Thread/date: 2026-04-25
- Topic slug: genai-mil-deep-research-synthesis
- Confidence: medium-high (built only from the organizer-issued Hacker QuickStart and public sources; no SME validation yet, so wedge candidates are hypotheses to validate on Day 1).
- Source basis: the SCSP 2026 Hacker QuickStart GenAI.mil track tab; public reporting and government program pages on GenAI.mil, the AI Rapid Capabilities Cell, NIPRGPT, CamoGPT, Task Force Lima, Joint Travel Regulations, AR 600-8-10, DA Form 31, GAO defense-management reports, the CDAO RAI / GenAI Toolkit, and DoD edge-AI / DDIL examples (Google GDC at Mobility Guardian 2025, EdgeRunner, Legion Centurion).
- See also (siblings): research/2026-04-25-genai-mil-challenge-prompt-and-rubric.md, research/2026-04-25-genai-mil-public-context-and-links.md, research/2026-04-25-genai-mil-user-workflows-and-trust-boundaries.md, curated/2026-04-24-genai-mil-concept-seed.md, curated/2026-04-24-prior-scsp-winning-project-observations.md.

# Core observations
- The track is **not** asking for a generic military copilot. It is asking for a **narrowly scoped** end-to-end workflow assistant for the rank-and-file's administrative tail, demonstrated against public DoD text and a defined user persona.
- The "and does it offline" line, read literally, points the prompt at an **edge-deployable complement** to the GenAI.mil cloud platform. This is one of the cleanest differentiators available in this track.
- Off-the-shelf GenAI.mil already exists, on every DoD desktop, with three frontier models. A submission that is functionally equivalent to "open the GenAI.mil chat box and paste in a Field Manual" is invisible to the judges.
- The judging panel is unusually strong on both research depth (Mohindra and Liu/Siu at MIT Lincoln Laboratory) and DoD digital-transformation operations (Wagner from BRAVO / Advana / Gamechanger; Vernal as a 27-year intel/cyber Colonel; Chandra as ex-Special Advisor to the USAF Chief Scientist). Both audiences must be addressed in five minutes.
- Prior SCSP winners have been **diagnostic capabilities or narrowly scoped operational tools** with explicit human accountability and a clear demo. (See sibling note `2026-04-24-prior-scsp-winning-project-observations.md`.)

# Likely primary users / stakeholders
- **Junior NCOs and junior officers** drafting routine personnel-action paperwork (the QuickStart's own first persona — "a junior NCO planning a training trip"). Highest population, highest-frequency pain.
- **Unit S1 / personnel-office staff and DTS clerks** as the gate that catches and re-cycles a fifth of vouchers. They become heavy power users of any pre-flight check.
- **Authorizing Officials (AOs) and approving authorities** in the chain of command. They want to say yes faster but must own the decision.
- **Contracting officers (KOs) and program-office staff** for the contract-intel wedge. Smaller user base; deeper subject-matter context.
- **Forward-deployed personnel without persistent connectivity** in DDIL conditions — the population the "offline" word points at.
- **Hidden stakeholder: GenAI.mil program office / AI RCC.** They are watching where the demand signal is going and may absorb good wedges into the platform. Do not pretend to be on-platform; do present as a credible candidate for it.

# Current-state workflows (compressed from the workflows note)
1. **Regulation / policy Q&A** against AR / FM / TC. User asks an experienced peer or scrolls APD PDFs; the right paragraph exists but is not where a non-specialist would predict.
2. **DA 31 leave** request authoring (and re-authoring after rejection). Multi-block form, multi-signature approval chain, IPPS-A leave-balance reality check, AR 600-8-10 and JTR cross-reference for travel-bearing leave.
3. **TDY itinerary + voucher** through DTS against the JTR. Heavy GAO-documented pain: ~1-in-5 voucher rejections, doubled processing time after the 2014 flat-rate per diem change, hundreds of millions in improper payments, soldiers nicknaming DTS the "Don't Travel Service."
4. **Contract-intel scaffolding** for a KO using SAM.gov + USAspending + eCFR Title 48. GAO has documented thousands of staff days per program for milestone documentation, with most of that effort returning low judge-rated value.
5. **Implicit fifth: tactical knowledge retrieval** ("doctrine at the edge") — surfaced explicitly in the AI+ Expo hackathon page tagline ("software that automates military paperwork, logistics, and tactical knowledge retrieval for the rank-and-file") but not in the Hacker QuickStart text.

# Repeated bottlenecks and frictions
- **Citations and trust**: a generative answer with no anchored paragraph is worse than no answer. The cite is the artifact.
- **Form correctness**: rejection on small structural mistakes is the dominant friction (missing pay orders, mismatched lodging entitlement, wrong line of accounting, wrong leave type, missing dependent-travel block).
- **Cross-document reasoning**: AR 600-8-10 references the JTR; DA 31 references AR 600-8-10; DTS calls JTR per diem; FAR/DFARS references CFR. A single PDF Q&A loses this graph.
- **Connectivity assumption breaks at the edge**: cloud-only solutions disappear at the moment of need.
- **Tribal knowledge**: experienced NCOs and DTS clerks are the bottleneck the prompt wants to scale.

# Artifacts and data dependencies
- Public DoD text corpora: APD (ARs / ADPs / FMs / TCs / DA forms), Air Force e-Publishing (AFIs / AFMANs / AF forms), DTIC Public STINET, Joint Chiefs Doctrine Library (cross-track but useful here).
- Federal regulation corpora: eCFR Title 32 (National Defense), Title 48 (FAR + DFARS); Federal Register API.
- Travel and per diem: JTR PDF (DTMO, monthly), GSA Per Diem API.
- Contracting: SAM.gov public API, USAspending.gov API.
- Forms: DA Form 31 (and DA Form 4179 leave control log), AF / DD forms.
- Synthetic test data: prefer to all real PII; LES inputs should be redacted or simulated.

# Non-negotiable trust / safety / compliance boundaries
- ITAR / EAR: unclassified, public, or shareable data only; submissions are public; no controlled tech.
- Classification: stay at unclassified / CUI-equivalent in posture; do not pretend to be on GenAI.mil.
- DoD AI Ethical Principles (Responsible, Equitable, Traceable, Reliable, Governable) — operationalized for a 30-hour build as: paragraph-level citations on every claim, refusal when ungrounded, no automated submission to any official system, evaluation set with measured pass / fail, and an explicit list of what the AI is allowed and not allowed to do shown in the demo.
- Human-in-the-loop: the AI may draft, retrieve, cite, structure, and pre-flight; the AI may not approve, submit, classify, sign, file, or take a kinetic action.
- PII / PHI: even on CamoGPT this is explicitly disallowed; treat as a hard line in the prototype.

# Wedge candidates ranked for a weekend spec/demo
For each: who, what artifact, what trusted references, what flags, who approves.

## A) Form-honest leave assistant for DA 31 (top recommendation)
- **Pitch in one sentence**: "An offline-capable assistant that turns plain-English leave requests into a paragraph-cited, missing-field-flagged DA 31 draft, ready for IPPS-A submission by the Soldier."
- **Who**: junior NCO or junior Soldier; secondary, S1 clerk reviewing.
- **Artifact**: a populated DA 31 PDF + a one-page rationale with AR 600-8-10 paragraph cites + a residual-questions list.
- **Trusted references**: AR 600-8-10 (Leaves and Passes, 3 Jun 2020) bulk PDF from APD; DA Form 31 (current OCT 2023 fillable); JTR cross-references for travel-linked leave.
- **Flags**: leave-balance unverified; PTDY combination ban; emergency-leave linkage; dependent-travel block; signature-required blocks.
- **Approval path**: human Soldier signs Block 11; supervisor Block 12-13; approving authority Block 17; the AI never signs or submits.
- **Why it ranks first**:
  - **Problem-Solution Fit (25%)**: a specific persona, a specific high-frequency artifact, a public document chain (AR + Form), a documented pain that experienced NCOs immediately recognize.
  - **Technical Difficulty (25%)**: cite-or-refuse RAG over a real public corpus, structured PDF form generation, an eval set on AR 600-8-10 paragraph retrieval, optional offline on-device inference for the field case.
  - **Novelty (25%)**: most submissions in this track will be a "chat over PDFs"; the form-honest assistant adds structured output, eval discipline, and offline posture.
  - **National Impact (25%)**: every uniformed Soldier files DA 31 several times per year; the volume is in the millions per year; the rejection / rework cycle is well documented; honest impact arithmetic is straightforward to present.

## B) TDY pre-flight checker for DTS authorizations and vouchers
- **Pitch in one sentence**: "A JTR-grounded pre-submission lint for a TDY authorization or voucher that flags the top causes of voucher kicks before the traveler clicks submit."
- **Who**: any DoD traveler; secondary, the AO and the unit DTS rep.
- **Artifact**: a structured pre-flight report keyed to the user's draft itinerary / draft voucher, with JTR section and GSA per-diem citations.
- **Trusted references**: JTR PDF (DTMO monthly), GSA Per Diem API, common return-reasons checklists from the Air Force / Army Reservist videos.
- **Flags**: missing pay orders; mismatched lodging entitlement; wrong line of accounting; missing receipts; flat-rate per diem applicability; 181-day rule for long-term TDY.
- **Approval path**: traveler files in DTS; AO reviews and approves; the AI never books and never files.
- **Why it ranks high**: the GAO numbers are the strongest impact narrative in the entire track. The friction is loud and the win is measurable in voucher-kick rate. Slightly trickier to demo without a working DTS sandbox, but a synthetic-itinerary demo is sufficient.

## C) Doctrine-at-the-edge: offline-first AR / FM Q&A
- **Pitch in one sentence**: "A laptop-deployable, network-disconnected RAG over a packaged Army doctrine corpus, with paragraph-level citations and a built-in eval that proves it refuses what it does not know."
- **Who**: forward-deployed Soldier or junior leader; secondary, training environments without reliable connectivity.
- **Artifact**: a desktop / laptop app with a packaged APD subset (e.g., a chosen branch's FM corpus), a chat surface that always cites the cited paragraph, and a built-in eval scoreboard.
- **Trusted references**: APD bulk PDFs (FM list endpoint at `armypubs.army.mil/ProductMaps/PubForm/FM.aspx`); optional AFI / AFMAN from e-Publishing.
- **Flags**: an explicit "no answer in corpus" path; an explicit "out-of-date" warning when the loaded corpus version is older than published.
- **Approval path**: read-only; the AI never authors a binding artifact in this version (compose the form-honest piece on top in a follow-on).
- **Why it ranks high**: cleanest read of the "and does it offline" line; aligns with public DoD edge-AI investments (Google GDC at Mobility Guardian 2025; EdgeRunner CRADAs with ARL/AFRL; Legion Centurion); rewards the edge-AI / DDIL judges and the Lincoln-Lab researchers.

## D) Contract-intel scaffold for a KO
- **Pitch in one sentence**: "An ungated SAM.gov + USAspending + eCFR Title 48 scaffold that turns a one-paragraph problem statement into a sourced landscape brief for a contracting officer."
- **Who**: contracting officer; secondary, program-office staff.
- **Artifact**: a sourced one-pager (vendors, prior awards, applicable FAR / DFARS subparts).
- **Trust posture**: every number cites a SAM / USAspending / eCFR record ID; the AI never recommends an award decision or set-aside posture.
- **Why it ranks lower than A/B/C for a weekend**: smaller user population, more specialized SME audience, less viscerally legible in a 5-minute demo to a broad judging panel. Stronger as a follow-on or as a parallel agent in a larger system.

## E) "Regulation navigator" generic Q&A
- **Pitch in one sentence**: "Plain RAG over APD, with paragraph citations."
- **Why it ranks last**: this is the QuickStart's first example. It will be the single most common submission in the track. Without a structured-output, eval, or offline-posture differentiator, it does not stand out.

# Synthesis of the strongest single submission shape
- A **form-honest leave assistant for DA 31 (Wedge A)** that:
  - Runs end-to-end offline on a laptop with a packaged AR 600-8-10 + DA Form 31 corpus and a small open-weight model (the "and does it offline" line).
  - Turns a plain-English leave request into a populated DA 31 PDF, with paragraph-level cites from AR 600-8-10 and (where relevant) the JTR.
  - Holds a held-out evaluation set ("what does AR 600-8-10 say about leave accrual?", "can a four-day pass be Tuesday-Friday?", "PTDY in combination with ordinary leave?") with measured pass / fail and visible refusals when the corpus does not support the answer.
  - Explicitly enumerates what it will not do: it does not submit; it does not sign; it does not pull from IPPS-A; it does not invent leave-balance numbers.
  - Is presentable in five minutes by demoing two requests: a happy path ("10 days starting June 3") and an adversarial path ("can I combine PTDY with ordinary leave?") that the system correctly refuses with a citation.
- This shape addresses all four rubric dimensions simultaneously and reads as the form-honest counterpart of GenAI.mil rather than a re-implementation of it.

# What Ryan should ask organizers / mentors next
- "Which interpretation of 'and does it offline' did you intend — air-gapped / on-device, or a metaphor for taking the user offline from the desk? Is a literal offline / DDIL posture in scope?"
- "Will any GenAI.mil program staff be on-site or available by Zoom? Is there an organizer-recommended path to talk to a GenAI.mil user?"
- "Are there mentors with active S1 / personnel office, finance / DTS, or contracting-officer experience? Even 30 minutes is enough to validate or kill the wedge."
- "Are there constraints on building against IPPS-A or DTS sandboxes for the demo? Should we assume read-only synthetic data?"
- "Is the GenAI.mil agents capability (the 100K-agents reporting) something we should align on a specific user-built agent shape, or is the prototype meant to be a standalone application?"

# What Codex should attack later (open assumptions, weak evidence, risky claims)
- **The "offline" interpretation**: this note treats the literal edge / DDIL reading as the strongest interpretation, but the metaphorical reading is plausible. Codex should double-check by hitting the AI+ Expo / SCSP track page closer to the event and by asking organizers via hack@scsp.ai or jdr@scsp.ai if uncertainty persists.
- **Judge identifications**: "Dr. Ho-Chit Liu" is treated as Dr. Ho Chit (Hosea) Siu of MIT Lincoln Laboratory based on Boston co-judging with Sanjeev Mohindra and matching first name and Lincoln-Lab affiliation. This is medium-high confidence, not certain; verify on event signage. Kevin McQueary and Raj Panth are not yet identified from public sources.
- **The 18% voucher-rejection figure** is from GAO-05-400T (Army National Guard, FY 2004); it is not a 2026 number and may not match current DTS performance. Treat the impact arithmetic as illustrative and source-anchored, not as a real-time KPI.
- **The "100K agents on GenAI.mil"** figure is from a single DefenseScoop source (2026-04-23) attributed to Jacob Glassman; cross-check with a primary DoD release if it ends up in a slide.
- **Wedge ranking** assumes a small team with strong RAG + structured-output capability and reasonable eval discipline. If the team has unusual on-device-inference depth, push Wedge C up; if it has unusual contracting-data depth, push Wedge D up. If it has neither, A and B remain the safest.
- **Legal reading of ITAR / EAR**: this note treats public unclassified DoD policy text and DA forms as clearly shareable, but a final read should be done before integrating any preexisting code with controlled provenance.
- **GenAI.mil platform constraints**: the public reporting describes GenAI.mil as a multi-model gateway hosted in IL5 government cloud, isolated from training. The hackathon prototype must not pretend to be on-platform; we treat it as a candidate component or companion. Codex should sanity-check that no architectural claim in the demo overstates platform integration.
- **EO 14271 and CamoGPT restrictions**: this is a moving political and policy environment; what is true on 2026-04-25 may shift before the AI+ Expo on 2026-05-09. Re-check before Round 2.

# Public-safe summary
- The GenAI.mil track is asking for a narrowly scoped, end-to-end admin-tail workflow assistant for the rank-and-file, anchored in public DoD text and judged on novelty, technical difficulty, national impact, and problem-solution fit. The "and does it offline" line is best read as an edge / DDIL posture and is the cleanest available differentiator from the cloud-hosted GenAI.mil platform that already exists on every DoD desktop. The strongest single submission shape is a form-honest leave assistant for DA 31 that runs offline on a laptop, returns a paragraph-cited DA 31 draft from a plain-English request, refuses when ungrounded, and demonstrates a held-out eval set live. Wedges B (TDY pre-flight check) and C (doctrine-at-the-edge) are credible alternatives if the team's strengths point that way; D (contract-intel) is a stronger follow-on than weekend wedge; E (generic regulation Q&A) is a baseline that needs a structural differentiator to stand out.

