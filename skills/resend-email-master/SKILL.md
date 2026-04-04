---
name: resend-email-master
description: Professional transactional email delivery using Resend and React Email. Use when implementing welcome emails, magic links, or automated notifications.
allowed-tools: Read, Write, Edit, Glob, Grep, Bash
---

# Resend Email Master (SaaS Communications)

> **"Emails that users actually want to read."**
> **Philosophy:** Design with React. Deliver with precision. Avoid the spam folder.

---

## 📑 Content Map
- **Section 1**: React Email Templates (`@react-email/components`)
- **Section 2**: API Integration (Sending via Resend SDK)
- **Section 3**: Webhooks (Tracking opens, clicks, and bounces)
- **Section 4**: DNS & Authentication (SPF, DKIM, DMARC)

---

## ✅ Best Practices
- ✅ **React Email**: Build your templates in React for local preview and type safety.
- ✅ **Personalization**: Use dynamic data to make every email feel unique.
- ✅ **Testing**: Use Resend's "Test Mode" before sending to real users.
- ✅ **Clean Lists**: Automatically remove bounced emails to protect your sender reputation.

---

## ❌ Anti-Patterns
- ❌ **Inline CSS**: Don't write raw HTML emails; they are a nightmare to maintain.
- ❌ **No Unsubscribe**: Never send marketing emails without a clear unsubscribe link.
