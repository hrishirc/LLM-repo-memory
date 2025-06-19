**Invoked by: `workflow-router.md`**

# Intelligent Feature Development & Documentation Workflow with Task Orchestrator MCP v4

## Overview
This workflow orchestrates comprehensive feature development and documentation using the Task Orchestrator MCP server. It ensures architecture documentation, creates detailed development plans, and maintains full documentation.

Refer to [documentation-structure.md](documentation-structure.md) for documentation structure.

## Pre-Phase: Architecture Validation
**CRITICAL**: Before goal creation, validate architecture documentation is adequate.

1. **Create Architecture Validation Goal**:
   ```json
   {
       description: "Ensure architecture documentation exists for all modules in feature: {feature_name}",
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

Refer to [architecture-documentation-workflow.md](architecture-documentation-workflow.md) for creation of architecture documents.

## Phase 1: Feature Requirements Validation
**CRITICAL**: Validate company-ask structure and content.

### Requirements Validation:
1. **Validate Company-Ask Content**:
   - Verify business requirements in `knowledge-base/feature-docs/feature-{feature_name}/company-ask/business/` are adequate.
   - Verify `knowledge-base/feature-docs/feature-{feature_name}/company-ask/product/requirement-document.md` (PRD) clearly defines product requirements and is adequate.

2. **Assess Scope and Clarity**:
   - Confirm scope is clear and complete.
   <CLARIFICATION>
      - Always ask for clarifications and follow-ups.
      - Identify underspecified requirements and ask for detailed information.
      - Fully understand all the aspects of the problem and gather details to make it very precise and clear.
      - Ask towards all the hypothesis and assumptions needed to be made. Remove all the ambiguities and uncertainties.
      - Suggest solutions that I didn't think about, i.e. anticipate my needs and things to be specified.
      - Only after having hundred percent clarity and confidence, proceed for SOLUTION.
   </CLARIFICATION>
   - **If content is missing or inadequate**:
     - **STOP WORKFLOW**
     - Display message: "Feature requirements (business or product) are missing or inadequate. Provide comprehensive details in the appropriate `knowledge-base/feature-docs/feature-{feature_name}/company-ask/` subfolder."

## Phase 2: Create Development Goal and Task Structure
Refer to [core-development-workflow.md#Phase 2: Create Development Goal and Task Structure](core-development-workflow.md#phase-2-create-development-goal-and-task-structure)

## Post-Goal Creation Instructions
Refer to [core-development-workflow.md#Post-Goal Creation Instructions](core-development-workflow.md#post-goal-creation-instructions)
   *Note: For feature development, `{feature_doc_path}` should resolve to `feature-{feature_name}`.*

## Phase 3: Dynamic Development Task Creation
Refer to [core-development-workflow.md#Phase 3: Dynamic Development Task Creation](core-development-workflow.md#phase-3-dynamic-development-task-creation)

## Task Execution Guidelines

### Pre-Development Task Execution
1. **PRD Creation** (only if PRD doesn't exist):
   - Analyze business requirements.
   - Follow industry best practices for PRD structure.
   - Include user personas, user stories, acceptance criteria.
   - Define technical requirements and constraints.
   - Establish success metrics and KPIs.
   - Use the coding LLM's PLAN or 'planning' related mode to enhance results

2. **Development Plan Creation**:
   Refer to [core-development-workflow.md#Development Plan Creation](core-development-workflow.md#development-plan-creation)

3. **Testing Strategy**:
   - Design unit tests with >90% coverage target - document in `knowledge-base/feature-docs/feature-{feature_name}/testing-plan/unit-tests.md`.
   - Create integration test scenarios covering all user workflows - document in `knowledge-base/feature-docs/feature-{feature_name}/testing-plan/integration-tests.md`.
   - Include performance testing requirements.
   - Plan for security and accessibility testing.
   - Use the coding LLM's PLAN or 'planning' related mode to enhance results

### Development Task Execution

#### Debugging Workflow
Refer to [core-development-workflow.md#Debugging Workflow](core-development-workflow.md#debugging-workflow)
   *Note: For feature development, `{plan_path}` should resolve to `knowledge-base/feature-docs/feature-{feature_name}/development-plan/{logical_part_name}/plan.md`.*
   *Note: For feature development, `{feature_doc_path}` should resolve to `feature-{feature_name}`.*
   *Note: For feature development, `{deviation_path}` should resolve to `feature-{feature_name}/development-plan/{logical_part_name}`.*
   *Note: For feature development, `{feature_doc_path}` should resolve to `feature-{feature_name}`.*

### Tool: `complete_task_status` Usage
Refer to [core-development-workflow.md#Tool: `complete_task_status` Usage](core-development-workflow.md#tool-complete_task_status-usage)

## Integration Testing Decision Point
Refer to [core-development-workflow.md#Integration Testing Decision Point](core-development-workflow.md#integration-testing-decision-point)
   *Note: For feature development, `{feature_doc_path}` should resolve to `feature-{feature_name}`.*

## Task Completion Log Structure
Refer to [core-development-workflow.md#Task Completion Log Structure](core-development-workflow.md#task-completion-log-structure)
   *Note: For feature development, `{feature_doc_path}` should resolve to `feature-{feature_name}`.*

## Error Handling and Recovery
Refer to [core-development-workflow.md#Error Handling and Recovery](core-development-workflow.md#error-handling-and-recovery)
   *Note: For feature development, `{feature_doc_path}` should resolve to `feature-{feature_name}`.*

## Best Practices Summary
Refer to [core-development-workflow.md#Best Practices Summary](core-development-workflow.md#best-practices-summary)
   *Note: Additionally, for feature development, ensure to "Only create PRD subtask if PRD doesn't already exist".*

## Notes on Workflow Phases
Refer to [core-development-workflow.md#Notes on Workflow Phases](core-development-workflow.md#notes-on-workflow-phases)
