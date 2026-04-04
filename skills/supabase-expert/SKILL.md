---
name: supabase-expert
description: Comprehensive Supabase integration, RLS security, Edge Functions, and database optimization. Use when designing schemas, implementing auth, setting up real-time subscriptions, or writing edge functions.
allowed-tools: Read, Write, Edit, Glob, Grep, Bash, PostgreSQL
---

# Supabase Expert (SaaS Edition)

> **The Ultimate Backend-as-a-Service Guide**
> **Philosophy:** Security by default (RLS), Real-time by design, and Type-safe end-to-end.

---

## 🎯 Selective Reading Rule (MANDATORY)

**Read ONLY sections relevant to your task!** Check the content map below.

---

## 📑 Content Map

| Section | Topic | Focus | When to Read |
| :--- | :--- | :--- | :--- |
| **1** | **Database Schema** | Tables, Indexes, Enums | New feature data modeling |
| **2** | **RLS & Security** | Policies, Service Role, JWT | Implementing security/access control |
| **3** | **Real-time Engine** | Broadcast, Presence, CDC | Live updates, chat, notifications |
| **4** | **Edge Functions** | Deno, TypeScript, Hooks | Complex server-side logic, integrations |
| **5** | **Auth & Identity** | SSR, Providers, Middleware | Login flow, session management |
| **6** | **Storage** | Buckets, Transformations | File uploads, image optimization |
| **7** | **Type Safety** | CLI, Codegen, Interfaces | Setting up TS types for the client |

---

## 🚀 Quick Decision Tree

**What are you building?**

- **New Table/Relationship?** → Read Section 1 (Schema)
- **Adding User Access Rules?** → Read Section 2 (RLS)
- **Live Chat or Real-time Sync?** → Read Section 3 (Real-time)
- **Stripe Webhook or Custom API?** → Read Section 4 (Edge Functions)
- **Fixing Auth Redirects/Sessions?** → Read Section 5 (Auth)
- **Handling Images/Files?** → Read Section 6 (Storage)
- **Getting Red Squiggles in Code?** → Read Section 7 (Type Safety)

---

## 🔒 Security First: RLS Checklist

Before going live, every table must pass this:

- [ ] **RLS Enabled**: `ALTER TABLE x ENABLE ROW LEVEL SECURITY;`
- [ ] **No Public Access**: Ensure no `ANON` role has `INSERT/UPDATE/DELETE` without policies.
- [ ] **Selective Select**: Use `auth.uid()` to restrict data to the owner.
- [ ] **Service Role Warning**: Never use `service_role` key on the client side.
- [ ] **Join Policies**: Use `EXISTS` queries for complex permission checks.

---

## 🔗 Related Skills

| Need | Skill |
| :--- | :--- |
| API Design Patterns | `@[skills/api-patterns]` |
| Database Design Basics | `@[skills/database-design]` |
| React Integration | `@[skills/nextjs-react-expert]` |
| Deployment | `@[skills/deployment-procedures]` |

---

## ❌ Anti-Patterns (Common Mistakes)

- ❌ **Client-side Logic for Security**: Relying on the frontend to filter data (use RLS).
- ❌ **Massive Edge Functions**: Putting your whole backend in one function (modularize).
- ❌ **Missing Indexes**: Querying unindexed columns in large tables.
- ❌ **Over-fetching**: Selecting `*` instead of specific columns.
- ❌ **Insecure Storage**: Making buckets public when they contain sensitive user data.

---

## ✅ Best Practices (Do These!)

- ✅ **Use the CLI**: Always use `supabase gen types typescript` for total type safety.
- ✅ **Leverage Enums**: Use Postgres Enums for status fields (e.g., `status: 'pending' | 'active'`).
- ✅ **Database Functions**: Use RPC for logic that needs to be atomic and high-performance.
- ✅ **Audit Logs**: Create a `logs` table with an `AFTER INSERT` trigger for critical actions.
- ✅ **Environment Variables**: Use `supabase secrets set` for Edge Functions.

---

## 🔍 How to Use This Skill

1. **Research Phase**: Identify which section matches your current task.
2. **Strategy Phase**: Use the RLS Checklist and Best Practices to plan.
3. **Execution Phase**: Implement using the recommended patterns.
4. **Validation**: Run `supabase db lint` or manual security audits.
