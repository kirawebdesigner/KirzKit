---
name: posthog-product-analytics
description: Advanced product analytics, feature flags, and session recordings. Use when tracking user behavior, running A/B tests, or identifying friction in your UI.
allowed-tools: Read, Write, Edit, Glob, Grep, Bash
---

# PostHog Product Analytics (The Data Brain)

> **"Watch how users actually use your product."**
> **Philosophy:** Measure everything. Guess nothing. Ship faster with data.

---

## 📑 Content Map
- **Section 1**: Event Tracking (Autocapture vs. Custom Events)
- **Section 2**: Feature Flags & Remote Config
- **Section 3**: Session Recordings & Heatmaps
- **Section 4**: Funnels & Retention Analysis

---

## ✅ Best Practices
- ✅ **Event Naming**: Use `Object: Action` (e.g., `Button: Clicked`) for consistency.
- ✅ **Feature Flags**: Wrap new features in flags to enable "Dark Launches."
- ✅ **Privacy**: Anonymize sensitive user data before sending to PostHog.
- ✅ **Funnel Tracking**: Identify exactly where users drop off in your sign-up flow.

---

## ❌ Anti-Patterns
- ❌ **Tracking PII**: Never send passwords or credit card numbers in events.
- ❌ **Bloated Events**: Don't track every single mouse move; focus on high-value actions.
