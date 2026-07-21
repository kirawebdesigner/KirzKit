# Technical Specification

## Architecture

KirzKit is a file-based, portable agent operating system. The repository is
the source pack; installation synchronizes it to a global brain, and project
initialization copies the active brain into `.agent/`.

## Components

- `SKILL.md`: master routing and quality policy.
- `agents/`: specialist personas and agency agents.
- `skills/`: modular capability packs.
- `workflows/`: command-style repeatable procedures.
- `references/`: supporting operating knowledge.
- `scripts/`: PowerShell installation, initialization, synchronization, and
  doctor commands.
- Activation files: `CLAUDE.md`, `GEMINI.md`, `PROMPT.md`, and tool-specific
  configuration.

## Runtime Contract

The orchestrator follows `intent → classification → route → plan → execute →
validate → report`. It preserves user work, verifies dependencies, and reports
checks that could not run.

## UI Foundation

For new React UI without an existing mandated system, use Astryx with a
project-approved theme. Install `@astryxdesign/core` and a theme only after
checking `package.json`; validate beta compatibility and accessibility.
