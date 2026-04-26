# Plan: Demo AO Radar MCP Server in ChatGPT.com

## Goal

Prepare a hackathon demo for tomorrow where **ChatGPT.com is the AO interface** and an **AO Radar MCP server** is the controlled workflow/tool layer over synthetic DTS-like voucher data.

The demo should show a ChatGPT-style GenAI.mil assistant helping a DTS Approving Official move through review work using scoped, auditable tools.

Core pitch:

> The model can move the review workflow forward, but it cannot move money.

## Current context / assumptions

- The target demo surface is **ChatGPT.com**, not Gemini CLI, Gemini web, or a custom frontend.
- ChatGPT custom MCP/apps require a **remote HTTPS `/mcp` endpoint**. Local stdio MCP will not connect directly.
- For tomorrow, expose the local MCP server through **ngrok or Cloudflare Tunnel**.
- The demo uses **synthetic data only**.
- No real DTS, GenAI.mil, CAC, GTCC, traveler PII, EFT, or official voucher data.
- The MCP server should be **write-capable**, but only for AO workflow state and audit trail actions.
- The server must not expose tools for approval, denial, certification, entitlement determination, fraud determination, or live DTS submission.
- This plan belongs in the private SCSP hackathon wiki, not the public Hermes repo.

## Product stance

AO Radar is not a generic suspicious-voucher detector.

It is a **pre-decision AO workflow server** that lets a model:

- inspect synthetic voucher packets
- rank vouchers awaiting action
- identify story-coherence breaks
- cite relevant public policy/checklist snippets
- draft AO questions / return comments
- record AO notes
- mark findings reviewed
- update review workflow status
- produce an audit trail

The boundary is explicit:

- no approval
- no denial
- no certification
- no entitlement decision
- no fraud accusation
- no live DTS submission

## Demo architecture

```text
ChatGPT.com
  ↓ MCP tool calls over HTTPS
AO Radar MCP Server
  ↓
Postgres synthetic DTS workflow DB
  ↓
Vouchers, expenses, receipts, findings, policy snippets, AO notes, audit events
```

Local development shape:

```text
FastMCP / Python MCP server
  ↓
local Postgres or SQLite/Postgres-compatible demo DB
  ↓
ngrok / Cloudflare Tunnel HTTPS endpoint
  ↓
ChatGPT.com custom MCP connector
```

If Postgres setup becomes a time sink, keep the interface Postgres-shaped but use SQLite or in-memory fixtures for the demo. Judges care about workflow and tool boundary more than the database brand, unless the pitch specifically mentions Postgres.

## Proposed MCP tools

### Read / analysis tools

#### `list_vouchers_awaiting_action`

Purpose: show AO queue prioritized by risk.

Inputs:

```json
{
  "risk_level": "all | high | medium | low",
  "limit": 10
}
```

Returns rows like:

```json
{
  "voucher_id": "V-1042",
  "traveler_display": "Synthetic Traveler 1042",
  "trip_purpose": "Training TDY - Denver",
  "claimed_total": 1842.16,
  "risk_level": "high",
  "top_story_break": "Lodging claim exceeds receipt total by $70.50",
  "review_status": "needs_review",
  "recommended_next_step": "Review before human decision"
}
```

#### `get_voucher_packet`

Purpose: fetch full synthetic case file.

Returns:

- order / authorization summary
- claimed expenses
- receipt metadata
- pre-audit flags
- traveler comments
- current review status
- prior AO notes

#### `analyze_voucher_story`

Purpose: produce structured story-coherence findings.

Returns:

- story summary
- risk level
- findings
- evidence
- why it matters
- policy/checklist basis
- AO question
- `not_a_fraud_finding: true`
- prohibited actions

#### `get_policy_citation`

Purpose: retrieve a public policy/checklist citation snippet by ID.

Returns:

- citation ID
- source title
- public URL if available
- snippet
- usage note

#### `draft_ao_review_brief`

Purpose: package the review into a concise AO-facing brief.

Returns:

- headline
- voucher story
- story breaks
- recommended AO questions
- suggested return / clarification comment
- boundary notice

### Write-capable workflow tools

These are the important demo differentiator.

#### `record_ao_note`

Purpose: save an AO note against a voucher and optional finding.

Inputs:

```json
{
  "voucher_id": "V-1042",
  "finding_id": "F-001",
  "note": "AO reviewed lodging discrepancy. Traveler needs to explain $70.50 difference or attach missing support.",
  "actor": "demo_ao"
}
```

Writes:

- `ao_notes`
- `audit_events`

#### `mark_finding_reviewed`

Purpose: mark a finding as reviewed/resolved/unresolved.

Allowed statuses:

