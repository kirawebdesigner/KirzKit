---
name: napkin-ai-builder
description: Generates high-fidelity visual websites, diagrams, and graphics using the Napkin AI MCP Server. Use when you want to convert text-based goals into professional visual assets.
allowed-tools: Read, Write, Edit, Glob, Grep, Bash, napkin_ai_mcp
---

# Napkin AI Master (MCP Powered)

> **"Transforming Thought into Visual Reality."**
> **Philosophy:** Visuals should be generated, not just described.

---

## 🛠️ MCP Integration
This skill uses the **Napkin AI MCP Server** (`louischancly/napkin-ai-mcp`).

### Available MCP Tools:
- `napkin_ai_generate_visual`: Create visual layouts, landing pages, and infographics.
- `napkin_ai_get_styles`: Retrieve available visual styles and themes.

---

## 📑 Content Map
- **Section 1**: Visual Landing Page Architecture
- **Section 2**: Complex Infographics & Flowcharts
- **Section 3**: Style & Brand Alignment
- **Section 4**: React/Tailwind Implementation Bridge

---

## ✅ Best Practices
- ✅ **MCP First**: Always prefer the `napkin_ai_mcp` tools for generation.
- ✅ **Contextual Clarity**: Provide the "Target Audience" and "Tone" in every generation request.
- ✅ **Sleek Integration**: Combine Napkin visuals with `framer-motion-master` for elite UI.

---

## 🔒 Security Note
- **API Keys**: Stored locally in `.agent/rules/secrets.json` (Ignored by Git).
- **Environment**: Use `NAPKIN_AI_API_KEY` in your global MCP config.

---

## 🚀 Installation for Users
To use this skill, add the following to your `mcp_config.json`:
```json
"napkin-ai": {
  "command": "npx",
  "args": ["-y", "@louischancly/napkin-ai-mcp"],
  "env": {
    "NAPKIN_AI_API_KEY": "YOUR_KEY_HERE"
  }
}
```
