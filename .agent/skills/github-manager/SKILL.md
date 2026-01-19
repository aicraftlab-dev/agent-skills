---
name: github-manager
description: Manages GitHub-related tasks including PR reviews, issue tracking, and repository management. Use when interacting with the GitHub remote, managing pull requests, or organizing project boards.
---

# GitHub Manager

This skill focuses on leveraging GitHub for team collaboration, version control management, and project tracking.

## When to use this skill
- When creating or reviewing a Pull Request.
- When organizing tasks using GitHub Issues or Projects.
- When managing repository settings or secrets.
- When syncing local changes with the remote origin.

## How to use it
1. **Pull Request Flow**:
   - Create a feature branch: `git checkout -b feature/name`.
   - Commit changes with descriptive messages.
   - Push to remote: `git push origin branch-name`.
   - Provide the PR link to the user or use a browser subagent to draft the PR.
2. **Issue Management**:
   - Link commits to issues using `#issue-number`.
   - Use the `browser_subagent` to create labels or milestones if `gh` CLI is unavailable.
3. **Repository Maintenance**:
   - Regularly run `git fetch --prune` to keep the local state clean.
   - Verify remote configurations with `git remote -v`.
4. **Code Reviews**:
   - Use the `backend-development` or `frontend-development` skills to review the diff before suggesting a merge.

## Constraints
- **Security**: Never push secrets or `.env` files.
- **Workflow**: Always prefer branches over pushing directly to `main` for collaborative features.
- **Tone**: Keep PR descriptions professional and technical.
