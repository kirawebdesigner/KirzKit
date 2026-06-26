---
name: stripe-payments
description: SaaS monetization, subscriptions, webhooks, and checkout integration with Stripe. Use when implementing pricing tables, managing subscriptions, or handling payment webhooks.
allowed-tools: Read, Write, Edit, Glob, Grep, Bash
---

# Stripe Payments & SaaS Monetization

> **"Get paid, reliably."**
> **Philosophy:** Secure transactions, idempotent webhooks, and simple pricing.

---

## 📑 Content Map

| Section | Topic | Focus | When to Read |
| :--- | :--- | :--- | :--- |
| **1** | **Checkout Flow** | Sessions, Redirects, Success | Standard one-time or sub setup |
| **2** | **Subscriptions** | Plans, Intervals, Trials | Managing recurring revenue |
| **3** | **Webhooks** | Events, Verification, Logic | Syncing payment status to DB |
| **4** | **Customer Portal** | Self-service management | Letting users cancel or upgrade |
| **5** | **Pricing Models** | Tiered, Usage-based, Flat | Designing your monetization strategy |

---

## 🚀 The "Subscription Sync" Checklist

- [ ] **Webhook Signing**: Verify `stripe-signature` in your Edge Function/API.
- [ ] **Idempotency**: Ensure you don't process the same event twice.
- [ ] **Sync Logic**: Map `customer_id` and `subscription_id` to your User table.
- [ ] **Trial Management**: Handle `customer.subscription.deleted` events.

---

## ✅ Best Practices

- ✅ **Stripe Checkout**: Use the pre-built UI for highest conversion.
- ✅ **Product IDs**: Store these in environment variables.
- ✅ **Test Mode**: Always develop in Test Mode before flipping the key.
- ✅ **Tax handling**: Use Stripe Tax to stay compliant automatically.

---

## ❌ Anti-Patterns

- ❌ **Storing Credit Cards**: Never store card data on your server (PCI compliance).
- ❌ **Weak Webhooks**: Not verifying webhook signatures (security risk).
- ❌ **Manual Billing Logic**: Trying to calculate intervals yourself.
