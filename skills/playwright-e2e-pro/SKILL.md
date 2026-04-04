---
name: playwright-e2e-pro
description: Industrial-grade end-to-end testing for web applications. Use when automating browser testing, checking critical user flows, or preventing regressions.
allowed-tools: Read, Write, Edit, Glob, Grep, Bash, Playwright
---

# Playwright E2E Pro (The Quality Guard)

> **"Test your app, not your users."**
> **Philosophy:** Reliable, fast, and cross-browser by default.

---

## 📑 Content Map
- **Section 1**: Test Scripting (Locators, Assertions, Actions)
- **Section 2**: Page Object Model (POM) for clean test architecture
- **Section 3**: CI/CD Integration (GitHub Actions)
- **Section 4**: Visual Regression Testing (Screenshots & Snapshots)

---

## ✅ Best Practices
- ✅ **User-Centric Locators**: Use `getByRole` or `getByText` to test like a human.
- ✅ **Isolation**: Ensure every test is independent and clean.
- ✅ **Parallel Execution**: Run tests in parallel to save time in CI.
- ✅ **Video Evidence**: Record videos of failing tests for easier debugging.

---

## ❌ Anti-Patterns
- ❌ **Hardcoded Waits**: Avoid `waitForTimeout`; use auto-waiting assertions instead.
- ❌ **Fragile Selectors**: Don't use long CSS paths or XPaths that break easily.
