---
description: Contains large tool call payloads for the feature development workflow.
globs: 
alwaysApply: true
---
# Tool Call Payloads

## Architecture Documentation Tasks Payload (`add_tasks`)

```json
{
    goalId: {architectureGoalId},
    tasks: [
        {
            title: "Create Business Purpose Documentation",
            description: "Use the templates/architecture-docs/purpose.tmpl.md template to document the module's business purpose, core responsibilities, target users, and success metrics. Fill in all template sections with specific project information.",
            subtasks: [
                {
                    title: "Analyze Business Requirements",
                    description: "Review existing business requirements, user stories, or project documentation to understand the module's business purpose and value proposition."
                },
                {
                    title: "Complete Purpose Template",
                    description: "Fill in the templates/architecture-docs/purpose.tmpl.md template with: Overview (1-2 sentence summary), Business Problem Solved, Core Responsibilities (specific bullet points), Target Users/Consumers, Key Business Value, Scope (In/Out), and Success Metrics. Replace all placeholder text with actual project-specific content."
                }
            ]
        },
        {
            title: "Document Technology Stack",
            description: "Use the templates/architecture-docs/tech-stack.tmpl.md template to comprehensively document all technologies, frameworks, libraries, and tools used in the project.",
            subtasks: [
                {
                    title: "Inventory Current Technologies",
                    description: "Examine project files (package.json, pom.xml, requirements.txt, etc.) to identify all technologies, frameworks, libraries, and their versions currently used in the project."
                },
                {
                    title: "Complete Tech Stack Template",
                    description: "Fill in the templates/architecture-docs/tech-stack.tmpl.md template with: Core Technologies (languages, frameworks, runtime environments), Data Storage (databases, caching), Key Libraries & Tools (backend/frontend libraries, build tools, testing frameworks), Infrastructure & Deployment, Version Control, and Justification for Key Technology Choices. Replace all placeholder text with actual project-specific information."
                }
            ]
        },
        {
            title: "Design Architecture Structure",
            description: "Use the templates/architecture-docs/structure.tmpl.md template to document the module's architecture, components, data flow, and dependencies.",
            subtasks: [
                {
                    title: "Analyze Code Architecture",
                    description: "Examine the codebase to understand the component structure, data flow patterns, integration points, and dependencies. Create or reference architecture diagrams if needed."
                },
                {
                    title: "Complete Structure Template",
                    description: "Fill in the templates/architecture-docs/structure.tmpl.md template with: Overview & Business Context, Architecture Diagram (Mermaid or reference), Components & Responsibilities (detailed for each major component), Data Flow, Key Workflows/Use Cases, Dependencies (internal/external), Scalability & Performance Considerations, Security Considerations, Integration Points, and Task Tracking & Business Context. Ensure all sections have comprehensive, project-specific content."
                }
            ]
        },
        {
            title: "Establish Coding Standards and SOPs",
            description: "Use the templates/architecture-docs/code-change-rules.tmpl.md template to document coding standards, design patterns, development processes, and SOPs for the project.",
            subtasks: [
                {
                    title: "Review Current Code Patterns",
                    description: "Analyze existing codebase to identify current coding patterns, naming conventions, error handling approaches, testing practices, and development workflows already in use."
                },
                {
                    title: "Complete Code Change Rules Template",
                    description: "Fill in the templates/architecture-docs/code-change-rules.tmpl.md template with: Coding Standards (language versions, style guide, naming conventions, formatting), Design Patterns (preferred patterns, anti-patterns to avoid), Version Control & Branching (strategy, commit messages, PR process), Code Review Process, Testing Requirements (unit/integration/e2e with coverage targets and frameworks), Error Handling, Logging Standards, API Design, Security Best Practices, SOP for Adding New Features, and Dependency Management. Customize all sections for the specific project context."
                }
            ]
        },
        {
            title: "Document Important Commands and Workflows",
            description: "Use the templates/architecture-docs/important-commands.tmpl.md template to document all essential commands, build processes, and development workflows.",
            subtasks: [
                {
                    title: "Identify Key Development Commands",
                    description: "Review project build files, scripts, and documentation to identify all important commands for building, running, testing, linting, formatting, and deploying the project."
                },
                {
                    title: "Complete Important Commands Template",
                    description: "Fill in the templates/architecture-docs/important-commands.tmpl.md template with: Prerequisites (tools, environment variables, setup requirements), Common Commands (build & compile, running locally, testing, linting & formatting, deployment), and Other Useful Commands (logging, database access, documentation generation). Replace all placeholder commands with actual project-specific commands and ensure all commands are tested and accurate."
                }
            ]
        }
    ]
}
```

