# Intelligent Development & Documentation Workflow with Task Orchestrator MCP v4

## Overview
This workflow orchestrates comprehensive development and documentation using the Task Orchestrator MCP server. It ensures architecture documentation, creates detailed development plans, and maintains full documentation.

Refer to [documentation-structure.md](documentation-structure.md) for documentation structure.

## Pre-Phase: Architecture Validation
**CRITICAL**: Before goal creation, validate architecture documentation is adequate.

Refer to [architecture-documentation-workflow.md](architecture-documentation-workflow.md) for  for creation of architecture documents.

**If Architecture Docs Adequate**: Proceed to Phase 1

## Phase 2: Create Development Goal and Task Structure

### Tool: `create_goal`
Refer to [tool-payloads.md#create-goal-payload-create_goal](tool-payloads.md#create-goal-payload-create_goal).

### Tool: `add_tasks` - Main Task Structure
Refer to [tool-payloads.md#main-task-structure-payload-add_tasks](tool-payloads.md#main-task-structure-payload-add_tasks).

## Post-Goal Creation Instructions

### Update Feature Global Context
After goal creation, update `knowledge-base/feature-docs/{feature_doc_path}/feature-global-context.md` using `templates/feature-docs/feature-global-context.tmpl.md`.

## Phase 3: Dynamic Development Task Creation
After development plan completion, dynamically create development subtasks based on identified logical parts.

### Tool: `add_tasks` - Development Subtasks
For each logical part:
Refer to [tool-payloads.md#dynamic-development-task-creation-payload-add_tasks](tool-payloads.md#dynamic-development-task-creation-payload-add_tasks).

## Task Execution Guidelines

### Pre-Development Task Execution
   1. **Development Plan Creation**:
      - Identify logical parts based on entities or related entity groups.
      - Ensure each part is atomic and independently testable.
      - Create clear dependencies and execution sequence.
      - Include detailed technical specifications for each component.
      - **Extract and understand**:
         - Module boundaries and relationships
         - Data flow patterns
         - System interfaces
         - Component dependencies
      - Consider scalability, performance, and maintainability.
      - **Confirm logical part division with user at appropriate stage.**

   <PROGRAMMING PRINCIPLES>
      - separation_of_concerns: ensure new code maintains defined separation of concerns
      - algorithm_efficiency: use the most efficient algorithms and data structures
      - modularity: write modular code, break complex logic into smaller atomic parts. Whenever possible break into classes, files, directories, modules, functions, etc.
      - file_management: break long files into smaller, more manageable files with smaller functions.
      - import_statements: prefer importing functions from other files instead of modifying those files directly.
      - file_organization: organize files into directories and folders.
      - reuse: prefer to reuse existing code instead of writing it from scratch.
      - code_preservation: Preserve What Works. Don’t modify working components without necessity.
      - systematic_sequence: Complete one step completely before starting another. Keep systematic sequence of functionalities.
      - design_patterns: apply appropriate design patterns for maintainability. Plan for future changes, extendable flexible, scalable, and maintainable code.
      - proactive_testing: any functionality codes should be accompanied with proper test code.
   </PROGRAMMING PRINCIPLES>

   # Below is the Planning Workflow to follow:

   1. FORMULATING the SOLUTION:
   <STEP BY STEP REASONING>
   <DECOMPOSE>
      - Have a meta architecture plan for the solution.
      - Break down the problem into key concepts and smaller sub-problems.
   </DECOMPOSE>
      a. Think about all possible ways to solve the problem.
      b. Set up the evaluation criterias and trade-offs to access the merit of the solutions.
      c. Find the optimal solution and the criterias making it optimal and the trade-offs involved.

   <MULTI ATTEMPTS>
      a. Reason out rigorously about the optimality of the solution.
      b. Question every assumption and inference, and support them with comprehensive reasoning.
      c. Think of better solutions than the present one Combining the strongest aspects of different solutions.
      d. Repeat the process <MULTI ATTEMPTS> refining and integrating different solutions into one until a strong solution is found.
      d. Can use <WEB USE> if needed to do research.
   </MULTI ATTEMPTS>
   </STEP BY STEP REASONING>

   2. SOLUTION VALIDATION:

   <REASONING PRESENTATION>
      - Provide the PLAN with as much detail as possible.
      - Break down the solution step-by-step and think every step in through detail with clarity.
      - Reason out its optimality w.r.t. other promising solutions.
      - Explicitly tell all your assumptions, choices and decisions
      - Explain trade-offs in solutions
      - restate my query in your own words if necessary after giving the solution
   </REASONING PRESENTATION>
      - Validate the plan against architectural constraints defined in `knowledge-base/architecture-docs/{project-name}/{module-name}/code-change-rules.md`.
      - Before implementing, validate the SOLUTION plan produced by <REASONING PRESENTATION>.

   ---
   # Features of the Plan:
   1. The plan should be:
      a. `extendable`: Further codes can be easily build on the current planning. And extending it in future will be well supported. Anticipate future functionalities and make the plan adaptable to those.
      b. `detailed`: The plan be very detailed, taking care of every aspect that will be affected with it and in every possible ways.
      c. `robust`: Plan for error scenarious and failure cases and have fallbacks for possible failure cases.
      d. `accurate`: Every aspect should be in sync with each other and individual components should be correct and the interfaces should be correct.
   ---

2. **Testing Strategy**:
   - Design unit tests with >90% coverage target - document in `knowledge-base/feature-docs/{feature_doc_path}/testing-plan/unit-tests.md`.
   - Create integration test scenarios covering all user workflows - document in `knowledge-base/feature-docs/{feature_doc_path}/testing-plan/integration-tests.md`.
   - Include performance testing requirements.
   - Plan for security and accessibility testing.

### Development Task Execution

#### Debugging Workflow
   <DEBUGGING>
      Below debugging routine is for persistent errors or incomplete fixes. So use this routine only when got stuck.
      <DIAGNOSE>
         - Gather all error messages, logs, and behavioral symptoms
         - Add relevant context from files
         - Retrieve relevant project architecture from `knowledge-base/architecture-docs/{project-name}/{module-name}/structure.md`, current plan from `{plan_path}` and current working task from the Task Orchestrator MCP tool.
      </DIAGNOSE>
      - Whenever you fail with any test result, always add more context using <DIAGNOSE> and debug the issue effectively first, then when you have complete information move towards a fix.
      - Explain your OBSERVATIONS and then give your REASONINGS to explain why this is EXACTLY the issue and not anything else.
      - If you aren't sure, first get more OBSERVATIONS by adding more <DIAGNOSE> context to the issue so you exactly and specifically know what's wrong. Additionally you can seek <CLARIFICATION> if required.
      - Understand architecture using relevant sections of `knowledge-base/architecture-docs/{project-name}/{module-name}/structure.md` and `knowledge-base/architecture-docs/{project-name}/{module-name}/code-change-rules.md`.
      - Use <STEP BY STEP REASONING> to think of all possible causes like architectural misalignment, design flaw rather than just a bug, etc.
      - Look for similar patterns already solved elsewhere in the codebase in `knowledge-base/feature-docs/{feature_doc_path}/logs/error-rca-log.md` and use web search if needed.
      - Present your fix using <REASONING PRESENTATION> for validation.
      - Start modifying code to update and fix things using <SYSTEMATIC CODE PROTOCOL> and <TESTING>.
       </DEBUGGING>

1. **Error Documentation**:
   - Update `knowledge-base/feature-docs/{feature_doc_path}/logs/error-rca-log.md` immediately upon error, using `templates/feature-docs/logs/error-rca-log.tmpl.md`.
   - Document: error type, context, root cause, solution, prevention measures.
   - Include patterns that might recur.

2. **Deviation Tracking**:
   - Create or update `knowledge-base/feature-docs/{deviation_path}/deviation.md` using `templates/feature-docs/development-plan/deviation.tmpl.md` when implementation differs from plan.
   - Explain reasoning for deviations.
   - Update subsequent plans if deviations affect other components.

3. **Task Completion Logging**:
   - Update `knowledge-base/feature-docs/{feature_doc_path}/logs/task-completion-log.md` after each subtask completion using MCP tool status and `templates/feature-docs/logs/task-completion-log.tmpl.md`.
   - Check for discrepancies between planned and actual status.
   - Prompt user input for unexpected discrepancies.

### Tool: `complete_task_status` Usage
Mark tasks complete only when:
- All deliverables are created and verified.
- Documentation is updated.
- Tests are written and passing (for development tasks).
- Code review is completed (if applicable).

Refer to [tool-payloads.md#complete-task-status-payload-complete_task_status](tool-payloads.md#complete-task-status-payload-complete_task_status).

## Integration Testing Decision Point
When reaching "Execute Integration Testing" task:

### Ask User for Integration Testing Approach
**User Input Required based on global configuration**:
- "automated" - Execute all integration tests programmatically for each logical part.
- "manual" - Provide detailed manual testing instructions and consolidate to one overall integration testing task.

**For Manual Testing**: Integration testing can be consolidated to one task at overall level since manual testing doesn't need to be broken down per logical part.

**For Automated Testing**: User can choose to have integration testing per logical part or consolidated.

Update `knowledge-base/feature-docs/{feature_doc_path}/feature-global-context.md` with the chosen approach.

## Task Completion Log Structure
Update `knowledge-base/feature-docs/{feature_doc_path}/logs/task-completion-log.md`.

## Error Handling and Recovery

### Common Recovery Scenarios:
1. **Task Creation Failure**: Verify parent task IDs exist and are not completed.
2. **Missing Prerequisites**: Ensure architecture docs and requirements are adequate.
3. **Session Interruption**: Use `get_tasks` to retrieve current state and update `knowledge-base/feature-docs/{feature_doc_path}/feature-global-context.md`.

### Tool: `get_tasks` - Status Check
Refer to [tool-payloads.md#get-tasks-payload-get_tasks](tool-payloads.md#get-tasks-payload-get_tasks).

## Best Practices Summary
1. Validate architecture documentation is adequate.
2. Stop workflow if requirements are inadequate.
3. Create atomic, independent logical parts based on entities or related entity groups.
4. Document errors immediately using task-integrated templates.
5. Update task completion log consistently, checking for discrepancies.
6. Achieve comprehensive test coverage using reference documents.
7. Update architectural documentation to reflect reality post-development.
8. Validate any changes against architectural constraints.
9. Use global configuration for testing approach decisions.
10. Confirm logical part divisions with the user at appropriate stages.

## Notes on Workflow Phases
- **Pre-Phase**: Architecture validation and setup.
- **Phase 1**: Requirements validation and verification.
- **Phase 2**: Goal and task structure creation.
- **Phase 3**: Dynamic development task creation based on logical parts.

This workflow ensures comprehensive development with proper documentation, error tracking, and task management, maintaining continuity across development sessions and accommodating different integration testing approaches.
