---
title: 2026 04 24 prior scsp winning project observations
source: curated/2026-04-24-prior-scsp-winning-project-observations.md
ingestedAt: "2026-04-25T16:27:05.660Z"
---

---
title: Prior SCSP Winning Project Observations
date: 2026-04-24
sensitivity: public-safe
source_type: public-research-synthesis
status: draft
---

# Context
- Thread/date: 2026-04-24
- Topic slug: prior-scsp-winning-project-observations
- Confidence: medium
- Scope: public observations from prior SCSP / AGI House hackathon artifacts, especially winner-side signals used as contrast against non-winner participant repos.
- Note: This is not a complete historical record. Public artifacts are sparse and biased toward teams that published repos or winner announcements.

# Core observations
- Winning projects appear to be **narrower, sharper, and more demoable** than many participant repos.
- Strong projects do not just say "agentic AI for government"; they show a concrete threat, workflow, or infrastructure class and make the prototype legible to judges quickly.
- Winner artifacts often pair a serious national-security framing with a prototype that can be shown in one sentence:
  - agentic LLM red-teaming against a defense model
  - AI-assisted critical infrastructure defense for water treatment systems
- The best public winner signals emphasize **operational relevance plus human oversight**, rather than autonomous replacement of accountable people.
- Winning concepts seem to benefit from being provocative but bounded: enough edge to be memorable, not so much sprawl that the evaluator has to assemble the story themselves.

# Winning project signals
## Spectre Red Teaming
- Public artifact: https://github.com/JessSanChen/spectre-red-teaming/
- Claimed result: Grand Prize Winner of the SCSP x AGI House Hackathon in Alexandria, VA.
- Project shape: agentic LLM jailbreaker / red-team architecture tested against an Air Force LLM context.
- Why it likely landed:
  - Clear problem: supposedly secure LLMs can still be jailbroken.
  - Clear demo: show the attack path and result.
  - Clear national-security relevance: AI assurance and red-teaming for defense systems.
  - Clear technical wedge: agentic adversarial prompting rather than a generic chatbot.
- Pattern to preserve: a strong hackathon project can be a **diagnostic capability** rather than an end-user productivity app.

## US-Infra-Avengers
- Public artifact: https://github.com/its-tim-lee/us-infra-avengers
- Claimed result: 1st Place — OpenAI Track, National Security, SCSP x AGI House Hackathon 2025.
- Project shape: AI-powered cybersecurity prototype for U.S. critical infrastructure, initially water treatment systems.
- Why it likely landed:
  - Clear protected asset: water treatment systems / critical infrastructure.
  - Clear risk frame: cyber threats to infrastructure.
  - Clear prototype ingredients: anomaly detection, LLMs, RAG, agents, real-time industrial sensor analysis.
  - Explicit human-in-the-loop posture: AI supports detection and response, but human expertise remains part of security.
- Pattern to preserve: the project starts with one infrastructure class, not "protect all infrastructure" as the prototype scope.

# Contrast with non-winning / likely non-winning artifacts
- Several non-winner or likely non-winner repos were serious and high-effort but broader:
  - Port Sentinel: port security intelligence platform with Shodan scanning, digital twin dashboard, risk scoring, and AI attack-vector analysis.
  - Project Perception: video analysis platform for interrogation/surveillance scenarios with emotion, blink, object detection, and chatbot querying.
  - OpenUAV: solo-built collaboration platform with auth, posts/comments, 3D model upload/preview, and AI agents.
  - Global AI Security Insights Platform: map, multimodal AI, web search, MCP tools, and autonomous search-agent swarm.
- These projects show a common hackathon gravitational pull: **dashboard + agents + map/chat/upload features**.
- The risk is not lack of effort; the risk is that the project becomes a toolbox instead of a wedge.

# Implications for GenAI.mil
- Prefer a narrow, high-evidence workflow wedge over a broad "AI assistant for military admin" platform.
- A strong candidate wedge should be expressible as:
  - **who** uses it
  - **what artifact** they need to produce
  - **what trusted references** constrain it
  - **what missing fields / assumptions** must be flagged
  - **who approves** before it leaves the tool
- Favor artifacts that make human review easier:
  - citations to approved low-side references
  - missing-information flags
  - assumptions separated from facts
  - review / approval handoff preserved
- Do not over-index on agent swarms unless the workflow truly needs multiple independent roles. Agent swarm is seasoning, not the steak.
- The public winner pattern suggests the prototype should be memorable as a sentence, e.g.:
  - "A low-side assistant that turns messy logistics/admin requests into cited, reviewable drafts with missing-field flags and human approval preserved."

# Bottlenecks / anti-patterns observed
- Breadth masquerading as capability: adding auth, dashboards, maps, chatbots, uploads, and agents can obscure the core operational value.
- Tool-first framing: projects sometimes start from available AI primitives rather than a specific government workflow pain.
- Weak trust story: national-security judges likely need to see what the AI is allowed to do, what it is forbidden to do, and where human accountability remains.
- Demo ambiguity: if the judge cannot quickly tell what changed in the user's workflow, the prototype may feel like an impressive parts bin.

# Artifacts mentioned
- Public GitHub repos for prior teams.
- Winner README claims and project descriptions.
- Public Medium / repo writeups from participant projects.
- SCSP / AI+ Expo hackathon descriptions and prize/track framing.

# Trust boundaries / approvals
- Winning-style projects preserve or expose trust boundaries instead of hiding them:
  - red-team outputs are evidence for human/security review, not automatic system changes
  - infrastructure alerts and incident reasoning are paired with human-in-the-loop review
  - GenAI.mil drafting should assist but not approve, submit, classify, or invent policy

# Open questions
- Which exact judging rubric was used for the relevant GenAI.mil track?
- How much weight do judges place on operational SME validation versus prototype polish?
- Are there known winning projects specifically in military admin/logistics workflows, or mostly cyber/infrastructure/red-team examples?
- What is the smallest workflow Ryan can validate with on-site SMEs before building or writing?

# Public-safe summary
- Prior SCSP winning artifacts suggest that narrow, operationally legible projects beat broad AI dashboards. The strongest pattern is a specific national-security problem, a clear demo, and an explicit trust boundary. For GenAI.mil, the likely wedge is not a generic military chatbot; it is a reviewable drafting workflow for one recurring admin/logistics artifact, with citations, missing-field flags, assumptions, and human approval preserved.

