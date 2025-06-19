**Invoked by: `workflow-router.md`**

# Intelligent Tweak Development & Documentation Workflow with Task Orchestrator MCP v4

## Overview
This workflow orchestrates comprehensive tweak development and documentation using the Task Orchestrator MCP server. It ensures architecture documentation, creates detailed development plans, and maintains full documentation.

Refer to [documentation-structure.md](documentation-structure.md) for documentation structure.

## Pre-Phase: Architecture Validation
**CRITICAL**: Before goal creation, validate architecture documentation is adequate for proposed changes.

1. **Create Architecture Validation Goal**:
   ```json
   {
       description: "Ensure architecture documentation exists for all modules in tweak: {tweak_name}",
       repoName: "{repository-name}"
   }
   ```

2. **Add Documentation Task**:
   ```json
   {
       title: "Process Architecture Documentation",
       description: "Create architecture documentation for all modules if not exists",
       subtasks: [
           {
               title: "Process Documentation",
               description: "Call architecture documentation workflow with operation-mode: CREATE"
           }
       ]
   }
   ```

3. **Track Status**:
   - Monitor task status in orchestrator
   - If status is "FAILED": Stop workflow
   - If status is "SKIPPED": Continue (documentation exists and is valid)
   - If status is "CREATED": Continue (new documentation created)
   - If status is "UPDATED": Log warning and continue (unexpected for CREATE mode)

4. **Proceed Based on Validation**:
   - If documentation is complete (SKIPPED or CREATED): Continue to Phase 1
   - If documentation fails (FAILED): Stop and request manual intervention
   - If documentation returns UPDATED: Log warning but continue

Refer to [architecture-documentation-workflow.md](architecture-documentation-workflow.md) for creation of architecture documents

## Phase 1: Tweak Requirements Validation
**CRITICAL**: Validate tweak requirements content. The `workflow-router.md` ensures the `requirement.md` file exists.

### Requirements Validation:
1. **Validate Tweak Requirement Content**:
   - Verify `knowledge-base/feature-docs/feature-{feature_name}/tweaks/{tweak_name}/requirement.md` clearly defines the problem or enhancement.

2. **Assess Scope and Clarity**:
   - Confirm scope is clear and complete.
   <CLARIFICATION>
      - Always ask for clarifications and follow-ups.
      - Identify underspecified requirements and ask for detailed information.
      - Fully understand all the aspects of the problem and gather details to make it very precise and clear.
      - Ask towards all the hypothesis and assumptions needed to be made. Remove all the ambiguities and uncertainties.
      - Suggest solutions that I didn't think about, i.e. anticipate my needs and things to be specified.
      - Only after having hundred percent clarity and confidence, proceed.
   </CLARIFICATION>
   - **If content is missing or inadequate**:
     - **STOP WORKFLOW**
     - Display message: "Tweak requirements are missing or inadequate. Provide comprehensive details in `knowledge-base/feature-docs/feature-{feature_name}/tweaks/{tweak_name}/requirement.md`."

## Phase 2: Create Development Goal and Task Structure
Refer to [core-development-workflow.md#Phase 2: Create Development Goal and Task Structure](core-development-workflow.md#phase-2-create-development-goal-and-task-structure)
   *Note: Goal description should indicate it's a tweak (e.g., "Implement tweak: {tweak_name}", "Fix bug: {bug_description}", "Enhance feature: {enhancement_description}"). The task structure should adapt for smaller, more focused tweaks (e.g., "Tweak" might only require "Development Plan Creation" and "Development Task Execution").*

## Post-Goal Creation Instructions
Refer to [core-development-workflow.md#Post-Goal Creation Instructions](core-development-workflow.md#post-goal-creation-instructions)
   *Note: For tweak development, `{feature_doc_path}` should resolve to `feature-{feature_name}`.*

## Phase 3: Dynamic Development Task Creation
Refer to [core-development-workflow.md#Phase 3: Dynamic Development Task Creation](core-development-workflow.md#phase-3-dynamic-development-task-creation)

## Task Execution Guidelines

### Pre-Development Task Execution
1. **Development Plan Creation**:
   - Identify logical parts based on affected entities or related entity groups.
   - Ensure each part is atomic and independently testable.
   - Create clear dependencies and execution sequence.
   - Include detailed technical specifications for each component.
   - Consider scalability, performance, and maintainability.
   - Document the plan, including unit and integration test details, in `knowledge-base/feature-docs/feature-{feature_name}/tweaks/{tweak_name}/plan.md`.
   - **Confirm logical part division with user at appropriate stage.**
   - Use the coding LLM's PLAN or 'planning' related mode to enhance results

   Refer to [core-development-workflow.md#PROGRAMMING PRINCIPLES](core-development-workflow.md#programming-principles)
   Refer to [core-development-workflow.md#Below is the Planning Workflow to follow:](core-development-workflow.md#below-is-the-planning-workflow-to-follow)

2. **Testing Strategy**:
   - Design unit tests for new or modified functionality with >90% coverage target.
   - Create integration test scenarios covering affected user workflows and regression.
   - Include performance testing requirements for affected areas.
   - Plan for security and accessibility testing if relevant.
   - Use the coding LLM's PLAN or 'planning' related mode to enhance results

### Development Task Execution

#### Debugging Workflow
Refer to [core-development-workflow.md#Debugging Workflow](core-development-workflow.md#debugging-workflow)
   *Note: For tweak development, `{plan_path}` should resolve to `knowledge-base/feature-docs/feature-{feature_name}/tweaks/{tweak_name}/plan.md`.*
   *Note: For tweak development, `{feature_doc_path}` should resolve to `feature-{feature_name}`.*
   *Note: For tweak development, `{deviation_path}` should resolve to `feature-{feature_name}/tweaks/{tweak_name}`.*
### Tool: `complete_task_status` Usage
Refer to [core-development-workflow.md#Tool: `complete_task_status` Usage](core-development-workflow.md#tool-complete_task_status-usage)

## Integration Testing Decision Point
Refer to [core-development-workflow.md#Integration Testing Decision Point](core-development-workflow.md#integration-testing-decision-point)
   *Note: For tweak development, `{feature_doc_path}` should resolve to `feature-{feature_name}`.*

## Task Completion Log Structure
Refer to [core-development-workflow.md#Task Completion Log Structure](core-development-workflow.md#task-completion-log-structure)
   *Note: For tweak development, `{feature_doc_path}` should resolve to `feature-{feature_name}`.*

## Error Handling and Recovery
Refer to [core-development-workflow.md#Error Handling and Recovery](core-development-workflow.md#error-handling-and-recovery)
   *Note: For tweak development, `{feature_doc_path}` should resolve to `feature-{feature_name}`.*

## Best Practices Summary
Refer to [core-development-workflow.md#Best Practices Summary](core-development-workflow.md#best-practices-summary)
   *Note: For tweak development, ensure to "Validate architecture documentation for relevance to proposed changes" and "Stop workflow if tweak requirements are inadequate" and "Achieve comprehensive test coverage for affected areas using reference documents".*

## Notes on Workflow Phases
Refer to [core-development-workflow.md#Notes on Workflow Phases](core-development-workflow.md#notes-on-workflow-phases)
   *Note: For tweak development, the descriptions for phases should be specific to tweaks (e.g., "Architecture re-validation and setup for the tweak", "Tweak requirements validation and verification", "Goal and task structure creation for the tweak", "Dynamic development task creation based on logical parts of the tweak").*
