# Technical Specification

## Architecture

KirzKit is a file-based operating layer for AI agents, not a standalone
orchestration runtime. The repository is the source pack; installation syncs
it to a global `~/.agent` brain, and project initialization copies capabilities
into the target project's `.agent/` directory and writes activation guidance.
The host IDE/model must load those instructions and provide any execution or
delegation tools the agent uses.

## Components

- `SKILL.md`: master intent-routing and quality policy.
- `agents/`: specialist agent personas.
- `skills/`: modular capability packs.
- `workflows/`: command-style repeatable procedures.
- `references/`: supporting operating knowledge.
- `scripts/`: PowerShell installation, initialization, synchronization, and
  doctor commands.
- `AGENTS.md`, `CLAUDE.md`, `GEMINI.md`, `.cursorrules`, and `PROMPT.md`:
  repository instruction entrypoints for compatible hosts or manual activation.
- `.agent/MASTER_KNOWLEDGE_MAP.md`: generated index of capabilities installed
  in a project; distinct from source `INVENTORY.md`.

## Runtime Contract

When the host loads KirzKit instructions, the agent interprets natural-language
intent, infers constraints and acceptance checks, selects the smallest relevant
capability route, plans in proportion to complexity and risk, executes within
host capabilities, validates proportionally, and reports evidence and limits.
It asks only when ambiguity blocks safe/useful progress or materially changes
the outcome. Automatic instruction loading and multi-agent delegation are
host-dependent and are not guaranteed by KirzKit itself.

## UI Foundation

For new frontend work, the taste skill provides visual direction. Astryx is an
optional beta component candidate for React projects, not a required runtime
dependency. Preserve project conventions and validate compatibility and
accessibility before adopting it.
