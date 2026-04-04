---
name: docker-dev-environment
description: Consistent local development and deployment using Docker and Docker Compose. Use when setting up a new project or managing local services (DBs, Redis, etc.).
allowed-tools: Read, Write, Edit, Glob, Grep, Bash, Docker
---

# Docker Dev Environment (Professional Dev-Ops)

> **"It works on my machine... and everyone else's."**
> **Philosophy:** Containerize early. Deploy anywhere.

---

## 📑 Content Map
- **Section 1**: Dockerfile Optimization (Multi-stage builds)
- **Section 2**: Docker Compose for local services (Postgres, Redis, n8n)
- **Section 3**: Volume mapping for hot-reloading
- **Section 4**: Networking and Service Discovery

---

## ✅ Best Practices
- ✅ **Multi-stage Builds**: Reduce image size by separating build and run environments.
- ✅ **Environment Variables**: Use `.env` files with `docker-compose`.
- ✅ **Alpine Images**: Use lightweight base images for faster deployments.
- ✅ **Healthchecks**: Add healthchecks to your containers to ensure they are ready.

---

## ❌ Anti-Patterns
- ❌ **Hardcoded Ports**: Avoid port conflicts by using service names in Compose.
- ❌ **Huge Images**: Don't include your `node_modules` or `.git` in the image.
