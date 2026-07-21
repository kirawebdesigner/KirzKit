# Application Flow and User Journey

## Installation Flow

1. Clone KirzKit.
2. Run `scripts/install_kirzkit.ps1`.
3. The shared brain is synchronized to the global agent directory.
4. Run `scripts/kirzkit.ps1 init` inside a project.
5. The project receives `.agent/`, activation files, and the knowledge map.
6. Run `scripts/kirzkit.ps1 doctor` to verify the setup.

## Task Flow

```text
User request
  → normalize intent
  → classify task
  → select skills and agents
  → plan when needed
  → execute
  → validate
  → deliver with evidence
```

## Frontend Branch

For UI work, read the brief and apply the Taste Skill design read and dials;
then use an existing system or Astryx, implement accessibly, and run browser
and visual checks.
