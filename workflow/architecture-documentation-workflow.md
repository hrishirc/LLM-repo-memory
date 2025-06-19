---
description: Comprehensive workflow for discovering modules and managing their architecture documentation with enhanced validation, error handling, and automation capabilities.
globs: 
alwaysApply: true
---

# Architecture Documentation Workflow

## Overview
This workflow provides a comprehensive solution for discovering modules and managing their architecture documentation. It supports both automated documentation through feature/tweak development and manual module-specific operations. The workflow ensures consistent, high-quality architecture documentation across all project modules with enhanced validation, error handling, and automation capabilities.

## Operation Modes
- `CREATE`: Creates documentation if it doesn't exist (CREATE IF NOT EXISTS)
- `RECREATE`: Deletes existing documentation and creates fresh documentation
- `UPDATE`: Updates existing documentation or creates if not exists (UPDATE IF NOT EXISTS)
- `VALIDATE`: Validates existing documentation without making changes
- `ANALYZE`: Performs deep analysis of module structure and dependencies

## Parameters
- `project-name`: The name of the current project (automatically detected from workspace)
- `module-name`: Optional. The name of the module within the project (e.g., `default-module`, `module-1`). If not provided, all modules will be processed.
- `operation-mode`: The mode of operation - either 'CREATE', 'RECREATE', 'UPDATE', 'VALIDATE', or 'ANALYZE'.
- `target-modules`: Optional list of specific modules to process. If not provided, all modules will be processed.
- `force-overwrite`: Optional boolean flag to force overwrite existing documentation (default: false)
- `validate-only`: Optional boolean flag to only validate without making changes (default: false)
- `include-dependencies`: Optional boolean flag to include dependency analysis (default: true)
- `quality-threshold`: Optional numeric threshold for content quality validation (default: 0.8)
- `parallel-processing`: Optional boolean flag to enable parallel module processing (default: true)
- `template-version`: Optional string to specify template version to use (default: "latest")

## Template Structure
The workflow uses the following template files located in `templates/architecture-docs/`:
- `purpose.tmpl.md`: Business purpose and responsibilities template
- `tech-stack.tmpl.md`: Technology stack and dependencies template
- `structure.tmpl.md`: Architecture structure and components template
- `code-change-rules.tmpl.md`: Coding standards and SOPs template
- `important-commands.tmpl.md`: Development commands and workflows template

## Automatic Detection
- Repository name is automatically detected using git:
  ```bash
  git config --get remote.origin.url | sed -E 's/.*[:/]([^/]+)\/[^/]+\.git$/\1/'
  ```
- Project name is automatically detected from the workspace path
- If no module name is provided, the workflow will process all modules in the project
- Module discovery uses intelligent pattern matching for common project structures

## Enhanced Workflow Steps

### 1. **Enhanced Parameter Detection and Validation**
   - Detect repository name from git configuration with fallback options
   - Extract project name from workspace path with validation
   - Validate workspace structure and permissions with detailed error reporting
   - Perform parameter validation and provide helpful error messages
   - Set default values for optional parameters
   - Validate template availability and version compatibility
   - If no module name provided, proceed with all modules

### 2. **Intelligent Module Discovery and Analysis**
   - If `target-modules` is provided:
     - Validate that specified modules exist in the project with detailed error reporting
     - Process only the specified modules
     - Provide suggestions for similar module names if exact match not found
   - Otherwise:
     - Analyze repository structure using multiple detection strategies:
       - Package.json/requirements.txt based detection
       - Directory structure analysis
       - Build configuration analysis
       - Git submodule detection
       - Docker/container configuration analysis
       - CI/CD pipeline configuration analysis
     - For each module, perform comprehensive analysis:
       - Module path and accessibility with permission checks
       - Documentation status with quality scoring
       - Last modified date with git history analysis
       - Dependencies and relationships with impact analysis
       - Code complexity and size metrics
       - Technology stack detection
       - Business context analysis
       - Security vulnerability assessment
       - Performance characteristics analysis
     - Create a comprehensive module status table with actionable insights

