---
title: 2026 04 25 dts ao radar research synthesis
source: curated/2026-04-25-dts-ao-radar-research-synthesis.md
ingestedAt: "2026-04-25T18:58:11.788Z"
---

---
title: DTS AO Radar — Research Synthesis
date: 2026-04-25
sensitivity: public-safe
source_type: deep-research-synthesis
status: ready-for-ingest
---

# Context
- Thread/date: 2026-04-25
- Topic slug: dts-ao-radar-research-synthesis
- Confidence: medium-high on AO role, checklist burden, receipt-error prominence, and MyTravel/DTS modernization posture; medium on current TPCT receipt-coverage limits because public TPCT documentation is query-level and may not expose every internal capability.
- Source basis: research/2026-04-25-dts-ao-radar-public-research.md (full citation-backed evidence file). Anchored in DoD OIG (DODIG-2025-105, DODIG-2025-060, DODIG-2023-075, DODIG-2016-060), GAO (GAO-26-107663, GAO-23-106945, GAO-19-530, GAO-17-353), DoD FMR Vol. 5 Ch. 5 and Vol. 9, current DTS Regulations (DoDI 5154.31 Vol. 3), DTMO program pages, the December 2024 TPCT User Guide, the AO/CO Desktop Guide, the Navy DTS PMO mandatory AO Voucher Approval Checklist v1.3, the HQ RIO (AFRC) DTS-Big Six policy, USAFA's 2021 CEIR receipt-reader capstone, and named-source service-press explainers.
- Sibling notes: research/2026-04-25-dts-ao-radar-public-research.md, curated/2026-04-25-genai-mil-deep-research-synthesis.md, research/2026-04-25-genai-mil-user-workflows-and-trust-boundaries.md.

# Core findings
- The DTS Approving Official is a Certifying Officer under 31 U.S.C. § 3528 carrying personal pecuniary liability for every voucher they stamp APPROVED. They do this work as an additional duty (typically a SNCO E-6+ or O-grade officer), not as a dedicated finance billet. That mismatch — high legal stakes, narrow checklist surface, low spare time — is the structural cause of the problem this wedge addresses.
- The work is highly checklist-shaped. DTMO publishes the AO Checklist & Instructions trifold and the AO/CO Desktop Guide; the Navy made a 23+ line item per-voucher checklist mandatory in 2019; multiple commands publish their own variants. The overlapping public checklist surface is receipts, amounts, dates, locations, lines of accounting, justifications, transportation mode, lodging entitlement, and GTCC split disbursement. Do not turn this into a claim that every component has the same ranked failure distribution.
- The dominant current public failure signal is receipt quality: DTMO reported in January 2024 that DFAS Post-Pay Review attributes more than 70% of improper DTS payments to inadequate or invalid receipts. HQ RIO's "Big Six" policy says six error categories account for 80% of returns, but that 80% metric, the 50% AO staffing cut, and the 90+ day backlog projection are **HQ RIO / AFRC Individual Reservist-specific**, not DoD-wide. DODIG-2025-105 reports FY 2024 improper-and-unknown payment rates of 8.59% (Army-DTS, $188.1M of $2.19B) and 9.73% (DAF-DTS, $229.2M of $2.36B), with OIG caveats that the estimates and rates are unreliable because the universe is incomplete.
- MyTravel is cancelled; DTS is not standing still. GAO-26-107663 confirms DOD discontinued MyTravel in May 2023 and is reinvesting in incremental DTS modernization, including a six-year improvement plan scheduled to begin in FY2027. Current DTMO updates are incremental controls inside DTS, not a replacement system. Any assistant in this space is a companion for current DTS.
- Existing tooling is not absent. TPCT is mandatory, near-real-time but post-approval, email/reminder-driven, and query-based. DODIG-2016-060 documented a historical inability to catch missing documentation or receipt/amount mismatches; the December 2024 TPCT guide now shows some GTCC-based amount checks. The defensible wedge is **pre-decision AO triage, explanation, evidence packaging, and queue prioritization**, not a categorical claim that TPCT cannot handle receipts.
- The strongest public prior art is academic, not commercial-DoD. The 2021 USAFA cadet capstone built a Tesseract-based receipt reader, reported 88.7% receipt-classification accuracy and 3.5% false positives on a training set, and proposed reframing the AO "as a quality assurance manager, rather than the primary receipt reader." Those are internal/training-set results and projections, not production validation.

