# Two-Round SME Interview Template

Use this for hackathon discovery when the goal is to understand a real workflow well enough to choose a narrow, evidence-backed spec wedge.

## Operating principle

Round 1 is for **understanding the current reality**.

Round 2 is for **closing the most important gaps**:
- clarifying missing workflow steps
- validating repeated pain points
- testing trust / approval boundaries
- checking whether the proposed wedge is actually useful

Do **not** spend Round 1 pitching a solution.
If the conversation starts drifting into solution theater, steer back to:
- what happened last time
- what artifacts were involved
- where the work slowed down
- what had to be approved
- what could not be trusted

---

## Before the interview

Capture these if known:
- Interview slug: `YYYY-MM-DD-topic-slug`
- SME role / perspective:
- Topic area:
- Interview round: `1` or `2`
- Known hypothesis going in:
- What we most need to learn:

Optional opener:

> I’m trying to understand the real workflow, pain points, and trust boundaries before writing anything like a spec. I’m going to focus mostly on how this works today.

---

# Round 1 — Current-state discovery

## Goal

Understand:
- who does the work
- what triggers it
- the actual step-by-step workflow
- where the pain is
- what artifacts and systems matter
- what trust / approval constraints shape the process

## Opening context questions

1. What is your role in this process?
2. When does this kind of work come up?
3. Who else is usually involved?
4. What kind of cases or situations are we talking about?

## Workflow walk-through

Ask for a **real recent example**.

1. Tell me about the last time you had to do this.
2. What triggered it?
3. What was the first step?
4. What happened next?
5. Who touched it after you?
6. Where did you have to wait, check, or ask for something?
7. What did the process produce at the end?

If the answer stays abstract, use:
- “Walk me through one specific recent case.”
- “What did you open first?”
- “What did you send or receive?”
- “What happened immediately after that?”

## Pain / bottleneck questions

1. Which part is most annoying, slow, or fragile?
2. Where do things usually get stuck?
3. What errors or misunderstandings happen most often?
4. What part depends too much on a knowledgeable human?
5. If you could remove one headache from this process, what would it be?

## Workaround questions

1. How do people handle this today when the official process is too slow or unclear?
2. What shortcuts or unofficial workarounds exist?
3. What do experienced people know that new people usually don’t?
4. What part of the process lives in someone’s head instead of a system?

## Artifacts / systems questions

1. What systems, tools, or documents are involved?
2. What inputs do you need before you can act?
3. What outputs do you produce for someone else?
4. Is there a form, template, memo, spreadsheet, message, or tracker that matters here?
5. What evidence or documentation has to accompany the work?

## Trust / approval boundary questions

1. Who has to approve or sign off?
2. What would make an output untrustworthy?
3. What parts can be assisted, and what parts must stay human?
4. What information is sensitive, restricted, or awkward to share?
5. Where would automation create risk instead of value?

## Frequency / severity questions

1. How often does this come up?
2. How big a problem is it when this goes wrong?
3. Who feels the pain most acutely?
4. Is this a daily annoyance, a rare fire drill, or both?

## Wedge-identification questions

1. If we only solved one slice of this process, which slice would matter most?
2. Which step is most repetitive or rules-driven?
3. Which step has the worst pain-to-effort ratio?
4. Where could a small improvement produce outsized value?

## Closing questions

1. What did I not ask that I should understand before trying to write a spec?
2. Who else should I talk to for a different perspective?
3. What artifact or example would help make this more concrete?

---

# After Round 1 — What Hermes should extract from the raw STT

From the pasted STT, Hermes should produce:
- a structured curated note
- the current-state workflow steps
- top pain points
- artifacts and systems mentioned
- trust / approval boundaries
- open questions
- the best candidate wedge
- a short list of follow-up questions for Round 2

## Round-1 output checklist

By the end of Round 1, we want:
- a usable workflow sketch
- 1–3 candidate pain points
- at least one identified trust boundary
- at least one likely wedge
- a short list of unresolved questions worth spending Round 2 on