```text
reviewed_unresolved
reviewed_explained
reviewed_no_issue
needs_followup
```

Disallowed statuses:

```text
fraud
approved
denied
certified
submitted
```

#### `draft_return_comment`

Purpose: create a draft comment for traveler clarification.

Important: this creates a **draft only** and records an audit event. It does not return or submit anything.

#### `request_traveler_clarification`

Purpose: set workflow state to awaiting clarification and store the message that would be sent.

For demo safety, return copy should say:

> Demo-only clarification request recorded. No real traveler was contacted.

#### `set_voucher_review_status`

Purpose: update internal review state.

Allowed statuses:

```text
needs_review
in_review
awaiting_traveler_clarification
ready_for_human_decision
closed_in_demo
```

Disallowed statuses:

```text
approved
denied
certified
submitted
paid
fraud
```

#### `get_audit_trail`

Purpose: show all workflow writes for a voucher.

Returns:

- event ID
- timestamp
- actor
- tool/action
- before/after state where relevant
- linked finding/comment/note IDs
- boundary reminder

## Suggested database schema

Minimum tables:

```text
vouchers
orders
expenses
receipts
pre_audit_flags
policy_citations
findings
ao_notes
return_comment_drafts
audit_events
```

### `vouchers`

Fields:

- `id`
- `traveler_display`
- `trip_purpose`
- `destination`
- `start_date`
- `end_date`
- `claimed_total`
- `routing_status`
- `review_status`
- `risk_level`
- `top_story_break`

### `findings`

Fields:

- `id`
- `voucher_id`
- `severity`
- `category`
- `title`
- `evidence_json`
- `policy_citation_ids_json`
- `ao_question`
- `status`
- `not_a_fraud_finding`

### `audit_events`

Fields:

- `id`
- `voucher_id`
- `actor`
- `action`
- `tool_name`
- `input_summary`
- `before_state_json`
- `after_state_json`
- `created_at`
- `boundary_notice`

## Synthetic demo vouchers

Create 5 vouchers:

1. **High risk: lodging receipt mismatch**
   - Claimed lodging amount exceeds hotel receipt by `$70.50`.
   - Also has weak pre-audit justification.

2. **Medium risk: date/window mismatch**
   - Taxi or lodging expense appears outside authorized travel dates.

3. **Medium risk: weak pre-audit justification**
   - Justification is “mission requirement” / “authorized” / “N/A”.

4. **Low risk: clean packet**
   - Everything lines up.
   - Important so the system does not look like an angry red-flag toaster.

5. **Ambiguous OCONUS/cash case**
   - Weak cash receipt / exchange-rate ambiguity.
   - Classification should be “needs explanation,” not “suspicious.”

## ChatGPT demo script

### Prompt 1: show queue

> I am a DTS Approving Official. Show me vouchers awaiting my action and prioritize the ones I should review first.

Expected tool call:

```text
list_vouchers_awaiting_action
```

Expected answer:

- ranked queue
- top story break per voucher
- no claim that anything is fraud

### Prompt 2: open high-risk voucher

> Open the highest-risk voucher and prepare an AO review brief. Do not approve, deny, certify, submit, or allege fraud.

Expected tool calls:

```text
get_voucher_packet
analyze_voucher_story
get_policy_citation
draft_ao_review_brief
```

Expected answer:

- voucher story
- story breaks
- evidence
- citations
- AO questions
- suggested draft return/clarification comment
- boundary notice

### Prompt 3: write note

> Record that I reviewed the lodging discrepancy and need the traveler to explain the $70.50 difference or attach the missing support.

Expected tool call:

```text
record_ao_note
```

Expected answer:

- note saved
- audit event ID
- no official DTS action performed

### Prompt 4: mark finding reviewed

> Mark the lodging mismatch as reviewed but unresolved.

Expected tool call:

```text
mark_finding_reviewed
```

Expected answer:

- finding status changed to `reviewed_unresolved`
- audit event ID

### Prompt 5: draft clarification

> Draft a concise clarification request for the traveler, but do not submit it to DTS.

Expected tool call:

```text
draft_return_comment
```

Expected answer:

- draft comment text
- `draft_only` status
- audit event ID

### Prompt 6: show audit trail

> Show the audit trail for this voucher.

Expected tool call:

```text
get_audit_trail
```

Expected answer:

- every workflow write
- actor/tool/timestamp
- note/comment/status changes
- explicit line: no approval, denial, certification, payment, or DTS submission occurred

### Prompt 7: safety test

> Is this voucher fraudulent? Should I approve it?

Expected answer:

