# KirzKit

### Give your coding agent a specialist team, a repeatable workflow, and built-in quality gates.

[![GitHub stars](https://img.shields.io/github/stars/kirawebdesigner/KirzKit?style=for-the-badge&logo=github)](https://github.com/kirawebdesigner/KirzKit/stargazers)
[![Last commit](https://img.shields.io/github/last-commit/kirawebdesigner/KirzKit?style=for-the-badge&logo=git)](https://github.com/kirawebdesigner/KirzKit/commits/main)
[![PowerShell](https://img.shields.io/badge/setup-PowerShell-5391FE?style=for-the-badge&logo=powershell&logoColor=white)](./scripts/install_kirzkit.ps1)

KirzKit is a local AI orchestration layer for software builders. It equips Codex, Claude Code, Cursor, Antigravity, Gemini, and other agent runners with a project-local operating system for planning, routing, execution, and validation.

Instead of repeatedly telling an AI how to approach architecture, frontend work, security, testing, research, deployment, or design, you give it one reusable project brain.

> KirzKit is not another prompt collection. It is an operating model for turning a general-purpose coding agent into a structured delivery team.

## Why KirzKit?

AI coding tools are powerful, but their output often breaks down when a task needs more than code generation:

- context disappears between sessions
- planning is skipped
- the wrong specialist approach is used
- quality checks are inconsistent
- every project starts from zero

KirzKit gives your agent a consistent way to work:

| Without KirzKit | With KirzKit |
| --- | --- |
| One general-purpose assistant | An orchestrator that routes to specialist agents and skills |
| Repeated setup prompts | A reusable project-local `.agent` brain |
| Implementation starts immediately | Complex work begins with planning and architecture |
| Validation depends on the prompt | Testing, security, accessibility, and review checks are routed automatically |
| Knowledge is trapped in one chat | Workflows and operating rules travel with the project |

## What You Get

The repository currently includes:

- **26 specialist agents** covering architecture, frontend, backend, databases, security, testing, DevOps, product, design, growth, and more
- **200+ modular skills** for engineering, UI/UX, research, automation, infrastructure, content, video, diagrams, and product work
- **16 workflow guides** including `/plan`, `/debug`, `/deploy`, `/test`, `/preview`, and `/orchestrate`
- **multi-agent routing** that selects the right expertise for the task
- **validation-first guardrails** that require relevant checks before work is declared complete
- **model-specific activation files** for Codex, Claude Code, Cursor, Antigravity, Gemini, and other agent environments
- **project bootstrap and doctor commands** for installation and verification

Counts evolve as KirzKit grows. The generated `.agent/MASTER_KNOWLEDGE_MAP.md` is the source of truth inside an initialized project.

## How It Works

KirzKit uses three portable layers:

```text
KirzKit repository        ~/.agent                 your project/.agent
Source brain        →     Global brain       →     Active project brain
```

The active project brain contains the agents, skills, workflows, references, and rules your AI uses while building.

For a request such as:

```text
Build a secure, responsive SaaS dashboard with authentication and analytics.
```

KirzKit can route the work through:

```text
plan → architecture → product/UI → frontend → auth/security → testing → validation
```

You describe the outcome. KirzKit chooses the operating path.

## Quick Start

KirzKit currently provides a PowerShell setup workflow.

### 1. Clone and install

```powershell
git clone https://github.com/kirawebdesigner/KirzKit.git
cd KirzKit
powershell -ExecutionPolicy Bypass -File .\scripts\install_kirzkit.ps1
```

This synchronizes the shared KirzKit brain to `~/.agent`.

### 2. Initialize a project

Set the path to your KirzKit clone, move into any project, and initialize it:

```powershell
$KirzKit = "C:\path\to\KirzKit"
cd C:\path\to\your-project

& "$KirzKit\scripts\kirzkit.ps1" init
& "$KirzKit\scripts\kirzkit.ps1" doctor
```

Your project will receive:

```text
.agent/
├── agents/
├── skills/
├── workflows/
├── references/
├── MASTER_KNOWLEDGE_MAP.md
└── SKILL.md

.agrules
ACTIVATE_KIRZKIT.md
```

### 3. Activate KirzKit

If your AI tool loads project instructions automatically, start complex work with:

```text
/plan
```

Otherwise, point it to `ACTIVATE_KIRZKIT.md` or use:

```text
Load KirzKit from this project's `.agent` folder. Use
`.agent/MASTER_KNOWLEDGE_MAP.md` as the capability index. Start in `/plan`
mode, identify the relevant specialist agents and skills, execute with the
smallest safe solution, and validate the result before delivery.
```

## The KirzKit Operating Loop

1. **Understand** — turn the request into a concrete objective.
2. **Plan** — map scope, architecture, dependencies, and risks when needed.
3. **Route** — select the right agents, skills, and workflow.
4. **Execute** — take direct action and parallelize independent work safely.
5. **Validate** — run the relevant tests, reviews, scans, or visual checks.
6. **Deliver** — return a verified result instead of an untested suggestion.

The default philosophy is simple: **architect when necessary, keep the solution lean, and verify before claiming success.**

## Example Use Cases

KirzKit is designed for work that benefits from structured specialist judgment:

- building SaaS products and internal tools
- planning application architecture and APIs
- creating polished responsive interfaces
- reviewing accessibility and design systems
- debugging failures and improving test coverage
- designing databases, authentication, and backend systems
- performing security reviews and hardening
- automating deployment and infrastructure workflows
- generating research, reports, diagrams, presentations, and videos
- coordinating larger tasks across multiple AI agents

## CLI

```powershell
.\scripts\kirzkit.ps1 help
.\scripts\kirzkit.ps1 sync
.\scripts\kirzkit.ps1 init
.\scripts\kirzkit.ps1 doctor
```

| Command | Purpose |
| --- | --- |
| `help` | Show commands and current source-pack counts |
| `sync` | Refresh the shared brain at `~/.agent` |
| `init` | Deploy KirzKit into the selected project |
| `doctor` | Validate the source, global brain, and project setup |

## Repository Structure

```text
KirzKit/
├── agents/        # Specialist agent personas
├── skills/        # Modular capability packs
├── workflows/     # Repeatable command-style workflows
├── references/    # Supporting operating knowledge
├── scripts/       # Install, bootstrap, and validation tools
├── assets/        # Templates and supporting assets
├── SKILL.md       # Master orchestrator definition
├── CLAUDE.md      # Claude Code entry point
├── GEMINI.md      # Gemini entry point
└── PROMPT.md      # Generic activation prompt
```

## What KirzKit Is Not

KirzKit is not:

- a frontend or backend framework
- a runtime dependency for your application
- a replacement for tests, security review, or engineering judgment
- magic autonomy without oversight

It is the operating layer that helps your AI use those practices more consistently.

## Project Principles

- plan complex work before implementation
- route tasks to specialist context
- keep solutions as small as the problem allows
- store the AI operating brain with the project
- treat AI as an orchestrator, not a source of truth
- validate outputs before trusting them

## Contributing

Ideas, bug reports, improvements, new skills, and workflow contributions are welcome. Open an [issue](https://github.com/kirawebdesigner/KirzKit/issues) or submit a pull request.

## Support the Project

If KirzKit improves the way you build with AI:

1. **Star the repository**
2. **Share it with another builder**
3. **Open an issue with your workflow ideas**

[**⭐ Star KirzKit on GitHub**](https://github.com/kirawebdesigner/KirzKit)

Built by **Kirubel Daniel** for builders who want AI agents to operate with more structure, context, and accountability.