### 3. **Advanced Status Analysis and Validation**
   - For each module to process, perform comprehensive validation:
     - Check existence of documentation directory:
       - `knowledge-base/architecture-docs/{project-name}/{module-name}/`
     - Check existence and content of required files:
       - `structure.md`: Architecture structure, components, data flow
       - `tech-stack.md`: Technologies, frameworks, versions
       - `purpose.md`: Business purpose, responsibilities
       - `code-change-rules.md`: Coding standards, patterns
       - `important-commands.md`: Development commands
     - Perform advanced content quality validation:
       - Check for placeholder text or incomplete sections using NLP analysis
       - Verify technical accuracy and currency against actual codebase
       - Ensure business context is documented with stakeholder validation
       - Validate code examples and commands with syntax checking
       - Check for broken links or references with automated testing
       - Assess documentation completeness and consistency
       - Validate against industry best practices and standards
       - Check for security-sensitive information exposure
       - Validate template compliance and version compatibility
   - Categorize modules with enhanced status codes:
     - "Fully Documented": All files exist with valid, complete content (quality score > 0.9)
     - "Well Documented": All files exist with good content (quality score 0.7-0.9)
     - "Partially Documented": Some files exist with valid content (quality score 0.5-0.7)
     - "Poorly Documented": Documentation exists but content is inadequate (quality score 0.3-0.5)
     - "Not Documented": No documentation exists
     - "Needs Update": Documentation exists but content is outdated (quality score < 0.3)
     - "Invalid": Documentation exists but contains errors or placeholder content
     - "Template Mismatch": Documentation exists but uses outdated templates

### 4. **Enhanced User Presentation and Selection** (Only if `target-modules` is not provided)
   - Display comprehensive module status table with enhanced columns:
     - Project Name
     - Module Name
     - Module Path
     - Documentation Status
     - Content Quality Score (0-1 scale)
     - Last Modified
     - Dependencies (with impact analysis)
     - Action Required (with priority levels)
     - Estimated Effort (in hours)
     - Risk Assessment
     - Business Impact
     - Template Version
     - Security Status
   - Provide advanced user interaction capabilities:
     - Select specific modules for documentation with multi-select
     - Choose bulk operations with confirmation dialogs
     - Filter modules by status, size, complexity, or business impact
     - Sort by various criteria with multi-level sorting
     - Preview existing documentation with diff highlighting
     - Export module analysis reports
     - Set quality thresholds and validation rules
     - Configure template versions and preferences

### 5. **Enhanced Documentation Task Creation**
   - Based on user selection or `target-modules`, create a comprehensive goal:
     ```json
     {
         description: "Process architecture documentation for selected modules with enhanced validation and quality assurance",
         repoName: "{auto-detected-repository-name}",
         metadata: {
             operationMode: "{operation-mode}",
             qualityThreshold: "{quality-threshold}",
             includeDependencies: "{include-dependencies}",
             parallelProcessing: "{parallel-processing}",
             templateVersion: "{template-version}",
             projectName: "{project-name}",
             targetModules: "{target-modules}"
         }
     }
     ```
   - Add enhanced tasks for each selected module:
     ```json
     {
         title: "Process Documentation for {module-name}",
         description: "Process architecture documentation for {module-name} with operation-mode: {operation-mode} and quality validation",
         subtasks: [
             {
                 title: "Validate Current State",
                 description: "Perform comprehensive validation of current documentation status and content quality"
             },
             {
                 title: "Analyze Module Structure",
                 description: "Deep analysis of module architecture, dependencies, and business context"
             },
             {
                 title: "Validate Template Compatibility",
                 description: "Check template version compatibility and update if necessary"
             },
             {
                 title: "Process Documentation",
                 description: "Execute {operation-mode} operation for {module-name} with quality assurance"
             },
             {
                 title: "Validate Output",
                 description: "Verify created/updated documentation meets quality standards and best practices"
             },
             {
                 title: "Generate Quality Report",
                 description: "Create detailed quality assessment and improvement recommendations"
             },
             {
                 title: "Security Review",
                 description: "Review documentation for security-sensitive information and compliance"
             }
         ]
     }
     ```

