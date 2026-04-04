---
name: n8n-automation
description: Complex workflow automation, AI agent orchestration, and system integration with n8n. Use when building lead-gen agents, connecting APIs, or orchestrating multi-step AI tasks.
allowed-tools: Read, Write, Edit, Glob, Grep, Bash, HTTP
---

# n8n Automation & AI Agent Orchestrator

> **Connect everything. Automate everything.**
> **Philosophy:** Robust error handling, modular workflows, and smart AI routing.

---

## 📑 Content Map

| Section | Topic | Focus | When to Read |
| :--- | :--- | :--- | :--- |
| **1** | **Workflow Design** | Nodes, Logic, Loops | Designing new automation flows |
| **2** | **AI Agent Nodes** | Tool calling, RAG, Memory | Building AI-first workflows |
| **3** | **Error Handling** | Retries, Error Trigger, Logic | Making automations reliable |
| **4** | **Custom Nodes** | HTTP Request, JS Node | When a standard node doesn't exist |
| **5** | **Webhook Security** | Keys, Headers, IP filtering | Protecting your automation endpoints |

---

## 🚀 The "Lead Gen" Pattern

1. **Trigger**: Webhook or CRON.
2. **Research**: AI Agent searches Google/LinkedIn.
3. **Draft**: LLM creates personalized message.
4. **Action**: Send email/Discord/Slack notification.
5. **Log**: Save outcome to Supabase or Google Sheets.

---

## ✅ Best Practices

- ✅ **Modular Workflows**: Use the "Execute Workflow" node for reusable logic.
- ✅ **Error Triggers**: Always have a catch-all "Error Workflow" for alerts.
- ✅ **Wait Nodes**: Use `Wait` nodes to avoid API rate limits.
- ✅ **Expression Logic**: Use modern JS expressions for complex mapping.

---

## ❌ Anti-Patterns

- ❌ **God Workflows**: One massive flow that is hard to debug.
- ❌ **Hardcoded Keys**: Never paste API keys in nodes; use Credentials.
- ❌ **No Logs**: Forgetting to log results for auditing.
