---
title: 2026 04 25 genai mil user workflows and trust boundaries
source: research/2026-04-25-genai-mil-user-workflows-and-trust-boundaries.md
ingestedAt: "2026-04-25T16:27:10.835Z"
---

---
title: GenAI.mil User Workflows and Trust Boundaries
date: 2026-04-25
sensitivity: public-safe
source_type: public-research-synthesis
status: ready-for-ingest
---

# Context
- Thread/date: 2026-04-25
- Topic slug: genai-mil-user-workflows-and-trust-boundaries
- Confidence: medium-high (public-source-only; primary policy and form text traced to authoritative .mil PDFs).
- Source basis: AR 600-8-10 (Leaves and Passes) and DA Form 31; the Joint Travel Regulations and the Defense Travel System; SAM.gov and USAspending.gov for federal contracting; CDAO Responsible AI / GenAI Toolkit; GAO defense-management reports on travel and acquisition.
- Privacy posture: this note is composed entirely from public unclassified material; no PII; no operational or classified detail.

# Why these workflows
- The four organizer-listed example projects (regulation navigator, form auto-filler, TDY planner, contract intel) point to four distinct existing user workflows that the GenAI.mil track is asking teams to compress. This note traces each to its actual primary documents and known pain points so we can pick a wedge with grounded evidence and design a credible trust posture.

