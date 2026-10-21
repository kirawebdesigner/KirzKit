# KirzKit

### Describe the goal. KirzKit chooses the workflow.

KirzKit is a portable operating layer for AI coding agents. It helps an agent
turn a natural-language request—including rough, early-stage thoughts—into a
focused route through relevant skills and specialist guidance, then validate
and explain the result.

Users do not need to know the names of KirzKit's skills, agents, or workflows.
When project instructions are loaded, the agent should infer intent, select
only relevant capabilities, plan in proportion to complexity and risk, and ask
only when a decision genuinely blocks safe or useful progress.

> KirzKit is not an application framework, hosted service, or agent model. It is
> a local, inspectable collection of operating instructions, specialist
> context, workflows, references, and setup tools.

[![Validate KirzKit](https://github.com/kirawebdesigner/KirzKit/actions/workflows/validate.yml/badge.svg)](https://github.com/kirawebdesigner/KirzKit/actions/workflows/validate.yml)
[![GitHub stars](https://img.shields.io/github/stars/kirawebdesigner/KirzKit?style=flat&logo=github)](https://github.com/kirawebdesigner/KirzKit/stargazers)
[![Last commit](https://img.shields.io/github/last-commit/kirawebdesigner/KirzKit?style=flat&logo=git)](https://github.com/kirawebdesigner/KirzKit/commits/main)

## Why KirzKit

A capable coding agent can still miss the point of an unstructured request,
load irrelevant guidance, skip project context, or call work complete without
appropriate checks. KirzKit provides a reusable operating model so the user
can focus on the outcome while the agent handles the route.

| You provide | KirzKit aims to do |
| --- | --- |
| A goal in your own words | Infer the outcome, constraints, and useful first step |
| A project and its existing conventions | Discover the relevant local context and capabilities |
| A multi-part request | Route only the needed expertise and coordinate work when supported |
| An implementation or review request | Validate proportionally and report evidence and limits |

KirzKit does **not** guarantee autonomous execution in every IDE. It guides the
agent that loads its instructions; available tools, delegation, and automatic
instruction loading depend on the host environment.

## Quick start

KirzKit's current bootstrap is PowerShell-based and Windows-oriented. The
instructions themselves are files, but a cross-platform installer is not
provided or tested yet. Installation copies the shared brain to `~/.agent`;
project initialization then copies the brain into the project and creates
activation guidance.

You need Git and PowerShell to use the bootstrap scripts. Python 3 is used for
the repository inventory tooling.

### 1. Clone and sync the shared brain

```powershell
git clone https://github.com/kirawebdesigner/KirzKit.git
cd KirzKit
powershell -ExecutionPolicy Bypass -File .\scripts\install_kirzkit.ps1
```

### 2. Initialize your project

From your project directory, run the script in your KirzKit clone:

```powershell
$KirzKit = "C:\path\to\KirzKit"
Set-Location C:\path\to\your-project

& "$KirzKit\scripts\kirzkit.ps1" init
& "$KirzKit\scripts\kirzkit.ps1" doctor
```

Initialization creates or updates `.agent/`, `.agrules`,
`ACTIVATE_KIRZKIT.md`, and a managed block in `AGENTS.md`. Matching files
inside `.agent/` are copied with overwrite enabled; initialization does not
delete stale files. `.agrules` and `ACTIVATE_KIRZKIT.md` are regenerated.
Existing `AGENTS.md` content outside the marked block is preserved, and
rerunning initialization updates that block without duplicating it. Back up
existing generated files before initializing if you have local edits there.

### 3. Use it naturally

When your IDE loads the project instructions, describe what you want to
accomplish. For example:

> I have a rough idea for a booking app for local sports clubs. Help me work
> out a sensible first version and start building it in this project.

The agent should inspect the project, infer a useful next step, choose relevant
KirzKit guidance, and proceed. A durable plan is appropriate for substantial
or risky work, but `/plan` is not a prerequisite for every task.

If your host does not load the generated instructions automatically, point it
to `ACTIVATE_KIRZKIT.md` or use this prompt once:

```text
Use the KirzKit instructions installed in this project. Understand my goal
from natural language, choose relevant capabilities from
.agent/MASTER_KNOWLEDGE_MAP.md without asking me to name them, plan only when
complexity or risk warrants it, then act and validate.
```

## What gets installed

A project initialized with KirzKit receives a local brain under `.agent/` with
specialist agents, skill packs, workflows, references, and a generated
`MASTER_KNOWLEDGE_MAP.md`. The map is the index for the capabilities actually
installed in that project.

The source repository currently contains:

- **23 canonical top-level agent definitions** (plus additional nested and
  mirrored agents)
- **201 top-level skill packs** (plus nested variants and supporting material)
- **16 top-level workflow guides** (plus 19 nested guides)
- **228 nested agent definitions** and **1,583 nested skill variants**
- A generated, file-level [`INVENTORY.md`](./INVENTORY.md)

Counts are generated from the repository and can change. Run the inventory
check rather than relying on a copied count when validating a checkout.

## How routing works

```text
natural-language goal
        ↓
understand outcome, constraints, and context
        ↓
select the smallest relevant capability route
        ↓
plan if complexity or risk warrants it
        ↓
execute directly or delegate independent work when supported
        ↓
run relevant checks and report evidence
```

The master operating policy is [`SKILL.md`](./SKILL.md). Capability details
live in `agents/`, `skills/`, `workflows/`, and `references/`. The agent should
read only the guidance relevant to the current request—not load the entire
catalog by default.

For new frontend work, KirzKit's taste skill guides visual direction. Existing
project standards always take precedence. Astryx is an optional candidate for
new React interfaces when no component system is mandated; it is beta and
should be evaluated for compatibility and accessibility before adoption.

## IDE and runtime behavior

KirzKit is a set of instructions and files, not a universal IDE plugin. The
host must load the appropriate project instructions for automatic routing to
happen. This repository includes `AGENTS.md`, `CLAUDE.md`, `GEMINI.md`,
`.cursorrules`, and a generic `PROMPT.md`; initialized projects generate an
`AGENTS.md` block and a manual activation guide. Exact loading behavior and
agent/delegation features vary by tool and configuration.

| Host / entrypoint | What this repository provides | Auto-load status |
| --- | --- | --- |
| Host that reads `AGENTS.md` | Root guidance and a managed `AGENTS.md` block generated by `init` | Host-dependent; not yet covered by end-to-end IDE tests |
| Claude Code | `CLAUDE.md` in the KirzKit source repository | `init` does not create a target-root `CLAUDE.md`; use the activation guide unless your setup loads `AGENTS.md` |
| Gemini | `GEMINI.md` in the KirzKit source repository | `init` does not create a target-root `GEMINI.md`; use the activation guide unless your setup loads `AGENTS.md` |
| Cursor | `.cursorrules` in the KirzKit source repository | `init` does not create target-root Cursor rules; use the activation guide unless your setup loads `AGENTS.md` |
| Other hosts, including Codex or Antigravity | Generic `PROMPT.md` and generated activation guide | Manual/unverified unless your IDE confirms it loads a supported instruction file |

If an IDE does not automatically read its instruction file, configure its
project rules or use the activation guide. KirzKit cannot force an agent that
has not loaded its instructions to use the capability map.

## Commands

Run these commands from the KirzKit repository in PowerShell:

```powershell
.\scripts\kirzkit.ps1 help
.\scripts\kirzkit.ps1 sync
.\scripts\kirzkit.ps1 init
.\scripts\kirzkit.ps1 doctor
```

Check or regenerate the repository capability inventory with Python:

```powershell
python scripts/inventory.py --check
python scripts/inventory.py
```

`--check` verifies the generated inventory and core metadata. Legacy skill
packs currently produce metadata warnings; these are not all release-blocking
yet. GitHub Actions checks inventory freshness and changed-file whitespace,
and runs a Windows PowerShell smoke test for script parsing and repeatable,
user-content-preserving project-rule generation. CI does not yet run a full
brain sync/init/doctor cycle, user-project tests, or end-to-end IDE behavior
tests.

`doctor` currently prints diagnostic status and warnings; it is not yet a
strict machine-readable gate and may not return a failing exit code for every
missing installation file. Inspect its output rather than treating a zero exit
code alone as proof that the installation is complete.

## Repository map

```text
AGENTS.md                 Auto-loaded repository guidance where supported
SKILL.md                  Master intent router and quality policy
agents/                   Specialist personas
skills/                   Modular capability packs
workflows/                Repeatable task workflows
references/               Supporting knowledge
scripts/kirzkit.ps1       Sync, init, doctor, and help commands
scripts/inventory.py      Generated capability inventory and checks
CLAUDE.md                 Claude Code guidance
GEMINI.md                 Gemini guidance
.cursorrules              Cursor guidance
PROMPT.md                 Generic activation prompt
SECURITY.md               KirzKit vulnerability reporting policy
PROVENANCE.md              Third-party/adapted content requirements
.github/workflows/        Repository validation
```

## Safety and limitations

- KirzKit does not replace project tests, security review, or human judgment.
- A skill or agent file is guidance, not proof that the host can execute its
  suggested tool or workflow.
- Inspect third-party content before trusting or installing it; keep secrets
  out of repositories and logs.
- Preserve the project's existing architecture and conventions. Do not add
  dependencies or impose a preferred stack without a task-specific reason.
- Run checks appropriate to the change. Report what ran, what did not, and any
  remaining uncertainty.
- Multi-agent execution is optional and host-dependent; use it only where
  supported and where the work can be safely separated.
- The source repository is not itself a runtime sandbox. Review scripts and
  third-party skill content before execution or installation.
- For vulnerability reports, follow [`SECURITY.md`](./SECURITY.md); do not
  publish sensitive details in a public issue.

## Contributing

Issues, corrections, new capabilities, and workflow improvements are welcome.
Before submitting a pull request:

1. Keep changes focused and preserve source provenance where relevant.
2. Regenerate the inventory when agent, skill, or workflow content changes:
   `python scripts/inventory.py`.
3. Run `python scripts/inventory.py --check` and `git diff --check`.
4. On Windows PowerShell, run `./scripts/test_project_rules.ps1`.
5. Explain the behavior changed and any validation that could not be run.

Open [an issue](https://github.com/kirawebdesigner/KirzKit/issues) for bugs or
ideas, or submit a [pull request](https://github.com/kirawebdesigner/KirzKit/pulls).

## Provenance and license

KirzKit combines first-party, adapted, and mirrored material. See
[`PROVENANCE.md`](./PROVENANCE.md) for the intended provenance record and its
known gaps. Some bundled directories include upstream license or policy files;
their presence does not establish a license for the whole KirzKit repository.

There is currently no repository-wide `LICENSE` file. Do not assume that the
repository or bundled third-party materials are licensed for reuse or
redistribution. Review applicable upstream terms and attribution before
copying or redistributing content. Repository-wide licensing and complete
pack provenance remain open project decisions.

---

Built by **Kirubel Daniel** for builders who want AI agents to work with more
context, structure, and accountability.
