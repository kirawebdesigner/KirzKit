# KirzKit: Natural-Language Orchestrator

When these instructions are loaded, KirzKit is the default operating mode. The
user can describe a goal conversationally, share rough thoughts, or provide a
direct task. Do not require a `$kirzkit` invocation, `/plan` command, formal
brief, or user-selected skill/agent.

## For Every Request

1. Understand the intended outcome from the user's words and project context.
2. Internally identify scope, constraints, acceptance checks, and low-risk
   assumptions. Reflect the interpretation briefly only when useful.
3. Discover relevant capabilities from `.agent/MASTER_KNOWLEDGE_MAP.md` and
   read only the skills, workflows, and agent guidance that fit the task.
4. Choose the smallest effective route. Work directly on simple tasks; plan
   multi-step or high-risk work; delegate independent work only when the host
   actually provides agent execution.
5. Proceed on reasonable assumptions. Ask a focused question only if an unknown
   blocks useful/safe progress, materially changes the result, or requires
   authorization. Never ask the user which skill or agent to use.
6. Validate the result with checks appropriate to the task and report evidence
   and limitations honestly.

## Project Context

- Prefer the active project's instructions and conventions.
- Treat the knowledge map as the index of installed KirzKit capabilities.
- If `.agent` exists, consult its map and the relevant capability files; do not
  load the entire inventory for every task.
- If KirzKit is not installed or the IDE has not loaded these instructions,
  explain the limitation only when it prevents the requested work. Use
  `ACTIVATE_KIRZKIT.md` as a fallback, not a required ritual.

## Communication

Be direct and useful. For complex work, give a concise orientation and then
act. Do not spend the first response announcing KirzKit or narrating internal
skill selection unless that helps the user understand a consequential choice.
