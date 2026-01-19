---
name: skill-master
description: Helps create, manage, and refine Antigravity Skills. Use when asked to create a new skill, update an existing skill, or when guidelines for skill creation are needed.
---

# Skill Master

This skill enables the agent to architect and implement high-quality Antigravity Skills that are effective, efficient, and maintainable.

## Core Guidelines

1. **Location Awareness**:
   - **Workspace Skills**: `.agent/skills/<skill-name>/SKILL.md` (Preferred for project-specific tasks).
   - **Global Skills**: `~/.gemini/antigravity/skills/<skill-name>/SKILL.md` (For personal utilities).

2. **The SKILL.md Anatomy**:
   - **Frontmatter**: Must have a `name` and a `description`. The description is critical for discovery.
   - **Structure**:
     - `# Skill Name`
     - `## When to use this skill` (Define triggers clearly).
     - `## How to use it` (Step-by-step guidance).
     - `## Constraints & Best Practices` (Optional but recommended).

3. **Progressive Disclosure**:
   - Keep the main `SKILL.md` focused and concise.
   - For complex skills, use supporting files in `examples/`, `resources/`, or `scripts/`.
   - Inform the agent about these resources in the `SKILL.md` so it can read them when needed.

## Workflow for Creating a Skill

When asked to create a skill, follow these steps:

1. **Information Gathering**:
   - Clarify the specific task or knowledge the skill should encapsulate.
   - Determine if it should be workspace-specific or global.

2. **Drafting the Description**:
   - Use third person (e.g., "Reviews code changes...").
   - Include keywords the agent might encounter in user requests (triggers).

3. **Writing the Content**:
   - Use Markdown for clarity.
   - Define a clear process for the agent to follow when the skill is active.

4. **Implementation**:
   - Create the directory structure.
   - Write `SKILL.md`.
   - Add supporting scripts or templates if the task is complex.

## Templates

### Minimal SKILL.md
```yaml
---
name: your-skill-name
description: A short, punchy description of what the skill does and when the agent should trigger it.
---

# Your Skill Name

## When to use this skill
- Trigger 1
- Trigger 2

## How to use it
1. Step one...
2. Step two...
```

## Best Practices
- **Atomic Scope**: One skill should solve one problem.
- **No Placeholders**: Provide actual instructions, not just "Insert instructions here".
- **Executable Knowledge**: If a task can be automated with a script, include it in the `scripts/` folder and instruct the agent to run it.