# Likely primary users
- **DTS Authorizing Official (AO) acting as a Certifying Officer (CO) on a payment-bearing voucher.** Primary persona for the demo. Their job at the moment of the APPROVED stamp is to be confident the voucher is "legal, proper, and correct." Pecuniary liability gives them a strong personal incentive to use a tool that reduces review burden and lowers false-approve risk.
- **DTS Reviewing Official (RO).** A second-set-of-eyes role on the routing list. Same checklist, lower stakes than the CO. Useful secondary persona for the "quality assurance manager" framing.
- **Lead Defense Travel Administrator (LDTA) and Organizational Defense Travel Administrator (ODTA).** Not routing officials, but the unit-level subject-matter experts who train AOs and triage edge cases. Likely tester / mentor persona for any prototype.
- **DFAS Post-Pay Review and the DTMO Travel Policy Compliance Program team.** Not direct users, but they own the audit signal and the after-the-fact compliance loop the AO assistant must avoid duplicating.
- **AFRC HQ RIO and USMC servicing Disbursing/Finance Offices.** Two real public exemplars of "we centralized or constrained the AO path because the workload/risk pattern mattered." They are plausible validation stakeholders, not proof of a ready buyer.

# Workflow described (current state, compressed)
1. **Traveler completes voucher** in DTS, attaches receipts, justifies Pre-Audit flags, signs (`SIGNED` stamp). DoD policy: voucher must be filed within 5 working days of return from TDY.
2. **Document routes to Reviewing Official(s)** per the unit's DTS routing list. Variations by service (USMC pushes to disbursing/finance; AFRC reservists go through TRO then detachment AO; many Army/Air Force units route directly to the unit AO).
3. **AO opens Trips Awaiting Action**, picks a voucher, walks the DTMO checklist screen-by-screen: Review Profile, Review Trip Voucher, Other Auths and Pre-Audits (verify each justification is non-blank, non-boilerplate, traceable), Digital Signature.
4. **AO decides per-document**: APPROVED stamp (becomes a Certifying Officer act, triggers payment), or RETURNED with comments (traveler must fix and resubmit), or CANCELLED (only AO can apply this stamp).
5. **DTS hands off to DFAS / accounting system.** Payment to traveler bank account and GTCC vendor occurs (split disbursement). DoD components must pay within 30 calendar days.
6. **DTMO Travel Policy Compliance Tool (mandatory) scans every voucher in near real time** post-approval. If it flags something, it emails the traveler, NDEA, and the AO. 15 days to amend; unresolved cases escalate to the component Senior Accountable Official.
7. **DFAS Post-Pay Review samples paid vouchers** (random sampling under $2500; pre/post-payment review on every payment > $2500). Findings feed quarterly trend reports back to components and DTMO.

