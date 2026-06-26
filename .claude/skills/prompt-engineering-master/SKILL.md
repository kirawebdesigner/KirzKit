---
name: prompt-engineering-master
description: Advanced techniques for crafting high-performance prompts. Chain-of-Thought, few-shot, role-prompting, and structured output. Use when you want to improve AI accuracy or fix "lazy" AI responses.
allowed-tools: Read, Write, Edit, Glob, Grep, Bash
---

# Prompt Engineering Master (The Meta-Skill)

> **"A better prompt is a better product."**
> **Philosophy:** Clarity is power. Structure beats verbosity.

---

## 📑 Content Map

| Section | Technique | Focus | When to Read |
| :--- | :--- | :--- | :--- |
| **1** | **Role Prompting** | Setting the persona | When the AI's tone is off |
| **2** | **Chain-of-Thought** | Step-by-step reasoning | For complex logic or math |
| **3** | **Few-Shot** | Providing examples | For specific formatting or style |
| **4** | **Structured Output** | JSON, XML, Markdown | For building API-driven features |
| **5** | **Negative Prompting** | What NOT to do | When the AI repeats mistakes |

---

## 🚀 The "Perfect Prompt" Formula (RISE)
- **R**ole: "Act as a Senior React Developer..."
- **I**nput: "Here is a code snippet..."
- **S**teps: "1. Analyze, 2. Fix, 3. Verify..."
- **E**xpectation: "Output only the code in a JSON block."

---

## ✅ Best Practices
- ✅ **Be Specific**: "Write a 3-sentence summary" instead of "Summarize this."
- ✅ **Use Delimiters**: Use `###`, `---`, or `"""` to separate instructions from data.
- ✅ **Temperature Control**: Use low temp (0.1) for facts, high temp (0.8) for creativity.
- ✅ **Iterative Refinement**: Start small, then add constraints.

---

## ❌ Anti-Patterns
- ❌ **The Wall of Text**: Giving too many instructions at once (leads to "forgetting").
- ❌ **Vague Adjectives**: Avoiding "fast," "good," or "better"—use metrics instead.
- ❌ **Asking for Permission**: Don't ask "Can you..."; just say "Do X."