## Architecture Documentation Update Tasks Payload (`add_tasks`)

```json
{
    goalId: {architectureGoalId},
    tasks: [
        {
            title: "Update Business Purpose Documentation",
            description: "Review and update the module's business purpose documentation to reflect current state and changes.",
            subtasks: [
                {
                    title: "Analyze Recent Changes",
                    description: "Review recent code changes, PRs, and business requirements to identify updates to the module's purpose and responsibilities."
                },
                {
                    title: "Update Purpose Documentation",
                    description: "Update knowledge-base/architecture-docs/{project-name}/{module-name}/purpose.md with any changes to: Overview, Business Problem Solved, Core Responsibilities, Target Users/Consumers, Key Business Value, Scope, and Success Metrics."
                }
            ]
        },
        {
            title: "Update Technology Stack Documentation",
            description: "Review and update the technology stack documentation to reflect current technologies and versions.",
            subtasks: [
                {
                    title: "Review Current Technologies",
                    description: "Examine project files to identify any changes in technologies, frameworks, libraries, and their versions."
                },
                {
                    title: "Update Tech Stack Documentation",
                    description: "Update knowledge-base/architecture-docs/{project-name}/{module-name}/tech-stack.md with changes to: Core Technologies, Data Storage, Key Libraries & Tools, Infrastructure & Deployment, Version Control, and Technology Choices Justification."
                }
            ]
        },
        {
            title: "Update Architecture Structure",
            description: "Review and update the architecture structure documentation to reflect current component structure and data flows.",
            subtasks: [
                {
                    title: "Analyze Architecture Changes",
                    description: "Review recent code changes to identify modifications to component structure, data flows, integration points, and dependencies."
                },
                {
                    title: "Update Structure Documentation",
                    description: "Update knowledge-base/architecture-docs/{project-name}/{module-name}/structure.md with changes to: Overview & Business Context, Architecture Diagram, Components & Responsibilities, Data Flow, Key Workflows, Dependencies, Scalability & Performance, Security, and Integration Points."
                }
            ]
        },
        {
            title: "Update Coding Standards and SOPs",
            description: "Review and update coding standards and SOPs to reflect current best practices and patterns.",
            subtasks: [
                {
                    title: "Review Current Standards",
                    description: "Analyze recent code changes to identify any new patterns, conventions, or best practices that should be documented."
                },
                {
                    title: "Update Code Change Rules",
                    description: "Update knowledge-base/architecture-docs/{project-name}/{module-name}/code-change-rules.md with changes to: Coding Standards, Design Patterns, Version Control & Branching, Code Review Process, Testing Requirements, Error Handling, Logging Standards, API Design, Security Best Practices, and SOPs."
                }
            ]
        },
        {
            title: "Update Important Commands and Workflows",
            description: "Review and update the important commands and workflows documentation.",
            subtasks: [
                {
                    title: "Review Current Commands",
                    description: "Review recent changes to build files, scripts, and documentation to identify updates to important commands and workflows."
                },
                {
                    title: "Update Commands Documentation",
                    description: "Update knowledge-base/architecture-docs/{project-name}/{module-name}/important-commands.md with changes to: Prerequisites, Common Commands, and Other Useful Commands."
                }
            ]
        }
    ]
}
```

## Create Goal Payload (`create_goal`)

```json
{
    description: "Complete development of feature: {feature_name} with comprehensive documentation",
    repoName: "{repository-name}"
}
```

## Main Task Structure Payload (`add_tasks`)

