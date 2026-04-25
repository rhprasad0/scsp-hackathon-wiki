---
title: 2026 04 25 genai mil challenge prompt and rubric
source: research/2026-04-25-genai-mil-challenge-prompt-and-rubric.md
ingestedAt: "2026-04-25T17:06:25.997Z"
---

---
title: GenAI.mil Challenge Prompt and Rubric
date: 2026-04-25
sensitivity: public-safe
source_type: public-research-synthesis
status: ready-for-ingest
---

# Context
- Thread/date: 2026-04-25
- Topic slug: genai-mil-challenge-prompt-and-rubric
- Confidence: high (verbatim primary source: the SCSP Hacker QuickStart for the SCSP 2026 National Security Technology Hackathon, Round 1, GenAI.mil track tab; cross-checked against the public AI+ Expo hackathon page).
- Source basis: organizer-published challenge document and public expo.scsp.ai/hackathon page.

# Core observations
- The GenAI.mil track explicitly anchors on the **administrative tail of the rank-and-file**, not on the digital battlefield. The framing is: "the most immediate friction for the three million men and women in uniform often occurs in the 'administrative trenches.'"
- The track copy on the public hackathon page reframes this as: "Weaponize AI against the 'administrative trenches' by creating software that automates military paperwork, logistics, and tactical knowledge retrieval for the rank-and-file."
- The starting-point guidance tells teams to: pick **one user persona**, build **end-to-end**, and **set up a RAG pipeline over a small corpus of Army publications or Field Manuals first**, then layer form generation or logistics planning on top.
- The four example project directions are all narrowly bounded admin/back-office wedges: regulation navigator, form auto-filler, TDY planner, contract intel.
- The track tagline contains an unusual constraint: "and does it offline." A technical reading (works without persistent cloud connectivity) is plausible and valuable, but the public SCSP hackathon page omits the word "offline"; confirm with organizers before making it the core promise.

# Verbatim track prompt (as published in the SCSP Hacker QuickStart)
- Tagline: "The US military runs on paperwork. Build the AI assistant that makes the rank-and-file faster, smarter, and less buried in bureaucracy, and does it offline."
- The idea: "While modern defense often focuses on the 'digital battlefield,' the most immediate friction for the three million men and women in uniform often occurs in the 'administrative trenches.' From navigating thousands of pages of convoluted regulations and policies to the grueling manual labor of filling out paperwork for housing, maintenance, or housing, the 'bureaucratic tail' of the military significantly drains mission readiness. The launch of the GenAI.mil portal provides a secure environment to weaponize AI against this inefficiency. The challenge for this hackathon is to build an AI-enabled software application that solves the everyday problems of the rank-and-file and streamlines the logistical hurdles that keep warfighters behind desks instead of in the field."
- A good starting point: "Pick one user persona (e.g., a junior NCO planning a training trip) and build an end-to-end solution for them. Set up a RAG pipeline over a small corpus of Army publications or Field Manuals (FMs). Get accurate retrieval working before adding form generation or logistics planning."

# Example project directions (verbatim)
- Regulation navigator: ingest Army Regulations and Field Manuals into a vector store; answer "what does AR 600-8-10 say about leave accrual?" accurately.
- Form auto-filler: take a natural language request ("I need to file a DA 31 for 10 days leave starting June 3") and populate the correct form fields.
- TDY planner: pull Joint Travel Regulations and GSA rates to generate a compliant travel itinerary with per diem calculations.
- Contract intel tool: query USAspending or SAM.gov to surface relevant past awards and help a contracting officer understand the landscape.

# Datasets and APIs the organizer points teams toward
- DTIC Public STINET — full-text searchable DoD technical reports and TTPs.
- Army Publishing Directorate (APD) — all ARs, ADPs, FMs, and DA forms (bulk-downloadable PDFs).
- Air Force e-Publishing — AFIs, AFMANs, AF forms.
- Joint Travel Regulations (JTR) — canonical DoD travel and per diem rulebook.
- GSA Open APIs — federal procurement catalog and per diem rates.
- SAM.gov public APIs — contract opportunities and entity registrations; public data, but key endpoints generally require a public API key.
- USAspending.gov API — all federal contracts and spending, fully open.
- Federal Register API — regulations, executive orders, and notices.
- eCFR Bulk Data — CFR Title 32 (National Defense) and Title 48 (Federal Acquisition Regulations System) as XML/JSON.

# Judging rubric (verbatim, per QuickStart)
- Novelty of Approach (25%): "Does this solution bring a fresh perspective? ... whether they challenged conventional thinking, introduced a new method, or tackled the problem from an unexpected angle."
- Technical Difficulty (25%): "How technically ambitious is the build? ... whether the team pushed beyond off-the-shelf solutions to build something genuinely challenging."
- Potential National Impact (25%): "Could this solution scale? ... how meaningfully this product could affect communities, systems, or people across the country — prioritizing solutions that address widespread problems and have a credible path to broad reach."
- Problem-Solution Fit (25%): "Our goal is to have our technical-minded folks match up with subject-matter experts. ... does the team truly understand who they're building for? ... how well the team has identified and articulated a real user need, and how directly and effectively their product addresses that problem."