# Bottlenecks and frictions (where the AO actually loses minutes and exposure)
- **Receipt validity is a dominant documented review surface.** Lodging, rental car, airfare receipts have specific validity rules (itemized, paid evidence, traveler name visible, no DTS screenshots, no booking confirmations, no rental-agreement estimates). DTMO's "What is a Valid Receipt?" paper enumerates concrete failure shapes, and DTMO/DFAS report inadequate or invalid receipts as the leading improper-payment category. The current public TPCT guide does not show an AO-facing pre-approval receipt-validity workflow.
- **Amount-vs-receipt reconciliation.** Even when receipts are present and valid, the claimed amount may not match. GAO-23-106945 lists "expenses that do not match receipts" as a major DoD-reported error category. Manual reconciliation is the AO's job.
- **Justification quality.** Pre-Audit flags require non-trivial justification text (Quantico and NY ARNG SOPs explicitly forbid one-character justifications). The AO has to read each justification and decide whether it is substantive.
- **Date/location coherence with underlying orders.** HQ RIO Big Six #2: dates and locations in DTS must exactly match the orders (e.g., AROWS-R, AF938 modifications). Mismatches are a top return reason.
- **AT/IDT/per-diem interactions.** HQ RIO Big Six #3 and #6: zeroing out per-diem during AT when DFAC is available, prorating rental car when AT is performed in conjunction with IDT. These are easy to miss and easy to mis-explain.
- **CONUS vs. OCONUS lodging-tax handling.** HQ RIO Big Six #4: a structural rule that periodically catches travelers and AOs out.
- **AO staffing pressure.** HQ RIO publicly says its own AO staffing fell 50% and projected 90+ day reimbursement delays without the Big Six policy. USMC published in 2012 that average voucher approval timelines were the slowest in DoD and shifted approval to disbursing offices to absorb the work. These are public structural signals, but the HQ RIO numbers stay HQ RIO-specific.
- **Long-after-the-fact rework loop.** The TPCT post-approval email + 15-day correction/reminder loop can create a second round of work for the traveler, NDEA, AO, and compliance administrators. A pre-approval triage that catches the same evidence gap earlier plausibly shortens that loop, but the prototype should measure this rather than claim guaranteed savings.

# Artifacts and data dependencies
- **Public DTMO and DoD policy text**: JTR (monthly PDF), DoD FMR Vol. 5 Ch. 5 and Vol. 9, DTS Regulations (DoDI 5154.31, Vol. 3), AO Checklist & Instructions trifold, AO/CO Desktop Guide, Financial Field Procedures Guide, *What is a Valid Receipt?* info paper.
- **Service-level checklists and policy notices**: Navy DTS EPN FY16 #5.3C (mandatory AO checklist v1.3), USMC MARADMIN 250/12, Quantico and NY ARNG SOPs, HQ RIO Big Six policy.
- **Public per-diem data**: GSA Per Diem API (no key required, fully public).
- **Synthetic voucher data**: must be entirely synthetic for any prototype; do not use real GTCC numbers, real EFT routing, or real traveler PII.
- **No live DTS or GenAI.mil integration in any prototype**: DTS access is gated by CAC and DoD network controls; GenAI.mil platform access is not available from the public repo. The demo must explicitly be a candidate synthetic/public-safe workflow, not on-platform deployment.

# Trust boundaries (non-negotiable)
- The AI never approves, denies, certifies, signs, submits, returns, cancels, or amends any DTS document. Pecuniary liability under 31 U.S.C. § 3528 attaches to a human Certifying Officer, period.
- The AI never determines entitlement. Per-diem, lodging cap, premium-class, AEA, dual-lodging, AT/IDT linkage are JTR rulings; the AI surfaces the JTR paragraph and lets the human read it.
- The AI never accuses fraud. The right language is "anomaly," "policy-risk indicator," "documentation gap," "evidence needing closer human review."
- The AI never overwrites or auto-fills a Pre-Audit Flag justification. Quantico and NY ARNG explicitly forbid blank or boilerplate justifications; AI-generated text the AO copies without thinking introduces a new audit failure mode.
- The AI never sees real PII. Synthetic data only; no real LES, no real GTCC, no real EFT.
- The AI does not pretend to be inside DTS or inside GenAI.mil. Public-unclassified prototype; candidate synthetic workflow or companion concept, not on-platform deployment.
- Component / local business rules vary; the AI must not hard-code one component's rules as global. Navy mandates the v1.3 checklist; AFRC publishes the Big Six; USMC routes to disbursing. The system must be configurable per component.

