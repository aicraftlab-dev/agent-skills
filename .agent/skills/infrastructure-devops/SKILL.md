---
name: infrastructure-devops
description: Handles CI/CD, deployment, cloud infrastructure, and environment management. Use when setting up deployment pipelines or managing servers/cloud resources.
---

# Infrastructure & DevOps

This skill ensures the product is deployable, stable, and automated.

## When to use this skill
- When setting up GitHub Actions or GitLab CI.
- When configuring Docker or Kubernetes.
- When deploying to platforms like Vercel, AWS, or GCP.
- When managing environment variables and secrets.

## How to use it
1. **Containerization**: Create `Dockerfile` and `docker-compose.yml` for local development and staging.
2. **CI/CD Pipelines**: Automate testing, linting, and deployment on every push.
3. **Infrastructure as Code (IaC)**: Use Terraform or similar tools if managing complex cloud resources.
4. **Environment Management**: Set up `.env.example` and ensure secrets are never committed.
5. **Monitoring & Alerts**: Set up basic health checks and alerting mechanisms.

## Security Warning
- **Never** hardcode API keys or credentials.
- Always use restricted service accounts for deployments.
