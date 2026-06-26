---
name: clerk-auth-master
description: Professional user management and authentication for Next.js. Use when implementing sign-ups, user profiles, or multi-tenant (organization) logic.
allowed-tools: Read, Write, Edit, Glob, Grep, Bash
---

# Clerk Auth Master (SaaS Identity)

> **"Identity, simplified."**
> **Philosophy:** Don't build auth; implement it. Focus on your unique product features.

---

## 📑 Content Map
- **Section 1**: Next.js App Router Integration (`<ClerkProvider>`)
- **Section 2**: Organization/Multi-tenant Management
- **Section 3**: Webhooks (Syncing user data to Supabase/Postgres)
- **Section 4**: Customizing the UI (Tailwind + Clerk Components)

---

## ✅ Best Practices
- ✅ **Middleware Protection**: Secure all routes by default in `middleware.ts`.
- ✅ **User Syncing**: Use Clerk Webhooks (`user.created`) to keep your DB in sync.
- ✅ **Server Components**: Use `auth()` for server-side checks and `useUser()` for client-side.
- ✅ **Zero-Friction**: Enable Social SSO (Google, GitHub) for higher conversion.

---

## ❌ Anti-Patterns
- ❌ **Client-only Auth**: Never rely on client-side checks for sensitive data.
- ❌ **Storing Passwords**: Never store raw password data (let Clerk handle it).