### 6. **Enhanced Documentation Processing**
   - For each module, implement intelligent processing:
     - **If `operation-mode` is 'CREATE':**
       - If documentation exists and is valid: Return "SKIPPED" with quality score
       - If documentation missing or invalid: Create new documentation with validation
       - If `force-overwrite` is true: Create new documentation with backup
       - Validate template version compatibility before creation
     - **If `operation-mode` is 'RECREATE':**
       - Create backup of existing documentation if any
       - Delete existing documentation with confirmation
       - Create fresh documentation from scratch with enhanced templates
       - Validate all templates are properly filled with quality checks
       - Ensure template version compatibility
     - **If `operation-mode` is 'UPDATE':**
       - If documentation exists and is valid: Update with change tracking
       - If documentation missing or invalid: Create new documentation
       - Preserve existing valid content while updating outdated sections
       - Implement intelligent merge strategies for conflicting content
       - Update template version if necessary
     - **If `operation-mode` is 'VALIDATE':**
       - Perform comprehensive validation without making changes
       - Generate detailed quality reports and recommendations
       - Identify specific areas for improvement
       - Check template version compatibility
     - **If `operation-mode` is 'ANALYZE':**
       - Perform deep analysis of module structure and dependencies
       - Generate comprehensive analysis reports
       - Provide architectural recommendations and insights
       - Assess security and performance characteristics

### 7. **Advanced Quality Assurance and Validation**
   - For each processed module, implement comprehensive validation:
     - Validate all required files were created/updated with checksums
     - Perform automated content quality assessment using NLP
     - Verify technical accuracy against actual codebase with automated testing
     - Ensure business context is properly documented with stakeholder validation
     - Test all commands and code examples with automated execution
     - Validate links and references with automated link checking
     - Perform consistency checks across all documentation files
     - Validate against industry standards and best practices
     - Check for security-sensitive information exposure
     - Validate template compliance and version compatibility
     - Assess documentation accessibility and readability
   - Generate comprehensive quality reports with:
     - Content completeness score with detailed breakdown
     - Technical accuracy assessment with specific recommendations
     - Business context coverage analysis
     - Actionable improvement recommendations with priority levels
     - Compliance assessment against documentation standards
     - Risk assessment and mitigation strategies
     - Security compliance assessment
     - Template version compatibility report

### 8. **Enhanced Progress Tracking and Error Handling**
   - Implement comprehensive monitoring and tracking:
     - Real-time progress updates with detailed status information
     - Task dependency tracking and parallel execution management
     - Resource usage monitoring and optimization
     - Performance metrics and optimization recommendations
     - Template version tracking and compatibility monitoring
   - Advanced error handling and recovery:
     - **Git Repository Issues**: Handle missing git repository with fallback options
     - **Permission Errors**: Provide detailed guidance and automated permission checking
     - **Template Errors**: Validate templates with automated testing and fallback generation
     - **Content Generation Failures**: Implement retry mechanisms with different approaches
     - **Validation Failures**: Provide specific feedback with actionable solutions
     - **Partial Failures**: Continue processing with comprehensive failure reporting and recovery options
     - **Network Issues**: Handle connectivity problems with offline mode support
     - **Template Version Conflicts**: Handle template version mismatches with migration strategies
     - **Security Violations**: Handle security-sensitive information detection with remediation guidance
   - Provide comprehensive rollback and recovery capabilities:
     - Automatic backup creation before major changes
     - Incremental backup strategies for large operations
     - Rollback procedures with validation
     - Recovery mechanisms for failed operations
     - Template version rollback capabilities

### 9. **Enhanced Final Report and Recommendations**
   - Generate comprehensive final reports with:
     - Executive summary with key metrics and insights
     - Detailed summary of actions taken for each module
     - Status of each module with quality scores and improvement metrics
     - Content quality assessment with trend analysis
     - Risk assessment and mitigation strategies
     - Performance metrics and optimization recommendations
     - Compliance assessment against documentation standards
     - Business impact analysis and ROI calculations
     - Security compliance assessment
     - Template version compatibility summary
   - Provide actionable next steps with:
     - Prioritized improvement recommendations
     - Maintenance schedules and automation strategies
     - Integration with development workflows and CI/CD pipelines
     - Training and knowledge sharing recommendations
     - Quality monitoring and continuous improvement strategies
     - Security review schedules
     - Template update strategies

## Enhanced Integration with Feature/Tweak Development
When called from feature/tweak development workflows:
- `operation-mode` is always 'CREATE' with enhanced validation
- `target-modules` is not provided (process all modules)
- No user interaction is required (automated mode)
- Workflow proceeds automatically with comprehensive logging
- Each module is processed independently with quality validation:
  - Existing valid documentation is preserved with quality assessment
  - Missing or invalid documentation is created with enhanced templates
  - Comprehensive quality validation is performed with detailed reporting
  - Template version compatibility is ensured
