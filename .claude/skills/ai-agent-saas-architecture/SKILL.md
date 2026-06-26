---
name: ai-agent-saas-architecture
description: Architectural patterns for building AI Agent SaaS platforms. Prompt chaining, tool calling, streaming UI, and token-usage-based billing.
allowed-tools: Read, Write, Edit, Glob, Grep, Bash
---

# AI Agent SaaS Architecture

> **"Build the brain, then the body."**
> **Philosophy:** Asynchronous, observable, and agentic by design.

---

## 🧠 The "Agentic" Stack
- **Orchestration**: LangChain, Vercel AI SDK, or custom prompt chains.
- **Memory**: Vector DBs (Supabase pgvector) + Session History.
- **Tools**: Serverless functions (Edge Functions) that agents can call.
- **UI**: Streaming components (Generative UI) to show the agent's "thought process."

---

## 🚀 The "Agent SaaS" Checklist
- [ ] **Streaming Responses**: Don't make the user wait; stream text and UI.
- [ ] **Thought Trace**: Show what the agent is doing (e.g., "Searching...", "Calculating...").
- [ ] **Human-in-the-loop**: Allow users to approve critical tool calls (like Stripe payments).
- [ ] **Token Guard**: Monitor and limit token usage per user to protect margins.

---

## ✅ Best Practices
- ✅ **Optimistic UI**: Update the UI immediately while the LLM is thinking.
- ✅ **Fallbacks**: Always have a non-AI fallback for critical features.
- ✅ **Structured Output**: Use Zod/JSON schema to ensure the LLM returns valid data.
- ✅ **Observability**: Log every prompt/response for debugging and fine-tuning.
