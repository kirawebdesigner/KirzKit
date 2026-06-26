---
name: intelligent-routing
description: Autonomous intent analysis and toolkit selection. Automatically maps user goals to specific agents, skills, and workflows within the Antigravity Kit.
allowed-tools: Read, Write, Edit, Glob, Grep, Bash
---

# Intelligent Routing & Orchestration

> **"Intent to Action, seamlessly."**
> **Philosophy:** The user defines the 'What', the AI defines the 'How'.

---

## 📑 Routing Logic (The "Brain")

1. **Extraction**: Identify keywords (e.g., "build", "fix", "design", "automate").
2. **Mapping**: 
   - **"build/SaaS"** → `app-builder`, `supabase-expert`, `stripe-payments`.
   - **"modern/sleek UI"** → `frontend-specialist`, `modern-sleek-ui-ux`, `framer-motion-master`.
   - **"AI/Agent"** → `prompt-architect`, `ai-agent-saas-architecture`, `n8n-automation`.
   - **"slow/performance"** → `performance-optimizer`, `nextjs-react-expert`.
3. **Activation**: Load the necessary `SKILL.md` files and adopt the relevant `AGENT.md` personas.

---

## ✅ Best Practices
- ✅ **Proactive Suggestions**: "To build this, I'm loading the Supabase and Stripe skills..."
- ✅ **Contextual Memory**: Remember the tech stack across turns.
- ✅ **Multi-Agent Coordination**: Use the `parallel-agents` skill for complex tasks.

---

## ❌ Anti-Patterns
- ❌ **Asking for Permission**: Don't ask "Should I use X?"; just say "I'm using X because..."
- ❌ **Over-loading**: Don't load 20 skills for a simple bug fix.
