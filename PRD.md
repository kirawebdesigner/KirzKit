# Product Requirements Document

## Product

KirzKit is a portable operating layer that helps AI coding agents plan,
route, execute, and validate complex work with specialist context.

## Problem

General-purpose agents often skip planning, choose the wrong expertise, lose
context between sessions, and declare work complete without adequate checks.

## Users

- Solo builders who want repeatable agent workflows.
- Teams that need consistent quality gates across projects.
- AI agents that need discoverable skills, agents, workflows, and references.
- Builders who want to express rough goals conversationally and let the agent
  choose an effective route without learning KirzKit's capability catalog.

## MVP Scope

- Installable shared brain and project initialization.
- Master orchestrator skill and capability map.
- Specialist agents, modular skills, and repeatable workflows.
- Doctor and validation commands.
- Routing for engineering, UI, research, security, infrastructure, and
  artifact-generation tasks.
- Natural-language intent normalization, relevant capability discovery, and
  automatic proportional routing as the default interaction model.
- IDE project-instruction entrypoints that make routing automatic where the
  host supports instruction auto-loading, with a clear manual fallback where
  it does not.
- Taste Skill as the frontend design authority and Astryx as the preferred
  React component foundation when no existing system takes precedence.

## Success Criteria

Users can initialize a project, describe a goal naturally, reach a relevant
specialist route when the host supports it, and receive an appropriately
validated result without repeating setup instructions.

Users can describe an outcome in ordinary language without naming skills,
agents, or workflows; the installed orchestrator infers a useful route, asks
only blocking questions, and validates its work. Supported IDE entrypoints
activate this behavior automatically when the IDE loads project instructions.
