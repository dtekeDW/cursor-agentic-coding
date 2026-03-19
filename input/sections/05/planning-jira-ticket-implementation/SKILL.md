---
name: jira-code-planning
description: Creates a deep-dive plan for a JIRA ticket by fetching ticket data, analyzing the codebase, and producing a comprehensive, code-free implementation strategy. Use when the user asks for a plan for a JIRA issue or ticket.
---

# JIRA Ticket Code Implementation Planning

Deep-dive on the JIRA issue referenced in the user's prompt (JIRA ticket number; e.g. `MOP-123`).  
Analyze the ticket data thoroughly, identify the underlying problem, and generate a clear, structured code implementation plan to address it.

Do **not** write code or make any code changes.  
This task is **planning only**.

Your response must include:
- A clear explanation of the problem
- Key findings or contributing factors
- A comprehensive, step-by-step plan to resolve the issue

If no JIRA ticket number or URL is referenced in the user's prompt, **prompt the user to provide it and stop**.

The output must be in **Markdown**.

## Steps

1. **Validate input**
    - Check whether the user provided a valid JIRA ticket number or URL.
    - If missing or ambiguous, ask the user to provide it and **stop immediately**.

2. **Fetch ticket data**
    - Execute the script from the workspace root (path relative to this skill):
      ```bash
      input/sections/05/planning-jira-ticket-implementation/scripts/get-jira-issue.sh <jira-ticket-number>
      ```
    - Or, if this skill is used inside a monorepo that has the script at `scripts/jira/get-jira-issue.sh`, use that path instead.
    - Ensure the script completes successfully and returns valid JSON.

3. **Parse and normalize ticket fields**
    - Extract the following fields from the JSON response:
        - Summary
        - Description
        - Story (`customfield_10069`)
        - Acceptance criteria (`customfield_10070`)
    - Normalize formatting (lists, headings, punctuation) for readability.
    - Rephrase content **only when it improves clarity**, removes ambiguity, or resolves grammatical issues.
    - Keep the original intent and requirements intact.

4. **Discover Figma references and pull MCP design context**
    - Scan all parsed ticket text fields for Figma links, including:
        - `https://figma.com/design/...`
        - `https://www.figma.com/design/...`
        - `https://figma.com/file/...`
        - `https://www.figma.com/file/...`
        - Links that include `node-id=...`
    - If one or more Figma links exist:
        - Extract `fileKey` and `nodeId` from each URL when available.
        - If a URL has no `nodeId`, treat it as file-level context and note the limitation.
        - Try Figma MCP directly (without asking the user first) by calling:
            - `get_design_context` when `nodeId` is available (primary source)
            - `get_metadata` when structure-level insight is needed
            - `get_variable_defs` when tokens/variables could influence implementation
        - Summarize key design constraints relevant for implementation planning:
            - Layout/structure expectations
            - Component naming clues
            - Token/variable usage that may map to existing UI system patterns
    - If Figma MCP retrieval fails (auth, permissions, invalid URL, missing node):
        - Continue the planning workflow without blocking.
        - Explicitly document what failed and why in the output.
        - Keep planning grounded in JIRA text + codebase analysis.
    - If no Figma links are found:
        - Continue normally and state that no Figma context was available.

5. **Correct and align technical references**
    - Review all references in the ticket to:
        - Content elements
        - Components
        - Modules
        - Packages
    - Fix typos, naming inconsistencies, and outdated references.
    - Replace generic or incorrect names with the **actual code component names** as they exist in the repository (e.g. Vue component filenames, package names).
    - Call out any mismatches between ticket wording and real code structure explicitly.

6. **Present ticket context**
    - Format the cleaned and clarified ticket data into a clear **Ticket context** section.
    - Ensure the entire response is written in **English**, even if the original ticket is partially or fully in another language.
    - Include a direct link to the JIRA ticket.
    - Explicitly note missing, unclear, or conflicting requirements.

7. **Analyze the problem**
    - Review the clarified ticket context critically.
    - Explain the problem in your own words, based on the refined understanding.
    - Identify implicit expectations, edge cases, and potential misinterpretations.
    - Assess whether the issue appears valid, incomplete, or incorrectly scoped.
    - Formulate root-cause hypotheses before inspecting the code.

8. **Analyze the codebase**
    - Locate the relevant implementation areas based on the corrected ticket references.
    - Trace the full behavior flow (data → logic → UI/output) until the issue is fully understood.
    - When a **content element** is mentioned, start with related Vue components in:
        - `**/content-elements/**`
    - Identify and list relevant files, modules, and dependencies using concrete file paths.

9. **Determine package ownership**
    - Identify the owning package(s) using their `package.json` names.
    - Distinguish clearly between:
        - Packages requiring **direct updates**
        - Packages that may be **indirectly impacted**
    - Avoid listing downstream consumers unless explicitly required by the planning rules.

10. **Define scope and targets**
    - Specify the exact components, modules, or services involved.
    - Clearly state what is **in scope** and **out of scope** for this ticket.
    - Document assumptions, ambiguities, or unresolved questions that affect planning certainty.

