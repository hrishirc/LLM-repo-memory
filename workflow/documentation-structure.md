---
description: Defines the documentation file structure to be maintained.
globs: 
alwaysApply: true
---
# Documentation Structure to Maintain

```
./knowledge-base/
├── architecture-docs/
│   ├── {project-name}/               # project name, company codebase can have multiple projects
│   │   └── {module-name}/            # if multi-module project, use one folder per module else use default-module
│   │       ├── structure.md          # Component architecture & relationships, includes business context with task tracking
│   │       ├── tech-stack.md         # Technologies, dependencies, versions
│   │       ├── purpose.md            # Business purpose & responsibilities
│   │       ├── code-change-rules.md  # Coding standards & patterns, general SOP for new features
│   │       └── important-commands.md # Key commands & workflows
│
├── feature-docs/
│   ├── feature-{feature_name}/
│   │   ├── feature-global-context.md     # Development configuration and context (goal ID, testing approach, etc.)
│   │   ├── logs/
│   │   │   ├── error-rca-log.md              # Error analysis & solutions with task integration
│   │   │   └── task-completion-log.md         # Task completion tracking, recommendations, and metrics
│   │   ├── company-ask/
│   │   │   ├── business/                  # Business requirements documents/files
│   │   │   └── product/
│   │   │       ├── requirement-document.md     # PRD created per best practices
│   │   │       └── special-instructions.md     # User created file (if applicable)
│   │   ├── development-plan/
│   │   │   └── {logical_part_name}/       # Entity-based or related entity groups as logical parts
│   │   │       ├── plan.md    # Component-specific detailed plans
│   │   │       └── deviation.md # Deviations from original plan
│   │   ├── tweaks/                        # Note: Tweaks will be separate workflow/goal
│   │   │   └── tweak-{tweak_name}/
│   │   │       └── summary.md
│   │   └── testing-plan/
│   │       ├── unit-tests.md              # Unit tests with pseudo code reference
│   │       └── integration-tests.md       # Integration testing approach
