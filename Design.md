# Design System and UX Guidelines

## Operating Design

KirzKit itself is tool-agnostic and portable. Its user experience is the
clarity of its routing, activation, validation, and reporting.

## Frontend Default

`design-taste-frontend` is the primary design authority for landing pages,
portfolios, and redesigns. It requires a brief-informed Design Read and uses
`DESIGN_VARIANCE`, `MOTION_INTENSITY`, and `VISUAL_DENSITY` to guide decisions.

## Component Default

New React interfaces should prefer Astryx when there is no existing or
mandated design system. Use one system per project, preserve accessibility,
support dark mode where required, and validate beta dependencies.

## Quality Rules

- Avoid generic AI defaults and unintentional template repetition.
- Keep typography, palette, shape, spacing, and motion coherent.
- Support keyboard use, reduced motion, loading, empty, and error states.
- Validate responsive behavior and visual output before delivery.