- Returns enhanced status codes with quality metrics:
  - "SKIPPED": Documentation exists and is valid (with quality score)
  - "CREATED": New documentation was created (with quality score)
  - "UPDATED": Documentation was updated (with quality score)
  - "FAILED": Operation failed with detailed reason and recovery suggestions
  - "PARTIAL": Some operations succeeded with detailed breakdown
  - "TEMPLATE_UPDATED": Template version was updated during processing

## Advanced Error Handling and Recovery
- **Git Repository Issues**: Handle missing git repository with multiple fallback strategies
- **Permission Errors**: Provide automated permission checking and resolution guidance
- **Template Errors**: Implement template validation with automated testing and fallback generation
- **Content Generation Failures**: Provide multiple retry strategies with different approaches
- **Validation Failures**: Generate specific feedback with actionable solutions and examples
- **Partial Failures**: Continue processing with comprehensive failure reporting and recovery options
- **Network Issues**: Implement offline mode with local caching and synchronization
- **Resource Constraints**: Provide resource optimization and scaling recommendations
- **Template Version Conflicts**: Handle template version mismatches with migration strategies
- **Security Violations**: Handle security-sensitive information detection with remediation guidance

## Performance Optimization and Scalability
- Implement intelligent parallel processing with resource management
- Cache module discovery results with intelligent invalidation
- Optimize file system operations with batch processing
- Provide progress indicators with estimated completion times
- Allow cancellation of bulk operations with graceful shutdown
- Implement resource monitoring and optimization
- Provide scaling recommendations for large projects
- Cache template validation results with version tracking

## Enhanced Tool Payloads
Refer to [tool-payloads.md](tool-payloads.md) for:
- Enhanced Architecture Documentation Tasks Payload
- Enhanced Architecture Documentation Update Tasks Payload
- Enhanced Create Goal Payload with metadata
- Advanced Quality Validation Payload
- Module Analysis Payload
- Progress Tracking Payload
- Template Version Management Payload
- Security Assessment Payload

## Enhanced Status Codes
The workflow returns enhanced status codes with quality metrics:
- "SKIPPED": Documentation exists and is valid, no action taken (quality score included)
- "CREATED": New documentation was successfully created (quality score included)
- "UPDATED": Existing documentation was successfully updated (quality score included)
- "FAILED": Operation failed, includes detailed reason and recovery suggestions
- "PARTIAL": Some operations succeeded, others failed (with detailed breakdown)
- "VALIDATED": Validation completed successfully (quality assessment included)
- "ANALYZED": Analysis completed successfully (comprehensive report included)
- "TEMPLATE_UPDATED": Template version was updated during processing
- "SECURITY_REVIEWED": Security assessment completed with findings
- "COMPLIANCE_CHECKED": Compliance assessment completed with recommendations

These enhanced status codes are used by:
- Feature Development Workflow with quality metrics
- Tweak Development Workflow with enhanced validation
- Manual module documentation operations with comprehensive reporting
- Quality assurance processes with detailed metrics
- Continuous integration and deployment pipelines
- Security and compliance monitoring systems

## Maintenance and Continuous Improvement
- Implement automated template currency validation and updates
- Periodic review of documentation quality standards with stakeholder feedback
- Updates to reflect new technology patterns and best practices
- Integration with new development tools and workflows
- Feedback loop from development teams with automated collection
- Performance monitoring and optimization based on usage patterns
- Quality metrics tracking and trend analysis
- Automated compliance checking against industry standards
- Template version management and migration strategies
- Security assessment automation and monitoring

## Security and Compliance
- Implement secure handling of sensitive information in documentation
- Provide audit trails for all documentation changes
- Ensure compliance with data protection and privacy regulations
- Implement access control and permission management
- Provide secure backup and recovery procedures
- Validate documentation against security best practices
- Implement secure communication channels for sensitive operations
- Automated detection of security-sensitive information in documentation
- Compliance monitoring and reporting capabilities
- Security training and awareness integration

## Monitoring and Analytics
- Track documentation quality metrics over time
- Monitor usage patterns and performance metrics
- Generate analytics reports for stakeholders
- Implement alerting for quality degradation
- Provide dashboards for documentation health
- Track compliance and audit requirements
- Monitor resource usage and optimization opportunities
- Template version usage and compatibility tracking
- Security compliance monitoring and reporting
- Performance trend analysis and optimization recommendations

## Template Management
- Version control for all documentation templates
- Automated template validation and testing
- Migration strategies for template version updates
- Template customization and extension capabilities
- Template usage analytics and optimization
- Template security review and compliance checking
- Template performance monitoring and optimization
- Template documentation and training materials
