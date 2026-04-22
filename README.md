# KirzKit

KirzKit is a local AI operating layer for builders who want their coding agents to plan better, execute with structure, and reuse a serious project brain instead of starting from zero every time.

It installs a project-local `.agent` system with specialist personas, reusable skills, workflow guides, and activation files so tools like Claude, Gemini, Codex, and other agent runners can work with a stronger operating model.

## Why KirzKit Exists

Most AI coding sessions fail for predictable reasons:
- no project memory
- no stable workflow
- no reusable specialist context
- weak planning before execution
- inconsistent outputs across tools

KirzKit solves that by giving each project a deployable AI brain:
- specialist agents
- modular skill packs
- workflow-driven execution
- project activation docs
- validation-first operating rules

The result is not "just prompts." It is a repeatable build system for AI-assisted work.

## What KirzKit Is

KirzKit is:
- a reusable `.agent` toolkit
- a project bootstrap layer for AI workflows
- a plan-first execution system
- a way to make agents more consistent across projects

KirzKit is not:
- a frontend framework
- a backend framework
- a runtime package your app depends on
- a replacement for engineering judgment or validation

## Core Idea

KirzKit works in three layers:

1. `source brain`
   - the toolkit repository itself
2. `global brain`
   - your installed shared copy, usually at `~/.agent`
3. `project brain`
   - the `.agent` directory deployed into a specific project

That project-local brain is what your AI should actually use when building.

## What You Get

KirzKit provides:
- specialist agent personas for architecture, frontend, backend, database, testing, security, and planning
- modular skills that can be loaded on demand
- workflow guides like `/plan`, `/debug`, `/deploy`, `/test`, and design-focused flows
- activation files for different model ecosystems
- a generated `MASTER_KNOWLEDGE_MAP.md` for capability discovery
- a generated `ACTIVATE_KIRZKIT.md` handoff file for agents that do not auto-load `.agent`
- bootstrap and doctor commands for setup and validation

## Default Operating Loop

KirzKit is designed around this loop:

1. refine the request
2. start with `/plan`
3. identify the right agents and skills
4. execute with direct action where safe
5. validate before calling the work complete

This is the difference between "AI autocomplete" and "AI operator."

## Quick Start

Clone the repository and install KirzKit globally:

```powershell
git clone https://github.com/kirawebdesigner/KirzKit.git
cd KirzKit
powershell -ExecutionPolicy Bypass -File .\scripts\install_kirzkit.ps1
```

Then bootstrap any project:

```powershell
cd C:\path\to\your-project
C:\Users\kirub\kirzkit_openclaw\kirzkit\scripts\kirzkit.ps1 init
C:\Users\kirub\kirzkit_openclaw\kirzkit\scripts\kirzkit.ps1 doctor
```

After initialization, your project will contain:

- `.agent/agents`
- `.agent/skills`
- `.agent/workflows`
- `.agent/references`
- `.agent/MASTER_KNOWLEDGE_MAP.md`
- `.agrules`
- `ACTIVATE_KIRZKIT.md`

## CLI

KirzKit currently includes these core commands:

```powershell
.\scripts\kirzkit.ps1 help
.\scripts\kirzkit.ps1 sync
.\scripts\kirzkit.ps1 init
.\scripts\kirzkit.ps1 doctor
```

### Command Overview

- `help`
  - shows commands and current source counts
- `sync`
  - copies the latest source brain into your global `~/.agent`
- `init`
  - deploys KirzKit into the current project
- `doctor`
  - validates source, global install, and project-local setup

## How To Use It With AI Tools

### If the tool auto-loads `.agent`

Work inside the initialized project and start with:

```text
/plan
```

### If the tool does not auto-load `.agent`

Use the generated `ACTIVATE_KIRZKIT.md` file or paste a prompt like this:

```text
Load KirzKit from this project's `.agent` folder. Use `.agent/MASTER_KNOWLEDGE_MAP.md` as the capability index. Start in `/plan` mode, identify the relevant specialist agents and skills, then proceed with implementation only after the plan is clear.
```

### Model-specific entry files

- `GEMINI.md`
- `CLAUDE.md`
- `SKILL.md`
- `PROMPT.md`

These help different model environments adopt the KirzKit operating style.

## Example Use Cases

KirzKit is especially useful for:
- SaaS product building
- React + Supabase apps
- fast planning and architecture work
- design-to-code workflows
- structured bug fixing and debugging
- reusable AI workflows across many projects
- local-first solo founder development

## Project Structure

```text
KirzKit/
├── agents/        # Specialist agent personas
├── skills/        # Modular skill packs
├── workflows/     # Command-style workflow guides
├── references/    # Supporting docs for agents, skills, workflows
├── scripts/       # Install, bootstrap, validation, and support scripts
├── assets/        # Templates and supporting assets
├── GEMINI.md      # Gemini-facing root persona
├── CLAUDE.md      # Claude-facing root persona
├── SKILL.md       # Root skill definition
└── PROMPT.md      # Generic activation and operating prompt
```

## Philosophy

KirzKit is built on a few hard rules:
- plan before implementation
- use specialist context instead of vague general prompts
- keep project brains local and portable
- treat AI as an orchestrator, not a source of truth
- validate outputs before trusting them

## Recommended GitHub About

Use this in the repo About field:

`Local AI operating system for coding agents: specialist personas, reusable skills, workflow-driven project brains, and plan-first execution for high-leverage software building.`

Suggested topics:

`ai-agents`, `developer-tools`, `prompt-engineering`, `automation`, `codex`, `claude`, `gemini`, `workflow`, `productivity`, `saas`, `supabase`, `agentic-ai`

## Notes

- counts of agents, skills, and workflows change over time
- the generated `MASTER_KNOWLEDGE_MAP.md` is the best source of current installed capability truth
- KirzKit works best when the AI environment can read the project-local `.agent` directory directly

Built by Kirubel Daniel.