# Judges (verbatim, per QuickStart, by city)
- SF: David Vernal; Neeraj Chandra.
- Boston: Dr. Ho-Chit Liu; Dr. Sanjeev Mohindra.
- DC: Kevin McQueary; Raj Panth; Stuart Wagner.
- Public-source check on judges (see public-context note for sources):
  - Stuart Wagner — former Department of the Air Force Chief Digital Transformation Officer; founder of the BRAVO Hackathon series; ex-Senior Advisor to the DoD Chief Data Officer; built and ran development for Advana and started Gamechanger (open-source NLP/search over DoD policy and contracts).
  - Sanjeev Mohindra — leads the AI Technology Group at MIT Lincoln Laboratory (foundation models, scientific discovery, multi-agent systems, safe and resilient AI for national security).
  - Dr. Ho-Chit Liu — possible public match is Dr. Ho Chit (Hosea) Siu of MIT Lincoln Laboratory's Tactical Systems Division; research focus is human-AI teaming, after-action review, and interpretable ML. Treat this as low-medium confidence until event signage confirms it because the QuickStart surname and public-profile surname do not match.
  - Neeraj Chandra — former Federation of American Scientists (FAS) Impact Fellow; former Special Advisor to the U.S. Air Force Chief Scientist; ex-Pinterest software engineering manager; FAS author of "Revolutionary Advances in AI Won't Wait" (2023) on DoD AI adoption pace.
  - David Vernal — retired U.S. Air Force Colonel (~27 years); former Director of Intelligence, 16th Air Force; former Chief of Strategic Analysis and Production at U.S. Strategic Command; former NSC team member; Stanford GSB MSx alum.
  - Kevin McQueary — public-source identification incomplete at the time of this note; record his affiliation if confirmed during the event.
  - Raj Panth — public-source identification incomplete at the time of this note; record his affiliation if confirmed during the event.

# Submission requirements (verbatim, per QuickStart)
- Project must be in a public GitHub repo that remains public throughout the hackathon and beyond.
- Submission email: GitHub link plus a README.md to hack@scsp.ai by 5:00 PM local time on Sunday April 26, 2026.
- README.md must include team names, track, what you built, what datasets/APIs you used, and how to run it.
- At least one teammate must demo in person; presentation under 5 minutes.
- Round 1 winners advance to Round 2 at the AI+ Expo on Saturday May 9, 2026 (Walter E. Washington Convention Center, DC). Round 1 submissions cannot be edited between rounds.
- Public submissions only: no classified materials. Unclassified, public, or otherwise shareable data only. Mind ITAR / EAR; no controlled or restricted content. Preexisting code must have a determined export classification.
- IP: teams retain ownership; SCSP gets a non-exclusive license and will publish all submissions on its GitHub.

# Schedule (per QuickStart)
- Saturday April 25, 2026: 10:00–11:00 AM registration; 11:00 AM kickoff; 1:00 PM vacate premises; 2:00 PM team-and-track final email due (subject "SCSP Hackathon <Team Name> FINAL").
- Sunday April 26, 2026: 5:00 PM local submissions due. Judging 5:00–7:00 PM local; results by email shortly after.
- Saturday May 9, 2026: top three teams per track per location demo at AI+ Expo, DC, 9:00 AM–1:30 PM.

# Implications worth flagging up front
- The example project directions all live in the **back-office tail**, not the tactical edge. A submission that tries to do tactical / kinetic / weapons-relevant AI is off-track for this challenge and may also collide with ITAR / EAR rules and the unclassified-only constraint.
- The four examples bias the design space toward **RAG over public DoD text** and **structured form/itinerary generation**. Being merely "a chat over Field Manuals" will not differentiate.
- Judges appear to combine deep research expertise (Mohindra, and Liu/Siu only if confirmed) with operational and acquisition pragmatism (Wagner, Vernal, Chandra). A demo should show technical novelty and a believable user without relying on speculative individual-judge preferences.
- The "offline" line, in combination with the "behind desks instead of in the field" framing and the 3M-user scale, offers a potential differentiator: build a system that **complements GenAI.mil** by working locally when cloud connectivity or live retrieval is unavailable. Keep this bounded to what the prototype actually demonstrates.

# Public-safe summary
- The GenAI.mil track of the SCSP 2026 hackathon asks teams to build an AI-enabled application that reduces administrative burden on the 3M-person military workforce, framed by the launch of the DoD's GenAI.mil enterprise platform. Examples favor RAG over public DoD text plus structured form or itinerary generation. The rubric is a balanced 25% across novelty, technical difficulty, national impact, and problem-solution fit, judged by a panel mixing senior DoD digital transformation alumni and Lincoln-Laboratory-grade AI researchers. Submissions must be public, unclassified, and demoable in five minutes.

# Sources accessed 2026-04-25
- SCSP Hacker QuickStart - Google Docs - Full (organizer-issued challenge document; verbatim track text quoted above).
- AI+ Expo Hackathon page (public): https://expo.scsp.ai/hackathon/
- SCSP About: https://www.scsp.ai/about
- AI+ Expo About SCSP: https://expo.scsp.ai/about/about-scsp/