```json
{
    goalId: {goalId},
    tasks: [
        {
            title: "Pre-Development",
            description: "Complete all pre-development requirements including PRD creation if needed, development planning, and test planning",
            subtasks: [
                // CONDITIONAL: Only add if PRD doesn't exist
                {
                    title: "Create Product Requirements Document if not present",
                    description: "Analyze business requirements and create comprehensive PRD using the templates/feature-docs/company-ask/product/requirement-document.tmpl.md template and following industry best practices. Include user stories, acceptance criteria, technical requirements, and success metrics. Reference special-instructions.md if present."
                },
                {
                    title: "Design Development Plan Architecture",
                    description: "Analyze PRD and business requirements to create high-level development approach. Identify major logical parts based on entities or related entity groups, dependencies, and development sequence. Consider both frontend and backend requirements. Reference special-instructions.md if present and relevant."
                },
                {
                    title: "Create Detailed Development Plan",
                    description: "Break down development into atomic, serially linked logical parts based on entities or groups of related entities. Each logical part should be independent enough to be developed and tested separately. Create {logical_part_name} folders with detailed plans including implementation approach, APIs, data structures, UI components, business logic, error handling, and integration points. Confirm logical part division with user. Create these plans using the templates/feature-docs/development-plan/plan.tmpl.md template and put them in relevant plan.md files."
                },
                {
                    title: "Design Comprehensive Testing Strategy",
                    description: "Create unit testing plan with pseudo code for each component using the templates/feature-docs/testing-plan/unit-tests.tmpl.md template - results go into unit-tests.md. Design integration testing approach covering end-to-end scenarios, API integrations, database interactions, and user workflows using the templates/feature-docs/testing-plan/integration-tests.tmpl.md template - results go into integration-tests.md. These files will be used as references during and post development to create and execute tests for validation."
                }
            ]
        },
        {
            title: "Development",
            description: "Execute development according to planned logical parts with comprehensive unit testing and error documentation",
            subtasks: [] // Will be populated dynamically based on logical parts created
        },
        {
            title: "Post-Development",
            description: "Finalize all documentation, update architectural documents, and prepare for deployment",
            subtasks: [
                {
                    title: "Execute Comprehensive Unit Testing",
                    description: "Run all unit tests created during development using knowledge-base/feature-docs/feature-{feature_name}/testing-plan/unit-tests.md as reference. Achieve as close to 100% test coverage as possible. Document test results and fix any failing tests. Update unit test documentation with final test suite details."
                },
                {
                    title: "Update Architectural Documentation",
                    description: "Update all architecture documents (structure.md, tech-stack.md, purpose.md, important-commands.md) to reflect changes made during development. Include new components, modified dependencies, updated business context, and new commands/workflows."
                },
                {
                    title: "Update Code Change Rules",
                    description: "Document new patterns, coding standards, and best practices discovered during development. Update code-change-rules.md with new SOPs for similar feature development in the future."
                },
                {
                    title: "Execute Integration Testing",
                    description: "Execute integration tests according to documented integration testing plan in knowledge-base/feature-docs/feature-{feature_name}/testing-plan/integration-tests.md. This task will pause for user input to determine if testing should be automated or manual based on global configuration stored in knowledge-base/feature-docs/feature-{feature_name}/feature-global-context.md."
                }
            ]
        }
    ]
}
```

## Dynamic Development Task Creation Payload (`add_tasks`)

```json
{
    goalId: {goalId},
    tasks: [
        {
            title: "Implement {logical_part_name}",
            description: "Complete implementation of {logical_part_name} including all components, business logic, data handling, error management, and unit tests as defined in the development plan",
            parentId: "2", // Under Development task
            subtasks: [
                {
                    title: "Implement Core Logic for {logical_part_name}",
                    description: "Implement the main business logic, data structures, and core functionality. Follow the detailed component plan and maintain code change rules. Document any deviations in deviation-component.md."
                },
                {
                    title: "Implement Frontend Components for {logical_part_name}",
                    description: "Create all UI components, user interactions, state management, and frontend integrations. Ensure responsive design and accessibility compliance. Test user workflows thoroughly."
                },
                {
                    title: "Implement Backend Services for {logical_part_name}",
                    description: "Create API endpoints, database interactions, business logic services, validation rules, and security measures. Implement proper error handling and logging."
                },
                {
                    title: "Create Unit Tests for {logical_part_name}",
                    description: "Implement comprehensive unit tests for all components following the unit testing plan in knowledge-base/feature-docs/feature-{feature_name}/testing-plan/unit-tests.md. Include positive test cases, negative test cases, edge cases, and boundary conditions. Ensure tests are runnable and provide meaningful coverage."
                }
            ]
        }
    ]
}
```

## Complete Task Status Payload (`complete_task_status`)

```json
{
    goalId: {goalId},
    taskIds: ["{task_id}"],
    completeChildren: false // Only complete specific task unless explicitly completing all children
}
```

## Get Tasks Payload (`get_tasks`)

```json
{
    goalId: {goalId},
    includeSubtasks: "recursive",
    includeDeletedTasks: false
}
