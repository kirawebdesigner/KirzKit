# Security Hardening
> Best practices for securing applications.

## 1. Inputs
- Validate ALL inputs.
- Sanitize HTML to prevent XSS.
- Use parameterized queries for SQL Injection prevention.

## 2. Authentication
- Never store passwords in plain text (use bcrypt/argon2).
- Use HTTP-only cookies for tokens.
- Implement rate limiting.

## 3. Headers
- Set security headers: CSP, X-Frame-Options, X-Content-Type-Options.
