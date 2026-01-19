---
name: quality-assurance-testing
description: Ensures product quality through rigorous testing, bug hunting, and automated verification. Use when writing tests, debugging, or performing final QA checks.
---

# Quality Assurance & Testing

This skill ensures that the final product is reliable, performant, and bug-free.

## When to use this skill
- When writing Unit, Integration, or E2E tests.
- When performing a manual audit of a new feature.
- When checking for cross-browser compatibility.
- When testing performance and load capacity.

## How to use it
1. **Test Planning**: Identify critical paths (e.g., login, checkout) that must never fail.
2. **Automated Testing**: Use Vitest, Playwright, or Cypress to automate core user flows.
3. **Edge Case Hunting**: Intentionally try to break the system with invalid inputs or interrupted network conditions.
4. **Bug Reporting**: Document issues clearly with steps to reproduce and expected vs. actual outcomes.
5. **Accessibility Audit**: Run Lighthouse or similar tools to ensure the product is accessible to all users.

## Standards
- Aim for 80%+ test coverage on core business logic.
- All tests must pass before a deployment.
- Never ignore "flaky" tests; fix them.