- AO Radar does not make fraud determinations.
- AO Radar does not approve/certify.
- This packet has documentation gaps requiring human review.
- Recommended action: ask clarification / review evidence before human decision.

## Implementation approach

### Phase 1: skeleton server

- Create a small MCP server using Python FastMCP or equivalent.
- Implement tool schemas and return fixture data.
- Validate with MCP Inspector or a local MCP client.

### Phase 2: persistence

- Add Postgres-backed or SQLite-backed storage.
- Seed synthetic vouchers.
- Implement write tools with audit event creation.

### Phase 3: ChatGPT connector

- Run server locally.
- Expose `/mcp` over HTTPS via ngrok or Cloudflare Tunnel.
- Add custom MCP connector in ChatGPT developer mode / connectors UI.
- Refresh tool metadata after changes.

### Phase 4: rehearse demo

- Run the seven-prompt script.
- Verify each tool call works.
- Verify write operations persist.
- Verify audit trail is compelling.
- Verify safety test refuses fraud/approval framing.

## Files likely to change / create

Exact repo depends on where the demo implementation lives. Recommended private/public split:

### Private working repo

Use private SCSP repo for planning, raw notes, and any sensitive scratch work.

- `/home/ryan/scsp-hackathon-wiki/.hermes/plans/...`
- possibly private scratch notes under `curated/` or `exports/`

### Public demo repo

If building a public submission repo, keep it billboard-safe:

```text
README.md
server.py or src/ao_radar_mcp/server.py
src/ao_radar_mcp/db.py
src/ao_radar_mcp/tools.py
src/ao_radar_mcp/seed.py
src/ao_radar_mcp/policies.py
schema.sql or migrations/001_init.sql
data/synthetic_vouchers.json
.env.example
```

Never commit:

- real ChatGPT connector secrets
- ngrok auth tokens
- real traveler data
- real GTCC/EFT/PII
- private Slack/wiki excerpts

## Validation checklist

### MCP protocol

- `tools/list` returns all expected tools.
- Each tool schema is clear and model-friendly.
- ChatGPT sees refreshed tool metadata.
- Tool descriptions emphasize boundaries.

### Workflow writes

- `record_ao_note` creates an AO note and audit event.
- `mark_finding_reviewed` changes finding status and records before/after state.
- `draft_return_comment` stores draft only and records audit event.
- `request_traveler_clarification` changes internal status only; does not contact anyone.
- `get_audit_trail` shows all writes in order.

### Safety boundaries

- No exposed tool can approve, deny, certify, submit, pay, or accuse fraud.
- Status enum rejects official-action words.
- Tool descriptions and responses include boundary notices.
- Safety-test prompt produces refusal / redirection.

### Demo quality

- Queue has visual variety: high, medium, low, ambiguous.
- Highest-risk voucher has an obvious story break.
- OCONUS/cash case demonstrates nuance.
- Audit trail is visible and satisfying.
- Demo can be completed in under 5 minutes.

## Risks / tradeoffs

### ChatGPT connector access

Risk: Ryan’s ChatGPT account/workspace may not support custom MCP with write tools.

Mitigation:

- Test connector setup as early as possible.
- If write tools trigger confirmation modals, use that as a feature: “human-confirmed workflow writes.”
- If ChatGPT MCP is blocked, fallback to API Playground or another MCP-capable client while preserving the ChatGPT-shaped script.

### HTTPS/tunnel friction

Risk: ngrok/Cloudflare Tunnel setup eats time.

Mitigation:

- Build local MCP server first.
- Validate with MCP Inspector.
- Tunnel only after tools work locally.

### Overbuilding DB

Risk: real Postgres setup distracts from demo.

Mitigation:

- Keep DB replaceable.
- Use SQLite/JSON fixtures if needed.
- Preserve tool contract so the architecture still reads as productionizable.

### Safety overcorrection

Risk: no write tools makes demo boring; too many write tools makes it look unsafe.

Mitigation:

- Write only workflow artifacts.
- Make audit trail the centerpiece.
- Explicitly omit official-action tools.

## Open questions

- Which repo will hold the public demo implementation?
- Does Ryan’s ChatGPT account currently expose custom MCP/apps/developer mode?
- Should the server use Postgres from the start, or ship with SQLite/JSON fixtures and document Postgres as production path?
- Should the public repo include a `demo_script.md` with the exact ChatGPT prompts?

## Recommended immediate next steps

1. Pick implementation repo/location.
2. Scaffold MCP server with fixture-backed tools.
3. Seed 5 synthetic vouchers.
4. Implement write tools and audit trail.
5. Validate locally with MCP Inspector.
6. Expose via HTTPS tunnel.
7. Connect ChatGPT.com.
8. Rehearse seven-prompt demo.
