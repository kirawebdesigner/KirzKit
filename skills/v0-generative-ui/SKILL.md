---
name: v0-generative-ui
description: Building interfaces that change dynamically based on AI output. Use for building "Magic" UIs, chat-based apps, and adaptive dashboards.
allowed-tools: Read, Write, Edit, Glob, Grep, Bash
---

# v0 Generative UI (Adaptive Interfaces)

> **"The UI is the message."**
> **Philosophy:** Interfaces should be as flexible as the AI that drives them.

---

## ✨ The "Generative" Pattern
1. **Request**: User asks for something complex (e.g., "Show me a chart of my sales").
2. **Analysis**: AI identifies the need for a specific UI component (e.g., `<SalesChart />`).
3. **Delivery**: AI returns a tool call with the data for that component.
4. **Render**: The UI dynamically renders the component inside the chat/dashboard.

---

## ✅ Best Practices
- ✅ **Component Registry**: Maintain a strict list of components the AI is allowed to "invoke."
- ✅ **Safe Data Mapping**: Sanitize and validate data before passing it to dynamic components.
- ✅ **Loading States**: Show a "Skeleton" of the UI component while the data is loading.
- ✅ **Interactivity**: Ensure generative components are fully interactive (e.g., clickable chart bars).

---

## ❌ Anti-Patterns
- ❌ **Hallucinated Components**: AI trying to call a component that doesn't exist.
- ❌ **Security Risk**: Never allow the AI to send raw script tags or dangerous HTML.
