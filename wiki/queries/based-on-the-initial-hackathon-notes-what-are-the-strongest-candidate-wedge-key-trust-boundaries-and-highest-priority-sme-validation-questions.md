---
title: Based on the initial hackathon notes, what are the strongest candidate wedge, key trust boundaries, and highest-priority SME validation questions?
summary: Based on the initial hackathon notes, the strongest candidate wedge is a **scoped prototype wedge** focused on a **low-s
type: query
createdAt: "2026-04-24T21:23:45.937Z"
---

Based on the initial hackathon notes, the strongest candidate wedge is a **scoped prototype wedge** focused on a **low-side assistant for routine administrative or logistics workflow drafting**—i.e., turning messy inputs into **structured, reviewable drafts** for one specific workflow rather than a general-purpose copilot. It should retrieve **approved templates, SOPs, policies, and prior examples** from a controlled document set, then draft while flagging assumptions, missing fields, and low-confidence claims. This is the wedge most directly supported by [[Scoped Prototype Wedge]] and [[Human-in-the-Loop Review and Approval]].

The key trust boundaries are:

- **Human review and approval are mandatory** before export or submission; the AI can draft but not approve or submit autonomously [[Human-in-the-Loop Review and Approval]].
- The assistant may use only **approved low-side references** in the controlled document set; it should not invent policy [[Scoped Prototype Wedge]].
- The prototype excludes **classified data**, **autonomous submission**, **approval automation**, **live integration with official DoD systems**, **personnel decisions**, **targeting**, **operational planning**, and **tactical recommendations** [[Scoped Prototype Wedge]].
- Trust must remain visible through **sources, assumptions, uncertainty, missing fields, and review status**; otherwise the output is untrustworthy [[Scoped Prototype Wedge]].

The highest-priority SME validation questions are the ones the discovery plan says to ask about **real recent workflows**, especially:

1. **“Walk me through the last time this happened.”**  
   Use this to capture the exact current-state workflow, not abstract opinions [[Current-State Workflow Interviewing]].

2. **What was the workflow trigger and step-by-step flow?**  
   This helps determine whether the suspected wedge is real and narrow enough [[Current-State Workflow Interviewing]].

3. **What artifacts were involved, and what had to be approved?**  
   This identifies the document types, routing, and where human judgment or sign-off is required [[Current-State Workflow Interviewing]].

4. **What are the bottlenecks?**  
   The notes specifically call out manual form filling, repeated status updates, fragmented guidance, tribal knowledge, wrong format, unclear routing, missing fields, and ungrounded assumptions as likely pain points to validate [[Scoped Prototype Wedge]].

5. **What would make an AI-assisted output untrustworthy?**  
   This is the clearest trust-boundary question in the interview guidance [[Current-State Workflow Interviewing]].

6. **What information is sensitive, restricted, or awkward to share?**  
   This helps define safe scope and data boundaries for the prototype [[Current-State Workflow Interviewing]].

7. **Which steps must remain human-owned, and which can the AI assist with?**  
   The interview guidance emphasizes preserving the distinction between what AI can assist, what humans must judge, and what official systems must own [[SME Discovery for Hackathon Validation]].

The wiki also suggests a practical validation rule: look for **at least three independent mentions of the same pain point plus one clear trust boundary** before committing to a spec or narrowing fully to the wedge [[Research-to-Spec Pivot Criteria]].

If you want, I can turn this into a compact **SME interview script** or a **wedge validation checklist**.
