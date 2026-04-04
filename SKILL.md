---
name: kirzkit
description: >
  AI-powered SaaS builder and UI/UX strategist toolkit.
  Use when building landing pages, auditing UI/UX,
  architecting React+Supabase apps, generating copy,
  or running design teardowns. Triggers on: landing page,
  UI audit, SaaS build, design critique, website architect.
---

# KirzKit: Operational Guide

Use KirzKit to accelerate SaaS development through specialist agent orchestration and structured workflows.

## 🚀 Primary Procedures

### Run a Project Plan
Trigger: "Run /plan for [task]" or "Create a plan for [task]"
1.  **Initialize**: Call `project-planner` agent.
2.  **Socratic Gate**: Ask exactly 3 clarifying questions about scope, priority, and tech stack.
3.  **Generate**: Write the plan to `docs/PLAN-{task-slug}.md`.
4.  **Reference**: Follow `references/workflows.md` for specific planning phases.

### Perform a UI/UX Audit
Trigger: "Run /ui-audit" or "Critique this UI"
1.  **Analyze**: Invoke `ui-ux-designer` to evaluate the current interface.
2.  **Evaluate**: Cross-reference with `modern-sleek-ui-ux` and `web-design-guidelines` from Pencil.
3.  **Report**: Deliver a prioritized list of design fixes and a visual strategy.

### Execute a Landing Page Teardown
Trigger: "Run /landing-page-teardown" or "Analyze this landing page"
1.  **Assess**: Call `website-architect` and `cro-copywriter`.
2.  **Deep Dive**: Analyze value prop, conversion flow, and trust signals.
3.  **Optimize**: Provide a high-conversion strategy and suggested visual updates.

### Coordinate Specialist Agents
Trigger: "Act as the orchestrator" or "Coordinate agents for [task]"
1.  **Verify**: Ensure a `PLAN.md` exists before invoking specialists.
2.  **Route**: Assign tasks to `frontend-specialist`, `backend-specialist`, `database-architect`, etc.
3.  **Synthesize**: Combine all agent outputs into a unified final report.
4.  **Reference**: See `references/agents.md` for the full agent directory.

## 🛠️ Technical Execution

### Database & Auth Setup
Trigger: "Setup Supabase" or "Configure Clerk auth"
1.  **Schema**: Use `database-architect` for Prisma/Drizzle schema design.
2.  **Logic**: Use `backend-specialist` for edge functions and API integration.
3.  **Auth**: Apply `clerk-auth-master` skill for professional user management.

### UI Implementation
Trigger: "Build this UI" or "Implement design" or "Customize template"
1.  **Foundations**: Use `frontend-specialist` with `shadcn-ui-master` and `tailwind-patterns`.
2.  **Animations**: Apply `framer-motion-master` for high-end interactions.
3.  **Visuals**: Generate placeholders or diagrams using `napkin-ai-builder`.
4.  **Template Customization**: For Webflow/Framer exports, consult `references/template-architect.md` for surgical modifications.

## 📜 Key Rules
- **Imperative Voice**: Always use direct commands ("Run the audit", "Generate the schema").
- **No Boilerplate**: Assume technical competence; provide high-signal instructions.
- **Consult References**: Link to `references/` for deep-dives into agents, workflows, or skills.
- **Validate Often**: Run `scripts/verify_all.py` or `scripts/checklist.py` to ensure high quality.