# Evidence-backed MVP feature checks (each one tied to a documented basis)
- **Risk-scored "AO Radar" queue** modeled on Trips Awaiting Action, ranked by composite risk over synthetic vouchers. Basis: DTMO Trips Awaiting Action module exists; HQ RIO Big Six and Navy AO checklist define plausible rule categories. Prototype boundary: no claim of live DTS access.
- **Receipt-presence and validity check** (lodging always; >= $75 expenses). Basis: DTMO *What is a Valid Receipt?* and *Avoid Improper DTS Payments by Checking Receipts*. Prior art: USAFA CEIR receipt reader, commercial Concur Verify.
- **Amount-vs-receipt reconciliation and evidence packaging**. Basis: Navy AO checklist v1.3 and GAO-23-106945. TPCT caveat: DODIG-2016-060 documented a historical TPCT gap, while the current public TPCT guide shows some GTCC amount checks; position this as pre-decision support for the AO rather than a categorical TPCT replacement.
- **Justification-quality scoring**. Basis: Quantico, NY ARNG, Navy AO checklist v1.3 ("‘Auth'/'Authorized'/'OK'/periods (‘.’) are NOT the sole entry").
- **Date / location / orders coherence**. Basis: HQ RIO Big Six #1 and #2 for AFRC Individual Reservist workflows; generalize only after SME validation for another component.
- **Per-diem and lodging-tax policy lint**. Basis: HQ RIO Big Six #3 and #4 for AFRC-specific examples; DTMO JTR; GSA Per Diem API.
- **Duplicate-expense detector** (Non-Mileage vs. Other lodging/rental car/air). Basis: Navy AO checklist v1.3 Note 1.
- **DD 1351-2 / NDEA path validation** for T-Entered vouchers. Basis: Navy AO checklist v1.3, DTMO Best Practices Guide, GAO-19-530 ("Trip Workbook was not visible to approving officials").
- **GTCC split-disbursement coherence check**. Basis: Navy AO Guide; Navy AO checklist v1.3.
- **High-risk merchant / MCC surfacing for AO awareness only** (informational, not an allegation, fraud label, or official compliance determination). Basis: DODIG-2025-060 GTCC IG findings on VICM gaps.
- **Per-flag explanation panel** linking each flag to the JTR paragraph or DTMO source plus a one-sentence "what to ask the traveler" prompt. Basis: every DTMO checklist material presupposes the AO traces flags back to the JTR.
- **Backlog and SLA dashboard** at the AO and unit level. Basis: HQ RIO publishes a public processing-status board showing this view exists in the wild.

None of the features above approve, deny, certify, sign, return, cancel, amend, or submit. All of them sit pre-decision and surface evidence to a human Certifying Officer.

# Product positioning (versus existing DoD tools and adjacent commercial)
- **Versus DTMO Travel Policy Compliance Tool (TPCT)**. TPCT is mandatory, runs near-real-time but post-approval, sends emails/reminders, and uses query-driven compliance checks. DODIG-2016-060 documents a historical receipt/documentation gap, but the December 2024 TPCT guide shows some GTCC amount checks, so do not overclaim. Frame: "TPCT is the post-approval compliance loop; AO Radar is a pre-decision evidence package and queue-prioritization aid before the AO signs."
- **Versus DTS built-in Pre-Audit / AUDIT FAIL**. DTS already enforces hard stops for missing receipts on T-Entered vouchers, missing DD 1351-2, and budget over-run. Our wedge sits *above* those: it scores soft-rules violations and weak justifications, surfaces composite risk, and helps the AO prioritize.
- **Versus the cancelled MyTravel replacement**. GAO-26-107663 confirms MyTravel was discontinued in May 2023 and DOD is reinvesting in incremental DTS modernization. The wedge is a public-safe companion demo for *current* DTS, not a vendor pitch for a successor.
- **Versus commercial expense-audit / anomaly AI** (Concur Verify, Navan, PredictX, Concur Detect, Datamatics): the commercial state of the art is real and in production; the contribution here is fitting an explainable, human-reviewed version to DoD-specific JTR/FMR rules, AO certifying-officer trust posture, and public DTMO/HQ RIO failure modes.
- **Versus the USAFA CEIR prior art (2021)**: the demo is not novel if it is only a receipt reader. The differentiated frame is full pre-decision triage: policy citations, justification scoring, evidence packaging, queue prioritization, and human-review workflow. Retain CEIR's "AO as quality-assurance manager" framing.

