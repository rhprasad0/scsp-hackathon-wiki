---
title: GenAI.mil Public Context and Linked Resources
date: 2026-04-25
sensitivity: public-safe
source_type: public-research-synthesis
status: ready-for-ingest
---

# Context
- Thread/date: 2026-04-25
- Topic slug: genai-mil-public-context-and-links
- Confidence: medium-high (public-source-only; primary policy facts cross-checked across multiple outlets).
- Source basis: public reporting and primary government pages on the GenAI.mil platform, the DoD AI Rapid Capabilities Cell, predecessor DoD GenAI pilots (NIPRGPT, CamoGPT, Task Force Lima), DoD Responsible AI guidance, and the cited dataset / API endpoints the SCSP organizer linked from the GenAI.mil track tab.
- Privacy posture: no PII; no operational details; only what is in public press releases, government program pages, and commercial press.

# What GenAI.mil actually is
- GenAI.mil is a Department of War (DoW; rebranded Department of Defense) enterprise generative AI platform launched on December 9, 2025, intended to put commercial frontier-model AI on the desktop of all ~3 million uniformed military, civilian, and contractor personnel.
- Architecture: a multi-model gateway hosted in authorized government cloud, approved at Impact Level 5 (controlled unclassified information / CUI). Models are isolated; the model providers do not retrain on GenAI.mil prompts or outputs.
- Models available at time of this note: a Gemini for Government version (initial launch), OpenAI ChatGPT (announced February 9, 2026), and xAI Grok (added late December 2025). A fourth model (likely Anthropic Claude under the CDAO's $200M model contracts) is "potentially" coming.
- Adoption curve: ~550K unique users in week one; ~1M unique users by February 2026; ~100K user-built agents reported as of April 23, 2026.
- Operating organization: launched by the AI Rapid Capabilities Cell within the DoW Office of the Under Secretary of War for Research and Engineering (Emil Michael); the platform is also connected to the Chief Digital and Artificial Intelligence Office (CDAO) under Cameron Stanley.
- Scope of allowed data: unclassified and CUI only ("a green banner at the top of the page reminds users of what can and can't be shared"). Higher-classification (Secret, Top Secret) deployment is a stated future ambition but not the launch posture.
- Stated capabilities at launch: drafting and refining documents, conducting deep research, formatting content, analyzing imagery and video, and code review. Marketed by Sec. Hegseth as a productivity multiplier ("AI should be in your battle rhythm every single day; it should be your teammate").

## Why this matters for the hackathon
- The GenAI.mil prompt asks for an application that "weaponizes AI against the administrative trenches" — i.e., lives in the same problem space as GenAI.mil itself but adds either a user-experience, integration, or deployment-posture wedge that the bare model gateway does not provide.
- A submission that is functionally equivalent to "open ChatGPT and paste in an FM" will be invisible against the platform that already lives on every DoD desktop. The differentiator must be retrieval grounding, structured output, evaluation, or a deployment posture (e.g., offline / on-device) that GenAI.mil does not cover today.

## Sources
- "Hegseth Introduces Department to New AI Tool" — defense.gov news article (DoW), n.d.: https://www.defense.gov/News/News-Stories/Article/Article/4355797/hegseth-introduces-department-to-new-ai-tool/
- "The War Department Unleashes AI on New GenAI.mil Platform" — DoW Release: https://www.defense.gov/News/Releases/Release/Article/4354916/the-war-department-unleashes-ai-on-new-genaimil-platform/
- "GenAI.mil's Rapid Expansion Continues With OpenAI Partnership" — DoW Release: https://www.war.gov/News/Releases/Release/Article/4401775/genaimils-rapid-expansion-continues-with-openai-partnership/
- "Bringing ChatGPT to GenAI.mil" — OpenAI: https://openai.com/index/bringing-chatgpt-to-genaimil/ (2026-02-09)
- "Pentagon rolls out GenAI platform to all personnel, using Google's Gemini" — Breaking Defense (2025-12-09): https://breakingdefense.com/2025/12/pentagon-rolls-out-genai-platform-to-all-personnel-using-googles-gemini/
- "Pentagon uses GenAI.mil to create 100K agents" — DefenseScoop (2026-04-23): https://defensescoop.com/2026/04/23/pentagon-uses-genai-mil-to-create-agents/
- "ChatGPT will be available to 3 million military users on GenAI.mil" — Breaking Defense (2026-02-10): https://breakingdefense.com/2026/02/chatgpt-will-be-available-to-3-million-military-users-on-genai-mil
- "Inside GenAI.mil: How the Pentagon Is Scaling AI to a Million Users" — FedGovToday (2026-02-19): https://fedgovtoday.com/guests/inside-genai.mil-how-the-pentagon-is-scaling-ai-to-a-million-users
- GenAI.mil sign-in page: https://genai.mil/

# What came before GenAI.mil (so we don't reinvent)
- **Task Force Lima (Aug 2023 – Dec 2024)** — CDAO standing task force chartered by Deputy Secretary of Defense Kathleen Hicks to assess generative AI / LLMs for DoD. Catalogued ~180–230+ candidate use cases, grouped them into 15 areas across two categories: warfighting and enterprise management. Sunset December 11, 2024.
- **AI Rapid Capabilities Cell (AI RCC, Dec 2024 – present)** — successor to Task Force Lima. Run jointly by CDAO and the Defense Innovation Unit (DIU). Took over Lima's 15-use-case map; spent $100M in FY24/25 plus $35M for four "Frontier AI" 90-day pilots. Now under R&E and the Pentagon CTO. Priority enterprise-management areas explicitly include: financial systems, HR, enterprise logistics and supply chain, healthcare information management, **legal analysis and compliance, procurement processes**, and software development / cybersecurity. The hackathon track sits squarely in this RCC-aligned space.
- **NIPRGPT (Air Force / AFRL, June 2024)** — Department of the Air Force experimental ChatGPT-equivalent on NIPRNet, IL4 CAC-gated, built on the Dark Saber platform. Hit ~80K users in three months. Per the July/August 2025 Military Review article, NIPRGPT subsequently "lost its approval"; this is a public signal that bottom-up service-specific GenAI experiments did not survive the consolidation onto an enterprise platform.
- **CamoGPT (Army AI2C / TRADOC, 2024)** — Army GenAI tool with NIPR (IL5 incl. CUI) and SIPR (IL6) deployments, RAG, file uploads, persistent chat, preset prompts. Used at one point for content review in support of EO 14271. Per the same Military Review article it was restricted in 2025, again signalling consolidation onto a single enterprise platform.
- **CENTGPT, DHSChat, Sage AI, Spark Cell tools** — additional service / agency variants noted in DoD tech press; collectively they validated demand and surfaced requirements (multi-cloud portability, model agnosticism, baked-in safety guardrails) that GenAI.mil now executes against.

## Sources
- Task Force Lima Executive Summary, CDAO, Dec 2024: https://www.ai.mil/Portals/137/Documents/Resources%20Page/2024-12-TF%20Lima-ExecSum-TAB-A.pdf
- "DoD sunsets Task Force Lima, introduces AI rapid capabilities cell" — Federal News Network (2024-12-11): https://federalnewsnetwork.com/defense-main/2024/12/dod-sunsets-task-force-lima-introduces-ai-rapid-capabilities-cell/
- AI Rapid Capabilities Cell program page (CDAO): https://www.ai.mil/Initiatives/AI-Rapid-Capabilities-Cell/
- AI RCC fact sheet (CDAO, Dec 2024): https://www.ai.mil/Portals/137/Documents/Resources%20Page/2024-12-CDAO-Artificial-Intelligence-Rapid-Capabilities-Cell.pdf
- "Department of the Air Force launches NIPRGPT" — AFRL (2024-06-10): https://www.afrl.af.mil/News/Article-Display/Article/3801948/department-of-the-air-force-launches-niprgpt/
- "NIPRGPT: Success, Criticism, and Future" — Beyond Visual Range (2025-04-21): https://benvanroo.substack.com/p/niprgpt-success-criticism-and-future
- CamoGPT Slick Sheet (TRADOC, 2024): https://www.tradoc.army.mil/wp-content/uploads/2025/02/CamoGPT_Slick_Sheet.pdf
- "Using CamoGPT AI to Build Scenario-Driven Change" — Military Review July-August 2025: https://www.armyupress.army.mil/Journals/Military-Review/English-Edition-Archives/July-August-2025/CamoGPT-AI/
- USMC NIPR/SIPR LLM message (Marine Corps, 2024-10-21): https://www.marines.mil/News/Messages/Messages-Display/Article/3941033/communicating-the-availability-of-authorized-nipr-and-sipr-llm-capabilities/

# Reading the "offline" word in the prompt
- The track tagline says: "Build the AI assistant that makes the rank-and-file faster, smarter, and less buried in bureaucracy, and does it offline." Literal reading: the assistant operates without persistent cloud connectivity. Reinforced by "warfighters behind desks instead of in the field."
- An alternative reading is "takes them offline from their desk" but that interpretation is harder to translate into a concrete demo and conflicts with the standard tech meaning of "offline."
- The literal reading is also the most defensible technically: judges with edge-AI / DDIL backgrounds will reward a system that runs on-device, offline, with a public DoD doctrine corpus baked in.
- Public precedent for DoD edge / DDIL ("Denied, Degraded, Intermittent, Limited") AI:
  - **Google Distributed Cloud air-gapped appliance** demonstrated at U.S. Air Force Mobility Guardian 2025 (Guam, July 2025) — disconnected IL2 collaboration with on-device generative AI for transcription, OCR, translation, summarization; sync-back when connectivity restored.
  - **EdgeRunner AI** — on-device, air-gapped, MOS-specific AI agents for DoW. Announced public beta for DoW users September 2025; dual CRADAs with ARL and AFRL October 2025; <30% model size with ~98.5% quality preservation; supports RAG, TTS, STT.
  - **Legion Intelligence Centurion** — DDIL-targeted edge AI for U.S. Army 18th Airborne Corps (Jan 2026 announcement); offline-first agentic workflows with mesh sync.
- Implication: a "GenAI.mil that works without GenAI.mil" demo — a narrow on-device assistant with a baked corpus of public DoD doctrine, no internet round-trip — is on-prompt and aligned with current DoD edge-AI investment.

## Sources
- "Centurion, a Deployable Edge AI System for DDIL" — Legion Intelligence (2026-01-28): https://www.globenewswire.com/news-release/2026/01/28/3227669/0/en/Legion-Intelligence-Introduces-Centurion-a-Deployable-Edge-AI-System-for-DDIL-Environments.html
- "Agentic AI for DDIL Environments" — Legion Intelligence whitepaper (2026-02-04): https://www.legionintel.com/whitepapers/centurion-the-legion-intelligence-platform-deployed-to-the-edge
- "GDC Powers AI at the Tactical Edge at Mobility Guardian 2025" — Google Cloud (2025-09-29): https://cloud.google.com/blog/topics/public-sector/google-distributed-cloud-at-the-edge-powers-us-air-force-mobility-guardian-2025/
- "EdgeRunner Selected for Dual CRADAs with U.S. Army and U.S. Air Force Research Laboratories" — EdgeRunner (2025-10-01): https://www.edgerunnerai.com/news/edgerunner-selected-for-dual-cradas-with-u-s-army-and-u-s-air-force-research-laboratories
- "DDIL: How DOD Seeks to Operate in Low Bandwidth Environments" — ExecutiveBiz (2025-05-08): https://www.executivebiz.com/articles/ddil-dod-cyber-cloud-cjadc2-low-bandwidth

# Cited dataset and API endpoints, expanded
- **DTIC Public STINET (https://discover.dtic.mil/)** — public-facing search of unclassified DoD technical reports and TTPs. Useful for grounding subject-matter content; less useful for live admin workflows. Search-only, full-text where available.
- **Army Publishing Directorate (https://armypubs.army.mil/)** — authoritative source for Army Regulations (AR), Army Doctrine Publications (ADP), Field Manuals (FM), Training Circulars (TC), and DA forms. Bulk-downloadable PDFs. AR 600-8-10 (Leaves and Passes, last revised 3 Jun 2020) and DA Form 31 (Request and Authority for Leave) live here.
- **Air Force e-Publishing (https://www.e-publishing.af.mil/)** — equivalent for AFI, AFMAN, and AF forms.
- **Joint Travel Regulations (https://www.travel.dod.mil/Policy-Regulations/Joint-Travel-Regulations/)** — published by the Defense Travel Management Office (DTMO) on behalf of the Per Diem Travel and Transportation Allowance Committee (PDTATAC); updated monthly with a UTD/CTD change log. Recent versions are linked monthly as PDFs (e.g., June 2025 PDF on api.army.mil).
- **GSA Open APIs (https://open.gsa.gov/api/)** — including the per diem rate API (https://open.gsa.gov/api/perdiemapi/). Per diem rates by ZIP / city / date.
- **SAM.gov (https://open.gsa.gov/api/) public API** — Federal opportunities and entity registrations; no auth for public data.
- **USAspending.gov API (https://api.usaspending.gov/)** — fully open API for federal contracts and spending. Useful for contract-intel demos.
- **Federal Register API (https://www.federalregister.gov/developers/documentation/api/v1)** — regulations, executive orders, notices.
- **eCFR developer endpoints (https://www.ecfr.gov/developers/documentation/api/v1)** — REST API; no API keys required; daily updated; bulk XML available via GPO. Title 32 = National Defense; Title 48 = Federal Acquisition Regulations System (Chapter 1 = FAR; Chapter 2 = DFARS for DoD).

## Sources
- AR 600-8-10 (3 Jun 2020) — Leaves and Passes: https://armypubs.army.mil/epubs/DR_pubs/DR_a/ARN30018-AR_600-8-10-000-WEB-1.pdf
- AR 600-8-10 record details (proponent: G-1; prescribed forms: DA Form 31, DA Form 4179): https://armypubs.army.mil/ProductMaps/PubForm/Details.aspx?PUB_ID=1020394
- DA Form 31 sample (USAG Daegu): https://home.army.mil/daegu/7616/3996/2156/EML_SAMPLE_DA_FORM_31.pdf
- DA Form 31 fillable + instructions: https://ncosupport.com/daforms/da31.html
- JTR landing page: https://www.travel.dod.mil/Policy-Regulations/Joint-Travel-Regulations/
- JTR June 2025 PDF (DTMO): https://api.army.mil/e2/c/downloads/2025/06/10/0da05172/jtr-june-2025.pdf
- eCFR Title 48 entry point: https://www.ecfr.gov/current/title-48
- eCFR developer documentation: https://www.ecfr.gov/developers/documentation/api/v1
- USAspending API: https://api.usaspending.gov/

# DoD AI policy / Responsible AI guidance to honor
- **DoD AI Ethical Principles (Feb 2020)** — five principles: Responsible, Equitable, Traceable, Reliable, Governable.
- **RAI Strategy and Implementation Pathway (June 2022)** signed by DSD Hicks; defines 64 lines of effort to operationalize the principles.
- **CDAO RAI Toolkit (Nov 2023, https://rai.tradewindai.com/)** — voluntary process for aligning AI projects with RAI best practices.
- **CDAO GenAI Toolkit (Dec 2024)** — operationalizes the "Guidelines & Guardrails for Governance of Generative AI" memo with 33 additional GenAI-specific tools, including a prescreening guide for whether GenAI is the right technology for the use case.
- **AI Cybersecurity Risk Management Framework Tailoring Guide (DoD CIO, 2025)** — companion to the RAI Toolkit; focused on CNSSI 1253 / Zero Trust / supply-chain risk for AI systems.
- **DoD Directive 3000.09 (Autonomy in Weapon Systems)** — out of scope for this hackathon, but relevant if any submission lets AI take a kinetic action; the hackathon track is admin/back-office and should keep AI strictly in a draft/recommend posture.

## Sources
- CDAO RAI Toolkit launch release (Nov 2023): https://www.defense.gov/News/Releases/Release/Article/3588743/cdao-releases-responsible-ai-rai-toolkit-for-ensuring-alignment-with-rai-best-p/
- CDAO RAI Toolkit page: https://www.ai.mil/Latest/Blog/Article-Display/Article/3940314/responsible-ai-toolkit/
- "GenAI Toolkit Operationalizes Guidelines & Guardrails Memo" — CDAO (2024-12-11): https://www.ai.mil/Latest/Blog/Article-Display/Article/3994183/genai-toolkit-operationalizes-guidelines-guardrails-memo/
- AI Cybersecurity RMF Tailoring Guide (DoD CIO, 2025-07-18): https://dodcio.defense.gov/Portals/0/Documents/Library/AI-CybersecurityRMTailoringGuide.pdf
- DOD's Responsible AI (RAI) Toolkit overview (FedTech, 2025-04-30): https://fedtechmagazine.com/article/2025/04/dod-responsible-ai-rai-toolkit-perfcon

# SCSP and the AI+ Expo, in one paragraph
- The Special Competitive Studies Project (SCSP) is a non-partisan, non-profit project chartered to recommend ways to strengthen U.S. long-term competitiveness in AI and other emerging technologies through ~2030. It hosts the AI+ Expo (May 7–9, 2026, Walter E. Washington Convention Center, DC) and runs the SCSP 2026 National Security Technology Hackathon. Phase 2 of the hackathon (May 9, 2026) places the top three teams per track on stage in front of ~20K AI+ Expo attendees.
- Sources: https://www.scsp.ai/about ; https://expo.scsp.ai/about/about-scsp/ ; https://expo.scsp.ai/

# Public-source background on named GenAI.mil judges (for problem-solution-fit signaling)
- **Stuart Wagner (DC)** — former Department of the Air Force Chief Digital Transformation Officer (stepped down March 2024). Founder of the BRAVO Hackathon series for the Department of the Air Force (multi-service prototyping events on classified and protected operational data). Prior: Senior Advisor to the DoD Chief Data Officer; ran a 50+ engineer team for Advana (analytics platform at OUSD(C)) and started Gamechanger (open-source NLP/search platform over DoD policy documents and contracts). Microsoft engineer earlier. Will reward submissions that work over real DoD policy text and that prove operational telemetry / evaluation discipline.
  - Source: https://stg.executivegov.com/2024/03/air-force-chief-digital-transformation-officer-stuart-wagner-stepping-down/
  - Source: https://potomacofficersclub.com/speakers/stuart-wagner/
- **Dr. Sanjeev Mohindra (Boston)** — leads the AI Technology Group at MIT Lincoln Laboratory; research focus on foundation models, multi-agent systems, scientific discovery, and safe and resilient AI for national security; previous work on Lincoln Laboratory Supercomputing Center, XLab early-warning analytics, and trust/performance in human-AI multi-domain C2 systems. Will reward technical depth, evaluation rigor, and adversarial robustness.
  - Source: https://www.ll.mit.edu/biographies/sanjeev-mohindra
  - Source: https://www.nae.edu/340173/Sanjeev-Mohindra
- **Dr. Ho-Chit Liu (Boston)** — best public match is **Dr. Ho Chit (Hosea) Siu**, MIT Lincoln Laboratory Tactical Systems Division; research on human-AI teaming, after-action review, interpretable ML, assistive technology for people with disabilities. Will reward thoughtful human-machine collaboration design and explicit uncertainty handling. (Confidence: medium-high; spelling variation between QuickStart and Lincoln Lab biography.)
  - Source: https://www.ll.mit.edu/biographies/ho-chit-siu
- **Neeraj Chandra (SF)** — former FAS Impact Fellow with publicly stated focus on DoD AI adoption pace ("Revolutionary Advances in AI Won't Wait", FAS, 2023); former Special Advisor to the U.S. Air Force Chief Scientist; ex-Pinterest software engineering manager. Will reward shipping discipline and a credible Pentagon-relevant problem statement.
  - Source: https://fas.org/expert/neeraj-chandra/
- **David Vernal (SF)** — retired U.S. Air Force Colonel (~27 years); former Director of Intelligence, 16th Air Force; former Chief of Strategic Analysis and Production at U.S. Strategic Command; former NSC team member; Stanford GSB MSx alum. Will reward operational realism and a clear trust posture.
  - Source: https://www.gsb.stanford.edu/programs/msx/life/students/voices/david-vernal
- **Kevin McQueary (DC)** and **Raj Panth (DC)** — public-source identifications were inconclusive at the time of this note. Confirm at the event and update.

# Public-safe summary
- This note is the public-source backstop for the GenAI.mil track. The platform is real, large, and recent (Dec 2025 launch; ~3M users; multi-model gateway; CUI/IL5; followed Task Force Lima → AI Rapid Capabilities Cell). The "offline" tagline is best read as an edge / DDIL posture, where DoD already has multiple production examples (Google GDC at Mobility Guardian 2025; EdgeRunner CRADAs with ARL/AFRL; Legion Centurion with the 18th Airborne Corps). The cited dataset endpoints are all genuinely free and public, with eCFR / USAspending / Federal Register being keyless. DoD Responsible AI guidance and the GenAI Toolkit set the trust-posture bar. The judging panel mixes Lincoln-Laboratory-grade research expertise with senior DoD digital-transformation operators; both audiences must be addressed in the demo.

# Sources accessed 2026-04-25 (consolidated)
- All URLs above were accessed on 2026-04-25. Where a "published" date is listed in this note, it is the date stamped by the source. Where no date is given, the source page does not declare one.
