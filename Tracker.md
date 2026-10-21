# Task Tracker

## Current Sprint: Intent Routing and Release Readiness

- [x] Integrate `design-taste-frontend` as the primary frontend design route.
- [x] Integrate Astryx as the preferred new React component foundation.
- [x] Document KirzKit's all-task operating lifecycle.
- [x] Add repository planning and governance documents.
- [x] Make natural-language intent routing the default interaction model.
- [x] Add a repeatable PowerShell project-rules smoke test to CI.
- [ ] Add full PowerShell sync/init/doctor integration tests.
- [ ] Add platform-specific IDE auto-load smoke tests.
- [ ] Normalize legacy frontmatter warnings and make required metadata fail validation.

## Bugs and Blockers

- Two skill packs currently warn about missing frontmatter names; see
  `python scripts/inventory.py --check` for exact paths.
- Repository-wide licensing and complete third-party provenance remain open
  owner decisions; see `PROVENANCE.md`.

## Follow-up

- Review generated inventory counts after capability changes.
- Audit upstream/legacy documentation and eliminate mismatched maintainer or
  installation claims before presenting it as KirzKit-owned policy.
- Decide repository-wide licensing and provenance/attribution requirements.
- Validate Astryx package compatibility before recommending it for production apps.
