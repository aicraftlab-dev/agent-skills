---
name: backend-development
description: Implements server-side logic, database interactions, and API endpoints. Use when building the core business logic or data processing layers.
---

# Backend Development

This skill focuses on performance, security, and correctness of server-side code.

## When to use this skill
- When writing API routes or controllers.
- When implementing business logic and validation.
- When interacting with databases via ORMs or raw SQL.
- When handling file uploads or background jobs.

## How to use it
1. **API Implementation**: Create RESTful or GraphQL endpoints following the design in `ARCHITECTURE.md`.
2. **Data Validation**: Use libraries like Zod or Joi to validate all incoming data.
3. **Database Integration**: Implement migrations and seed data for the designed schema.
4. **Error Handling**: Use consistent error formats and status codes.
5. **Performance Optimization**: Optimize queries, use caching where appropriate, and ensure efficient algorithms.

## Standards
- Use async/await for all asynchronous operations.
- Write unit tests for all business logic.
- Document internal functions with JSDoc or similar.
