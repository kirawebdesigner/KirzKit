---
name: trpc-type-safety
description: End-to-end type safety for APIs. Use when building high-performance communication between React and Node.js.
allowed-tools: Read, Write, Edit, Glob, Grep, Bash
---

# tRPC Type-Safety (Zero-API Logic)

> **"If it compiles, it works."**
> **Philosophy:** Kill the API layer. Move types from the backend to the frontend automatically.

---

## 📑 Content Map
- **Section 1**: Router Definition and Procedures
- **Section 2**: Input Validation (Zod Schema integration)
- **Section 3**: Query & Mutation hooks in React
- **Section 4**: Context & Server-side prefetching

---

## ✅ Best Practices
- ✅ **Shared Schemas**: Use Zod for both input validation and form types.
- ✅ **Procedure Chaining**: Use middleware for protected (auth) routes.
- ✅ **Inferred Types**: Don't manually type your API responses; let tRPC infer them.
- ✅ **Snappy DX**: Enjoy autocomplete on your API calls as you type them.

---

## ❌ Anti-Patterns
- ❌ **Manual Fetching**: Using `fetch()` or `axios` when you have tRPC set up.
- ❌ **Weak Typing**: Using `any` in your Zod schemas or router inputs.
