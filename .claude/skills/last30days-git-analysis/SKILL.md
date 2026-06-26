---
name: last30days-git-analysis
description: Analyzes the last 30 days of git history to provide a summary of progress, velocity, and key changes. Use when onboarding to a project or reporting weekly progress.
allowed-tools: Read, Bash, Git
---

# Last 30 Days Git Analysis

> **"What actually happened?"**
> **Philosophy:** Data-driven progress tracking. Identify velocity, hot spots, and contributor impact.

---

## 🚀 The "Progress" Command
Run this to see the last 30 days of activity:
`git log --since="30 days ago" --oneline --graph --decorate --all`

---

## 📑 Content Map
- **Section 1**: Velocity Tracking (Commit frequency and volume)
- **Section 2**: Hotspot Analysis (Which files changed the most?)
- **Section 3**: Change Categorization (Features vs. Bugs vs. Refactors)

---

## ✅ Best Practices
- ✅ **Summarize by Feature**: Don't just list commits; group them by the value delivered.
- ✅ **Identify Technical Debt**: Look for files that are constantly being "fixed."
- ✅ **Velocity Trends**: Is the team moving faster or slower than last month?
