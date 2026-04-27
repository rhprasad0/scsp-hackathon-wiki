# Slack was my IDE for a national security hackathon

I shipped a working AI agent demo at a national security hackathon without personally reading or writing a single line of code.

This is either a preview of the future of software development, or the most elaborate way anyone has ever avoided opening VS Code.

Possibly both.

The project was called **AO Radar**. It was built for the GenAI.mil track at the SCSP National Security Technology Hackathon, and the final repo is here: [github.com/rhprasad0/genai-mil-hackathon-final](https://github.com/rhprasad0/genai-mil-hackathon-final).

The demo was a hackathon prototype, not a deployed system. A DTS-style Approving Official could triage synthetic travel voucher packets, prepare review briefs, surface evidence gaps, call MCP tools, perform scoped workflow writes, refuse unsafe requests, and inspect an audit trail.

But the weird part was not the demo.

The weird part was that Slack was my IDE.

Not VS Code. Not Vim. Not a beautiful local dev setup with tasteful keybindings and a suspicious number of terminals.

Slack.

My development environment had emoji reactions.

## I built the rig before I built the project

A few days before the hackathon, I realized the project I actually needed was not the hackathon submission. It was the machine around the hackathon submission.

So I built a rig.

Hermes ran inside Slack as my command surface. Honcho gave Hermes persistent memory. [LLM Wiki](https://github.com/rhprasad0/scsp-hackathon-wiki) became the research and synthesis store. Claude and Codex became workers I could send into separate lanes. I had an iPhone Shortcut workflow that hit ElevenLabs, returned interview text, and let me paste rough SME notes into Slack so Hermes could clean them, structure them, and promote them into curated notes.

A normal person would have packed a charger.

I built a small nervous system.

The plan was reasonable, by hackathon standards. I expected to interview subject-matter experts, collect messy field notes, convert those into structured findings, and use the wiki to spot repeated workflows, bottlenecks, trust boundaries, and wedge opportunities.

Then I arrived on site in Crystal City and the plan collapsed almost immediately.

## The field research plan died on contact with the field

I had assumed there would be SMEs to interview.

There were not. Or at least, not in the way I needed.

After getting the challenge prompt, it became clear that I was not going to collect enough useful human signal by wandering around pretending discovery was happening. So I did the heroic founder thing: I kicked off deep research agents, got in the car, and drove home.

This may sound like leaving the hackathon.

I prefer to call it a time-management flex with better parking.

By the time I got home, Hermes had a useful body of research. The first pass drifted toward a leave-request assistant — natural, given the challenge materials, but also too much like implementing the example from the guide.

Then DTS came up.

And I remembered something important: people hate DTS.

That is not a market map. That is not a TAM slide. But it is signal.

So we pushed harder on DTS research: voucher review, Approving Officials, receipts, documentation gaps, policy references, and the awkward middle zone where an accountable human has to reconstruct what happened from a messy packet.

That is when the project started getting interesting.

## Sabastian made the project less abstract

I also need to give real credit to Sabastian Mandell.

Before the hackathon, Sabastian volunteered to help. He proposed an idea, then answered five questions about what approving vouchers in DTS actually felt like from the inside.

That changed the project.

Until then, it was easy to think of the problem as a compliance checklist: missing receipt, wrong amount, bad date, policy citation, flag it and move on.

Useful, but flat.

Sabastian’s answers reframed the project. Working through them with Hermes, we landed on the framing that became the center of the product: we needed to tell the **story of the voucher**, and show where that story falls apart.

The real user need was not simply “check this packet against rules.” It was closer to:

> Can this packet tell a coherent, reviewable financial story?

That framing came directly from Sabastian’s experience. Our synthetic case data drew on the kinds of stories he described: missing receipts, stale memory, ambiguous funding sources, weird lodging sequences, cash or ATM edge cases, weak documentation, amount mismatches, and the human problem of deciding what deserved closer review without jumping to conclusions.

The project got better when we stopped asking, “Can AI check the form?” and started asking, “Where does the packet stop making sense to the person who has to sign off?”

## Then we made it riskier on purpose

The first version of the spec was safer. It looked like a read-only MCP server: retrieve packet, summarize evidence, maybe surface policy citations. Useful, defensible, and a little boring.

Around commit `64224c3`, we took the risky turn.

AO Radar became more than a read-only assistant. It gained scoped workflow writes with audit trails. In the demo workflow, it could record an AO note, mark a finding reviewed, draft return-comment language, request traveler clarification, and retrieve the audit trail.

This is where the project stopped being “chat with documents” and became “please do not let the robot move money.”

The core boundary became:

> **The model can move the review workflow forward, but it cannot move money.**

AO Radar could help the reviewer think. It could organize evidence. It could draft neutral language. It could preserve traceability.

But it could not approve, deny, certify, submit, determine entitlement, determine payability, or accuse anyone of fraud.

The boundary was not decorative. It was the product.

## The agents built faster than I could understand

After the spec came implementation plans: infrastructure, schema, application, synthetic data, testing. Claude and Codex wrote, reviewed, attacked, hardened, and revised them. Then Claude Code teams started building.

This is where the experience became both exhilarating and uncomfortable.

The agents created Terraform, migrations, seed data, synthetic voucher cards, validators, MCP tools, a mock anomaly-signal service, repository layers, tests, and documentation. The repo stopped being a plan and became an organism.

But the agents also had a habit I can only describe as “declaring victory at mile 24 of a marathon.”

Unit and integration tests would pass, then the process would stop short of the actual deployed path. I tried pushing deployment through Hermes, watched AWS troubleshooting unfold, and eventually gave Claude Code access to the AWS MCP server so it could reference current docs instead of hallucinating a cloud ritual from 2019.

That helped. Infra started working.

Then it stopped short again before deep scenario testing.

So we restarted the end-to-end tests and kept going.

A lesson from this weekend: unit tests are where confidence is born. E2E tests are where confidence goes to be humbled in public.

## ChatGPT broke the illusion at the perfect time

Eventually the deployed tests passed. The system looked ready.

Then I connected it to ChatGPT.

And it broke.

Not conceptually. Not catastrophically. But enough to block the actual demo path.

That became commit `773fc4b`: ChatGPT-compatible MCP content and demo-path tool wiring. Passing our tests was not the same thing as surviving contact with the actual assistant cockpit.

After that fix, things worked as intended. Then we hardened wording around payability and entitlement because the safest version of the demo was also the most precise one.

We had a working demo with about two hours to spare.

A comfortable margin, if your hobby is stress-induced character development.

## The engineer was right to call me out

The demo went well.

Two senior-looking people watched it. Both seemed familiar with DTS. The reaction was not “cute chatbot.” It was closer to: yes, this is a real workflow, and yes, this could be useful.

Then an engineer asked me the question I deserved:

> How does this actually work?

Fair question.

From the outside, AO Radar looked like a normal software project: a repo, a demo, MCP tools, infrastructure, synthetic data, scoped writes, refusals, audit trails.

From the inside, I had been orchestrating the build through Slack.

I told him we should talk after everyone presented. Then he vanished into the hackathon crowd. The honest answer: at the implementation level, I did not really know.

That sounds bad.

It is also the whole point.

I knew the product shape, workflow, trust boundary, demo path, public-safe claims, and refusal behavior. I knew enough to steer the agents, inspect outputs, demand tests, and fix the demo path.

But I had not personally read the implementation line by line.

That is not a flex. It is not a confession of fraud either.

It is a description of a new kind of uncomfortable engineering middle ground.

## Slack was my IDE. Judgment was still the job.

The easy dunk is: “So you did not build it. The AI built it.”

I get that reaction. Part of me agrees with it.

But the more interesting answer is that the work did not disappear. It changed shape.

My role was not to type every function. My role was to decide what problem was worth solving, whose workflow mattered, what evidence counted, what the demo needed to prove, what the model was forbidden to do, what had to be audited, when the agents were bluffing, and what level of risk was acceptable for a hackathon prototype.

That is still engineering judgment.

It is just not the kind of engineering that feels heroic in a monospace font.

And this is the part I cannot stop thinking about:

> AI agents compress the distance between intent and working software. That makes judgment more important, not less.

If software becomes cheaper to create, bad software becomes cheaper to create too. So do unclear authority boundaries, shallow tests, overclaimed demos, and polished artifacts that outrun their builders’ understanding.

If my name is on the demo, I do not get to shrug and say, “The agent wrote that part.”

That is not accountability.

That is outsourcing blame to autocomplete.

I am not walking away from this thinking coding is dead. I am walking away thinking software engineering is becoming stranger.

The human may spend less time typing syntax and more time shaping constraints. But someone still has to know what good looks like. Someone still has to ask whether the system should be allowed to do the thing it can now do. Someone still has to notice when a beautiful demo is actually a very confident liability machine.

At the hackathon, Slack was my IDE.

But the real work was not chatting with an AI until software appeared.

The real work was trying to keep the software honest.

---

*Process note: this article was written with Hermes assisting from Slack and then adversarially reviewed with Claude Code. So yes, the article about AI-assisted work was itself AI-assisted. The bit has layers. Please do not let the recursion near a production database.*