# Validation risks (what would make this wedge wrong, fast)
- **Real AOs may already have unit-built tooling that does much of this.** Multiple commands have published checklists, decision trees, kaizen-style fixes (DLA Troop Support 78%→93%). The first SME conversation should ask: "Show me the spreadsheet you actually use."
- **TPCT may have capabilities not exposed in public docs.** This pass checked the December 2024 public user guide and found query-driven post-approval checks, including some GTCC amount checks, but not a general AO-facing pre-approval receipt-validity workflow. SME or DTMO confirmation is still required before making strong competitive claims.
- **GenAI.mil or component teams may already have adjacent internal agents.** Do not claim platform gaps or absence of internal voucher-triage tooling from public evidence. The defensible frame is a candidate synthetic/public-safe demo with visible grounding and evaluation.
- **Receipt OCR accuracy is hard in the wild.** USAFA's training-set accuracy is meaningfully different from production accuracy across the long tail of OCONUS lodging receipts, foreign-language receipts, and handwritten taxi/ground-transport receipts. Demo should be honest about evaluation conditions.
- **The "Big Six" is a single AFRC reservist-population statement.** Generalizing 6-errors-cause-80% to all of DoD without an SME confirmation would be overclaiming.
- **The DODIG-2025-105 unreliability caveat matters**. Headline rates of 8.59% and 9.73% are framed by the IG as unreliable; the underlying improper-payment universe is incomplete. The AI assistant's value is in *reducing AO workload and false-approve risk*, not in claiming a percentage-point reduction in DoD-wide improper payments.

# Codex adversarial review findings
- Hardened TPCT positioning: DODIG-2016-060 remains useful historical evidence, but the current public TPCT guide shows some GTCC amount checks. The wedge is now pre-decision triage/evidence packaging, not "TPCT cannot do receipts."
- Scoped HQ RIO metrics to AFRC Individual Reservist workflows; no 80% / 50% / 90-day metric should be repeated as DoD-wide.
- Preserved OIG caveats on FY 2024 improper-and-unknown-payment rates; do not use those rates for broad savings arithmetic.
- Reframed USAFA CEIR accuracy and $3M/month language as training-set/internal projection only.
- Replaced "modernization on hold" with "MyTravel cancelled; DTS modernization is incremental and ongoing."
- Tightened GenAI.mil/DTS boundaries: synthetic public-safe candidate demo, no live integration or on-platform deployment claim.

# Open questions
- **Who is the actual buyer?** DTMO? Service-level finance? Component LDTAs? AFRC HQ RIO? The right buyer drives the wedge framing.
- **Is the right scope a single component (e.g., AFRC reservist DTS workflow) or DoD-wide?** Component-specific has cleaner rule sets (Big Six is concrete), DoD-wide has bigger national impact framing.
- **Does the demo need a live DTS integration to read like a credible product, or is a synthetic-voucher walkthrough enough?** The hackathon almost certainly cannot integrate with DTS, so the answer should be "synthetic walkthrough that explicitly does not pretend to integrate."
- **Does the AI assistant target the AO or the AO's adjacent staff (LDTA, ODTA, finance NCO)?** The AO has more legal exposure; the staff have more time. Both are plausible.
- **What is the right evaluation set?** A held-out set of synthetic vouchers labeled by a retired AO or finance NCO, scored on (a) AO-time-to-decision, (b) missed-risk / false-clear rate against ground-truth labels, (c) refusal correctness on out-of-policy items.
- **What is the offline / GenAI.mil posture?** The parent track wants "and does it offline." For the AO use case, an offline / local-corpus posture is plausible (no PII leaves the laptop) and defensible. Worth validating with organizers.

# Public-safe summary
- The DTS Approving Official remains a strong cognitive-load wedge for the GenAI.mil track, but the pitch has to be narrower than "AI fixes DTS improper payments." Public evidence supports a high-liability additional-duty AO role, concrete receipt/documentation failure modes, and current MyTravel-to-DTS modernization context. It does **not** support DoD-wide extrapolation from HQ RIO, production OCR claims from USAFA CEIR, broad savings arithmetic from unreliable OIG rates, or a current blanket claim that TPCT cannot handle receipts. Build a synthetic, public-safe pre-decision triage assistant that packages evidence, scores documentation and justification risk, prioritizes the queue, and links every flag to JTR/DTMO sources for a human AO. No live DTS/GenAI.mil integration claim, no official action, no entitlement determination, and no fraud accusation.

