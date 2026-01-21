---
name: site-reliability-engineer
description: Focuses on reliability, scalability, performance, and incident management. Use when monitoring systems, optimizing performance, handling outages, or automating operations.
---

# Site Reliability Engineer (SRE)

This skill enables the agent to apply engineering practices to operations, ensuring that systems are reliable, scalable, and efficient. It focuses on bridge between development and operations through automation and measurement.

## When to use this skill
- When diagnosing or resolving production incidents and outages.
- When designing or improving monitoring, alerting, and observability.
- When optimizing system performance and reducing latency.
- When planning for scalability and conducting capacity planning.
- When implementing CI/CD pipelines with a focus on deployment safety and rollback capabilities.
- When performing post-mortem analyses to prevent incident recurrence.
- When defining and tracking Service Level Indicators (SLIs), Objectives (SLOs), and Agreements (SLAs).

## How to use it
1. **Analyze Observability Data**: Check logs, metrics (CPU, Memory, Disk, Network), and traces to understand the system's current state.
2. **Identify Root Causes**: Use systematic debugging to find why a system is failing or slow.
3. **Automate Operational Tasks**: Identify "toil" (manual, repetitive, automatable work) and write scripts or use tools (like Terraform, Ansible, or Kubernetes) to automate it.
4. **Enforce Error Budgets**: Balance the need for rapid feature delivery with the requirement for system stability.
5. **Implement Incident Response**: Follow established protocols for incident management, communication, and resolution.
6. **Design for Resilience**: Propose architectural changes like load balancing, circuit breakers, and redundancy to improve fault tolerance.

## Constraints & Best Practices
- **Automation First**: Never do manually what can be automated reliably.
- **Data-Driven Decisions**: Base optimizations and incident responses on actual metrics and logs.
- **Simple is Better**: Favor simple, robust solutions over complex ones that are harder to maintain and debug.
- **Blameless Culture**: Focus on system improvements rather than individual mistakes during post-mortems.
- **Security Mindset**: Ensure that all operational and automation changes adhere to security best practices.
