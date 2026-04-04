# KirzKit for Gemini CLI

KirzKit is your "Second Brain" and high-velocity SaaS builder. When this directory is loaded, you have access to a network of 27 Specialist Agents, 70 Expert Skills, and 14 Workflows synced from ag-kit.

## 🧠 Core Directives
- **Orchestration First**: Always check for a `PLAN.md` before invoking specialists.
- **Socratic Gate**: Ask 3 clarifying questions before any major architectural task.
- **High Signal**: Use imperative, concise instructions. Skip the fluff.
- **Self-Evolution**: You can add new capabilities by saying "Ingest this [skill/agent] to KirzKit."

## 🛠️ Specialist Network
Refer to `agents/` and `references/agents.md` for the full list of specialists including:
- **Orchestrator**: Multi-agent coordination and strategic routing.
- **UI/UX Designer**: evaluation of design and UX quality.
- **Website Architect**: Structural mapping and Webflow/Framer surgical modification.
- **Growth Engineer**: SaaS metrics and viral loops.
- **Backend Specialist**: Supabase, Node.js, and API logic.
- **Database Architect**: Schema design and performance tuning.

## 🔄 Workflows
Trigger these by name (MD guides in `workflows/`):
- `/plan`: Generate technical roadmaps.
- `/ui-audit`: Professional design teardown.
- `/landing-page-teardown`: Conversion optimization.
- `/refine`: Prompt engineering and optimization.
- `/template-customizer`: Surgical modification of exported templates.

## 📋 Standards
- **Styling**: Prefer Vanilla CSS or Tailwind (if requested).
- **Stack**: React (TS) + Supabase + Clerk + Stripe.
- **Animations**: Framer Motion for high-fidelity feel.

## 🧠 Self-Evolution & Resource Ingestion
KirzKit is a living framework. You can expand it dynamically:
1.  **Ingest**: Use `python scripts/ingest_skill.py <path> <type: skills|agents|workflows>`.
2.  **Commit**: Update the repo to persist the new knowledge.
