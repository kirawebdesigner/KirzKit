# KirzKit

KirzKit is a local AI builder toolkit for bootstrapping project brains, specialist prompts, and reusable workflows. It is designed to install a project-local `.agent` directory so an AI environment can plan, orchestrate, and execute work with consistent operating rules.

KirzKit is not an application framework or runtime dependency. It is an instruction and tooling layer that sits around your project.

## What KirzKit Does

- installs a reusable project-local `.agent` brain
- provides specialist agent personas for frontend, backend, database, testing, security, and planning tasks
- ships modular skill packs and workflow guides
- generates a `MASTER_KNOWLEDGE_MAP.md` so the active project knows what is installed
- supports a plan-first workflow anchored on `/plan`

## Core Workflow

The intended execution loop is:

1. refine the request into a technical objective
2. start with `/plan`
3. map the relevant agents and skills
4. execute work in parallel where safe
5. verify before delivery

## Installation and Usage

Global install:

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\install_kirzkit.ps1
```

Project bootstrap:

```powershell
.\scripts\kirzkit.ps1 init
```

This deploys KirzKit into the current project by creating:

- `.agent/agents`
- `.agent/skills`
- `.agent/workflows`
- `.agent/rules`
- `.agent/scripts`
- `.agent/references`
- `.agent/assets`
- `.agent/MASTER_KNOWLEDGE_MAP.md`
- `.agrules`
- `ACTIVATE_KIRZKIT.md`

Validation:

```powershell
.\scripts\kirzkit.ps1 doctor
```

## Key Files

- `GEMINI.md`: Gemini-oriented root persona and operating rules
- `CLAUDE.md`: Claude-oriented root persona and operating rules
- `SKILL.md`: root skill metadata and execution guidance
- `PROMPT.md`: high-level prompting entrypoint
- `references/`: reference material for agents, skills, and workflows
- `scripts/`: helper scripts such as validation, preview, and skill ingestion

## Notes

- counts of agents, skills, and workflows change over time; use the CLI or generated knowledge map for current numbers
- KirzKit works best when the AI environment can read the project-local `.agent` folder
- if the environment does not auto-load `.agent`, point the AI to the root files and `MASTER_KNOWLEDGE_MAP.md`
- use `ACTIVATE_KIRZKIT.md` inside each initialized project as the handoff file for any AI tool

Built by Kirubel Daniel.
