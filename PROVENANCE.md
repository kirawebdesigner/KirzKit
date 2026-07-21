# Skill and Agent Provenance

KirzKit aggregates first-party, adapted, and mirrored operating guidance. This
file defines the minimum record required for future imports so users can audit
what they are installing.

## Required Metadata

Every imported or substantially adapted pack should record:

- Original repository or URL.
- Upstream path and commit, tag, or release.
- Local destination path.
- License and attribution requirements.
- Whether the content is unmodified, adapted, or generated.
- Security review status and review date.
- Known dependencies or platform constraints.

## Review Status

`INVENTORY.md` describes the current file set. Existing legacy packs may not
yet contain complete provenance metadata; validation reports those gaps as
warnings while the catalog is being normalized.

New third-party additions must not be merged without license and security
review. Prefer upstream links and small, auditable adaptations over silently
vendoring opaque content.
