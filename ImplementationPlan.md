# Implementation Plan

## Phase 1: Core Operating Model

- [x] Maintain the master orchestrator skill.
- [x] Maintain specialist agents, skills, workflows, and references.
- [x] Document the intent-to-report lifecycle.

## Phase 2: Installation and Bootstrap

- [x] Provide install and synchronization scripts.
- [x] Provide project initialization.
- [x] Provide doctor validation.

## Phase 3: Capability Quality

- [x] Add frontend Taste Skill routing.
- [x] Add Astryx component guidance for React projects.
- [ ] Keep generated capability counts and maps synchronized automatically.

## Phase 4: Verification and Release

- [ ] Add automated Markdown and frontmatter validation.
- [ ] Add CI coverage for install, init, sync, and doctor flows.
- [ ] Add smoke tests for activation files across supported agents.

## Phase 5: Natural-Language Intent Routing

- [x] Make conversational intent understanding and automatic capability selection the default operating model.
- [x] Align activation prompts and orchestrator guidance around proportional planning and blocking-only clarification.
- [x] Generate an `AGENTS.md` instruction block during project initialization while preserving existing user-authored content.
- [ ] Add platform-specific auto-load smoke tests for supported IDEs.