---

# Round 2 — Gap-closing and wedge validation

## Goal

Use Round 2 to validate or clarify what is still fuzzy after Round 1.
Do **not** repeat the whole interview. Spend the time closing the highest-value gaps.

## What Round 2 should focus on

Pick the smallest set of questions that closes the biggest uncertainty in the spec.

Typical Round-2 themes:
- workflow ambiguity
- competing definitions of the problem
- trust / approval uncertainty
- artifact or data dependency uncertainty
- wedge selection
- success criteria

## Round-2 question bank

### A. Clarify missing workflow steps
1. Earlier you said the process goes from ___ to ___ — what happens in between?
2. Who owns that handoff in practice?
3. Is that step required every time or only in certain cases?
4. What causes the process to branch or change course?

### B. Validate pain point severity
1. We heard that ___ is a major pain point. Is that truly the biggest one?
2. What makes that pain expensive — time, confusion, risk, delay, rework?
3. If that issue disappeared, what would materially improve?
4. Is this pain shared broadly or mostly concentrated in one role or scenario?

### C. Validate artifacts and data dependencies
1. Which specific document, form, or system is the bottleneck?
2. What information is usually missing or hard to gather?
3. What makes a case “ready” for the next step?
4. What evidence has to be attached before someone will act?

### D. Validate trust / approval boundaries
1. What would make you reject an AI-assisted output here?
2. What must be explainable, reviewable, or traceable?
3. Who would need to trust this before it could be used?
4. What is the highest-risk failure mode?
5. What part absolutely needs a human judgment call?

### E. Test the wedge
1. If we only helped with ___, would that be genuinely useful?
2. Would solving that slice remove a real bottleneck or just make things nicer?
3. Is this the first place you would start, or is there a better entry point?
4. What adjacent slice should we explicitly not try to solve right now?

### F. Define success criteria
1. How would you tell that this improvement actually worked?
2. What would get faster, clearer, or less error-prone?
3. What metric or observable outcome would move?
4. What would still need to remain manual even in the better version?

### G. Pressure-test adoption reality
1. What would make people ignore or route around this?
2. What training or behavior change would be required?
3. Would this fit the real workflow, or add another layer on top?
4. What organizational or policy friction would kill this even if the idea is good?

## Closing Round-2 questions

1. Given everything we discussed, what is the narrowest useful problem to solve first?
2. What is the biggest thing we might still be misunderstanding?
3. Is there any reason this should **not** be the focus of a spec?

---

# Spec-readiness check after Round 2

We are ready to start writing when we can answer:
- Who is the primary user?
- What job are they trying to do?
- What is the current workflow?
- Where is the repeated pain?
- What artifacts and systems matter?
- What trust / approval boundary matters most?
- What narrow wedge should we target first?
- How will we know it helped?

If Round 2 still changes the core story, do another interview.
If Round 2 mostly sharpens the same story, start writing.

---

# Slack usage pattern

## Prompt for Round 1 intake

```text
raw stt:
[paste transcript]

Turn this into a curated hackathon note in curated/YYYY-MM-DD-<slug>.md.
Extract:
- workflow
- pain points
- artifacts
- trust boundaries
- open questions
- candidate wedge
Then give me the best Round-2 follow-up questions.
```

## Prompt for Round 2 preparation

```text
Using curated/YYYY-MM-DD-<slug>.md and the current wiki context, generate the smallest high-value set of Round-2 follow-up questions.
Prioritize questions that would decide:
1. the true bottleneck
2. the key trust boundary
3. the best narrow wedge
4. whether we are ready to write the spec
```

## Prompt after Round 2

```text
raw stt:
[paste follow-up transcript]

Update curated/YYYY-MM-DD-<slug>.md with the clarified findings.
Then ingest, compile, and tell me:
- what was confirmed
- what changed
- whether we are red / yellow / green for spec readiness
- the one-sentence wedge we should write
```