# Workflow 1 — Regulation / policy Q&A grounded in Army Regulations and Field Manuals
- Current state: a Soldier or junior leader has a question ("can my Soldier use a four-day pass on a Tuesday-through-Friday block?") and either asks an experienced NCO, asks the S1 / personnel office, or skims tens of pages of the relevant AR / FM hosted on the Army Publishing Directorate (https://armypubs.army.mil/).
- Primary documents: ARs (e.g., AR 600-8-10 Leaves and Passes, 3 June 2020); ADPs; FMs; TCs; DA forms. APD record details enumerate the prescribing AR and prescribed forms (AR 600-8-10 prescribes DA Form 31 and DA Form 4179).
- Pain pattern: The right answer is almost always in the AR / FM, but the relevant paragraph is not where a non-specialist would predict; chapter cross-references are common (Chapter 4 chargeable leave references Chapter 2 accrual, etc.); travel entitlements bounce between AR and JTR.
- Trust pattern: a wrong AR citation is a leadership and pay-record problem. The cite is more important than the answer summary. A generative answer with no anchored paragraph is more dangerous than no answer at all.
- AI-assisted wedge that fits the prompt:
  - RAG over a public APD corpus with paragraph-level citations.
  - Hard refusal when the corpus does not support the answer (no plausible-sounding generation without a citation).
  - Held-out evaluation set (e.g., "what does AR 600-8-10 say about leave accrual?") with a measured pass / fail.
- Trust boundaries:
  - The system may quote and cite; it may not paraphrase policy as if it were authority.
  - The system may flag deltas between paragraphs (e.g., "Chapter 4 says X, but Chapter 5 says Y in the parental-leave case") rather than choose between them.
  - The user, not the system, owns the decision and the leadership conversation.

## Sources
- AR 600-8-10 (3 Jun 2020): https://armypubs.army.mil/epubs/DR_pubs/DR_a/ARN30018-AR_600-8-10-000-WEB-1.pdf
- AR 600-8-10 record details: https://armypubs.army.mil/ProductMaps/PubForm/Details.aspx?PUB_ID=1020394

# Workflow 2 — Producing a correct DA Form 31 leave request
- Current state: A Soldier requests leave by completing DA Form 31 ("Request and Authority for Leave"). The form has multiple parts: requester information, leave information (type, start/end, address, contact), supervisor / approving authority signatures, and departure / return endorsements (Blocks 14, 15, 16). Recent versions (e.g., the OCT 2023 fillable PDF) tie the form to IPPS-A (Integrated Personnel and Pay System – Army) for leave-balance verification.
- Common rejection modes (from public DA Form 31 walk-throughs):
  - Wrong leave type selected for the situation (ordinary vs. emergency vs. permissive TDY vs. convalescent vs. terminal).
  - Accrued / chargeable / non-chargeable balances mis-entered against IPPS-A reality.
  - Missing dependent-travel / TDY linkage when a TDY is being layered onto leave.
  - PTDY rules (no combination with ordinary leave; AR 600-8-10 Chapter 5).
- AI-assisted wedge that fits the prompt:
  - Convert a natural-language description ("I need 10 days starting June 3 to drive to my parents' house in Ohio, then 4 days passes around the July 4 weekend") into:
    - The right form (DA 31), the right leave type (ordinary), the right block-by-block fill, the right address line.
    - An explicit list of fields the user still has to supply (CAC info, command and approving authority signature blocks).
    - An explicit list of policy facts cited from AR 600-8-10 (e.g., "PTDY may not combine with ordinary leave per AR 600-8-10 Chapter 5") and from the JTR if travel is involved.
  - Save and emit a printable / IPPS-A-ready DA 31 PDF; do **not** submit on the user's behalf.
- Trust boundaries:
  - The AI never approves leave; the chain of command does (Block 12/13 supervisor recommendation, Block 17 approving-authority remarks).
  - The AI never invents a leave-balance number; it either reads from a user-provided LES or marks it as "user must verify."
  - The AI's output is a draft artifact, not a system action; the human submits via official systems.

## Sources
- DA Form 31 (USAG Daegu sample): https://home.army.mil/daegu/7616/3996/2156/EML_SAMPLE_DA_FORM_31.pdf
- DA Form 31 fillable + instructions: https://ncosupport.com/daforms/da31.html
- DA Form 31 fillable overview (forms-legal): https://forms-legal.com/usa/government/military-forms/form-da-31
- DA Form 31 block-by-block walkthrough: https://www.part-time-commander.com/da-form-31-overview/

# Workflow 3 — Producing a compliant TDY itinerary against the JTR
- Current state: A traveler (Soldier, civilian, or contractor) builds a Defense Travel System (DTS) authorization for TDY travel. DTS calls the JTR (Joint Travel Regulations, monthly-updated, owned by DTMO under PDTATAC). The traveler must select city-pair flights, lodging within per-diem cap, ground transportation, M&IE, and incidental expenses; on return they file a voucher with receipts and any orders.
- Pain pattern (well-documented, public-source):
  - GAO has reported that DOD's average voucher-rejection rate has been roughly 1 in 5; processing time per voucher roughly doubled at one Naval Shipyard after a 2014 flat-rate per diem policy change (10 → 20 minutes for vouchers, 5 → 10 minutes for authorizations).
  - DTS is a long-standing source of friction (informally "Don't Travel Service"); GAO has cited functional flaws (visibility of receipts to approving officials), legacy technical debt, and improper-payment patterns.
  - Service-level voucher walkthroughs identify the dominant rejection causes as missing pay orders, missing airline-ticket receipts, lodging entitlement mismatched to lodging receipts, and wrong line of accounting.
  - "Why Many Service Members Lose Money on TDY" (MyBaseGuide, 2026): structural mismatch between flat per diem rates and real-world local prices; undocumented mission constraints become out-of-pocket.
- AI-assisted wedge that fits the prompt:
  - Pre-flight checker: given a traveler's draft itinerary (location, dates, lodging, transportation), pull GSA per-diem rates for that ZIP and date and JTR rules for that travel type; flag policy violations and likely voucher kicks; explain in plain English with paragraph-level cites.
  - Voucher pre-submission lint: scan a draft voucher for the top causes of rejection (missing pay orders, mismatched lodging entitlement, mismatched LOA, missing receipts); produce a fix list before the traveler clicks submit.
  - Citation discipline: every flag is anchored in a JTR section number and a per-diem rate URL.
- Trust boundaries:
  - The AI never books travel and never finalizes a voucher; both happen inside DTS by the traveler / Authorizing Official (AO).
  - The AI never claims a per-diem rate without a GSA / JTR citation.
  - The AI never overrides a constraint set by the traveler's command; it surfaces it for the AO.

## Sources
- JTR landing page: https://www.travel.dod.mil/Policy-Regulations/Joint-Travel-Regulations/
- JTR June 2025 PDF: https://api.army.mil/e2/c/downloads/2025/06/10/0da05172/jtr-june-2025.pdf
- GAO-23-106945, "DEFENSE MANAGEMENT: DOD Challenges with Travel Programs and Business Process Reforms" (2023): https://www.gao.gov/assets/gao-23-106945.pdf
- GAO-17-353, "DOD JOINT TRAVEL REGULATIONS: Actions Are Needed to Clarify Flat Rate Per Diem Policy" (2017): https://www.gao.gov/assets/gao-17-353.pdf
- GAO-05-400T, "Army National Guard: Inefficient, Error-Prone Process Results in Travel Reimbursement Problems for Mobilized Soldiers": https://www.gao.gov/assets/a111412.html
- "Why Many Service Members Lose Money on TDY" — MyBaseGuide (2026-01-09): https://www.mybaseguide.com/tdy
- "Defense Travel System (DTS) being upgraded to new system by 2025" — Task & Purpose (2021): https://taskandpurpose.com/news/defense-travel-system-upgrade
- DTS for Dummies / common return reasons: https://www.dvidshub.net/news/printable/211935 ; https://www.ang.af.mil/News/Features/Article/1015898/dts-for-dummies-part-2-a-trip-down-memory-lane-with-your-travel-voucher/
- "DTS Common Return Reasons" — DVIDS (2025-02-12): https://www.dvidshub.net/video/952298/dts-common-return-reasons-authorizations-and-vouchers

# Workflow 4 — Contract-intel scaffolding for a contracting officer
- Current state: A contracting officer (KO) or program office staffer scopes a new buy by reviewing prior awards in their NAICS / PSC, surveying capable vendors, scanning recent contract opportunities, and grounding the eventual solicitation in DFARS / FAR clauses. The primary public sources are SAM.gov (entity registrations and contract opportunities), USAspending.gov (all federal contracts and spending, fully open), and the eCFR Title 48 (FAR Chapter 1, DFARS Chapter 2).
- Pain pattern:
  - Vendor universe and prior-award context is large but uneven; cross-walking NAICS, PSC, set-aside, and OTA / procurement vehicle adds friction.
  - GAO has documented that DoD acquisition-program milestone documentation averages thousands of staff days per program and routes through up to ~56 organizations across 8 levels (GAO-15-192, 2015); program managers consider only ~10% of those reviews high value.
- AI-assisted wedge that fits the prompt:
  - Given a one-paragraph problem statement, surface the most relevant prior awards (USAspending), incumbent vendors and registrations (SAM.gov), and applicable FAR/DFARS subparts (eCFR Title 48). Provide a "what is being bought, by whom, on what vehicle, with what set-aside" summary with citations.
  - "Diff" mode: compare two vendors' historical award patterns, or compare two NAICS/PSC slices.
- Trust boundaries:
  - The AI never advises on award decisions, source selection, or competition strategy.
  - All numbers cite the underlying USAspending / SAM record IDs.
  - Outputs are scaffolding for a KO, not legal or procurement-policy guidance.

## Sources
- USAspending.gov API: https://api.usaspending.gov/
- SAM.gov public API documentation index: https://open.gsa.gov/api/
- eCFR Title 48 (FAR / DFARS): https://www.ecfr.gov/current/title-48
- eCFR developer documentation (no API key required): https://www.ecfr.gov/developers/documentation/api/v1
- GAO-15-192, "Acquisition Reform: DOD Should Streamline Its Decision-Making Process for Weapon Systems": https://www.gao.gov/products/gao-15-192

# Cross-cutting trust / safety / compliance boundaries (non-negotiable for a GenAI.mil submission)
- **ITAR / EAR**: per the Hacker QuickStart, projects must use unclassified, public, or otherwise shareable data and materials. No controlled or restricted information. Pre-existing code must have a determined export classification. Public submission to GitHub, public throughout the hackathon and beyond, with SCSP receiving a non-exclusive license.
- **Classification posture**: the GenAI.mil platform itself is approved at IL5 / CUI; classified data does not enter the hackathon. Hackathon submissions must work entirely on unclassified material.
- **DoD AI Ethical Principles** (Responsible, Equitable, Traceable, Reliable, Governable): a hackathon prototype cannot be RAI-certified in 30 hours, but it can demonstrably honor the spirit:
  - **Traceable**: every retrieval-grounded answer carries a paragraph-level citation; every form-fill carries the source policy paragraph; every per-diem number carries the GSA URL and date.
  - **Reliable**: every claim is on the held-out eval set; the system refuses ungrounded answers.
  - **Governable**: a human always submits / approves / signs; no submission to IPPS-A, DTS, SAM, or another official system is automated by the AI.
- **Human-in-the-loop, by design**: the AI may draft, retrieve, cite, structure, and pre-flight; the AI may not approve, submit, classify, sign, file, or take a kinetic action.
- **Hallucination is mission risk**: a wrong AR citation is a real chain-of-command problem. The system should over-refuse when it is not grounded.
- **PII / PHI**: even on CamoGPT (NIPR IL5), processing PHI / PII is explicitly not authorized; in a hackathon prototype, do not accept LES uploads or other PII without an explicit consent/redact path. Prefer synthetic test data.
- **EOs and policy directives**: be aware of the Trump White House AI Action Plan (2025) under which the DoW AI Acceleration Strategy and GenAI.mil rollout are being executed; these favor speed but also impose compliance review gates. Submissions that pretend to live inside GenAI.mil itself, or that claim production deployment, will read as overstatement. Submissions that present as a prototype meant for the GenAI.mil environment, with an honest trust posture, will read as legitimate.

## Sources
- CDAO RAI Toolkit: https://rai.tradewindai.com/
- CDAO GenAI Toolkit announcement (Dec 2024): https://www.ai.mil/Latest/Blog/Article-Display/Article/3994183/genai-toolkit-operationalizes-guidelines-guardrails-memo/
- AI Cybersecurity RMF Tailoring Guide (DoD CIO, 2025-07-18): https://dodcio.defense.gov/Portals/0/Documents/Library/AI-CybersecurityRMTailoringGuide.pdf
- CamoGPT slick sheet (notes "tool not authorized to process PHI and PII"): https://www.tradoc.army.mil/wp-content/uploads/2025/02/CamoGPT_Slick_Sheet.pdf

# Public-safe summary
- The four organizer-listed example workflows trace to public, concrete primary documents (AR 600-8-10 / DA Form 31 for leave; the JTR + DTS + GSA per diem for travel; SAM.gov + USAspending + eCFR Title 48 for contracting; APD / e-Publishing / DTIC for regulation Q&A). Each has well-documented pain (notably the ~18% voucher-rejection rate and roughly doubled processing time after the 2014 flat-rate per diem change). The non-negotiable trust posture for a GenAI.mil-track prototype is paragraph-level citations, explicit refusal when ungrounded, public/unclassified data only, no PII unless consented and redacted, and a human-in-the-loop submission path; the AI drafts, retrieves, cites, and pre-flights, but never approves or files.

