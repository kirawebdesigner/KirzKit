# AI Coding Guardrails

## Scope and Safety

- Preserve existing user changes and local repository instructions.
- Keep changes minimal and within the requested scope.
- Do not silently install or trust third-party skills or packages.
- Ask only when ambiguity materially changes the outcome.

## Routing

- Normalize intent, classify the task, choose the smallest specialist route,
  and add planning only when complexity warrants it.
- Use `ponytail` as the default simplification filter.
- For frontend, use Taste Skill first and Astryx for new React components when
  no existing system takes precedence.

## Implementation

- Verify `package.json` before importing dependencies.
- Preserve one design system per project.
- Prefer accessible, typed, composable components.
- Keep secrets out of source and logs.

## Validation

- Run relevant tests, lint, type checks, security, accessibility, browser,
  render, screenshot, or file checks.
- Never claim a check passed if it did not run.
- Report exact limitations and residual risk.
