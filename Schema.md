# Schema and Repository Relations

KirzKit has no application database in its core distribution. Its primary
schema is the repository and project-brain structure.

```text
Repository source pack
  ├── agents
  ├── skills
  ├── workflows
  ├── references
  └── scripts
        ↓ install/sync
Global brain
        ↓ init
Project .agent brain
```

## Relationships

- One repository contains many agents, skills, workflows, and references.
- One global brain is synchronized from one selected source pack.
- One project initialization consumes the global brain and creates one active
  project brain.
- The master skill routes one request to many specialist capabilities when
  their responsibilities are independent.

Generated project maps are derived artifacts; the source directories remain
the source of truth.