11. **Create the implementation plan**
    - Start with **edit locations**: list packages and file paths first.
    - Describe required changes step by step, explaining **what** to change and **why**.
    - Map each acceptance criterion to a concrete planned change or explicitly flag gaps.
    - Separate:
        - Direct implementation work
        - Secondary work (tests, documentation, migrations)

12. **Assess cross-cutting concerns**
    - Identify and briefly evaluate:
        - Performance implications (core web vitals, user experience, etc.)
        - Security considerations
        - Backwards compatibility or migration requirements
    - Note mitigations, safeguards, or validation strategies where relevant.

13. **Define validation and QA**
    - Specify tests to add, update, or execute.
    - Describe required manual QA flows or review steps.
    - Include clear acceptance-criteria verification steps.

14. **Finalize the plan**
    - Ensure the output is concise, well-structured, and fully Markdown-formatted.
    - Include references to the source JIRA ticket and any related discussions.
    - Double-check that the response is **planning-only** and contains **no code**.

## Package Boundary Rules

Always show package-level ownership using the `package.json` names when applicable; e.g.:
- **@denkwerk/motel-one**: repository-level files (e.g. `package.json`, `.gitlab-ci.yml`, `turbo.json`)
- **@one/webapp**: `apps/webapp/**`
- **@one/jobs**: `apps/jobs/**`
- **@one/ui**: `packages/ui/**`
- **@one/nuxt-layer**: `packages/nuxt-layer/**`
- **@one/nuxt-layer-marketing**: `packages/nuxt-layer-marketing/**`
- **@one/shared-types**: `packages/shared-types/**`

If additional packages appear, use their `package.json` name where possible; otherwise use the directory name (e.g. `packages/i18n`).

When planning changes:
- Call out which packages must probably be updated and why, based on the ticket context and codebase analysis.
- Focus on direct updates, not dependency graph side effects.
- When updating an **@one/ui** component, do not mention **@one/webapp** or the other nuxt applications in the apps directory as a downstream consumer.
- Use file paths when possible. Include line numbers when possible.

## @one/ui component categorization

When changes occur in `packages/ui`:
- Identify the component category for any changed Vue component within:
  - Elements
  - Modules
  - Navigation
  - Overlay
- Name the component by its filename without the `.vue` suffix.
- If stories or related files change alongside a component, group them under the component name.
- When an **element** component changes, explain its effect on any impacted modules and why the change is required.

## Plan quality guidelines

A good implementation plan must:
- Start with the **edit locations**: list packages and file paths before any change details.
- Be explicit about **what to change** and **why**, tied to the ticket requirements.
- Separate **direct updates** from **secondary considerations** (tests, docs, risks).
- Include **acceptance-criteria mapping**: each requirement has a planned change or a noted gap.
- Call out **migration/compatibility** impacts if any public API, schema, or UI contract changes.
- Specify **validation steps**: concrete tests to add/run and any manual QA flows.
- Flag **performance/security** risks with a mitigation note when applicable.
- Avoid speculative work; only plan what is justified by the ticket and codebase analysis.

## Section expectations

Use these sections in the output and follow the guidance for each:
- **Ticket context**: Summarize the ticket fields clearly and neutrally; avoid adding assumptions; include the ticket link in the headline.
- **Design context (Figma)**: List discovered Figma links and summarize MCP-derived findings; if MCP failed or no links were present, state that explicitly.
- **Problem analysis**: Explain the problem and likely root cause; include validity checks and why the issue exists.
- **Codebase analysis**: Identify where the behavior is implemented; list relevant files, modules, and flows with paths.
- **Package ownership and targets**: State which packages must be updated and why; list primary files and direct updates only.
- **Plan**: Start with edit locations first, then detail changes; map acceptance criteria to planned changes.
- **Risks and considerations**: Call out performance, security, compatibility, testing, and documentation impacts with brief mitigation notes.

## Output format

Output must be **well-structured**, **concise** Markdown content. Use bullet points, headlines, sections, links, file paths and **bold** where it adds clarity without overdoing it.

Use this structure:

```markdown
# [MOP-123](https://motel-one.atlassian.net/browse/[TICKET]) — [Short title]

## Ticket context
- Summary: ...
- Description: ...
- Story: ...
- Acceptance criteria: ...

## Problem analysis
[Explain the issue, root cause hypotheses, and validity checks]

## Design context (Figma)
- Figma links found: ...
- MCP status: success | partial | unavailable
- Relevant design findings for implementation planning: ...

## Codebase analysis
[Relevant files, modules, flows, dependencies]

## Package ownership and targets
- **Package**: ... — **Why**: ...
- **Primary components/modules**: `path/to/file.vue`, `path/to/module.ts`
- **Direct updates required**: ...

## Plan
1. **Guide to edit locations**: list the key packages and file paths first.
2. **Change details**: describe what to update and how.
3. **Validation**: tests, docs, and risk checks.

## Risks and considerations
- Performance: ...
- Security: ...
- Backwards compatibility: ...
- Testing: ...
- Documentation: ...
```

IMPORTANT: ONLY CREATE A PLAN. DO NOT WRITE ANY CODE.
