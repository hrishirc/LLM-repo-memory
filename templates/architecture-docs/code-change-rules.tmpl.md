# {Service}/{Module} Code Change Rules & SOPs

## 1. Coding Standards
- **Language Version(s)**: [Specify required language versions, e.g., Java 17, ECMAScript 2022]
- **Style Guide**: [Link to general style guide (e.g., Google Java Style Guide, Airbnb JavaScript Style Guide). Note any module-specific deviations or key points below.]
  - Key Deviation 1: ...
- **Naming Conventions**: [Key naming conventions for variables, classes, methods, files, etc.]
- **Formatting**: [Refer to linter/formatter configuration (e.g., .prettierrc, .editorconfig, Checkstyle config). Highlight any manual overrides if necessary.]

## 2. Design Patterns
- **Preferred Patterns**: [List design patterns commonly used or encouraged in this module (e.g., Repository, Service Layer, Factory, Singleton - with caution).]
- **Anti-Patterns to Avoid**: [List any patterns that have proven problematic or should be avoided in this module's context.]

## 3. Version Control & Branching
- **Branching Strategy**: [Describe the branching model, e.g., GitFlow (main, develop, feature/xxx, release/xxx, hotfix/xxx), GitHub Flow. Naming conventions for branches.]
- **Commit Messages**: [Guidelines for writing clear and informative commit messages (e.g., Conventional Commits standard).]
- **Pull Request (PR) / Merge Request (MR) Process**:
    - Template: [Link to PR/MR template if used]
    - Minimum Reviewers: [e.g., 1, 2]
    - CI Checks: [Required CI checks to pass before merge]

## 4. Code Review Process
- **Reviewers**: [Who should review? (e.g., at least one senior dev, module owner, peer review)]
- **Checklist for Reviewers**: [Key items to check during a review:]
    - Functionality meets requirements
    - Code clarity and maintainability
    - Adherence to coding standards and design patterns
    - Adequate test coverage
    - No obvious security vulnerabilities
    - Documentation updated (code comments, relevant .md files)
    - Performance considerations
- **Process**: [Steps for submitting, conducting, and completing a code review.]

## 5. Testing Requirements
- **Unit Tests**:
    - **Coverage Target**: [e.g., >80% line coverage, >70% branch coverage]
    - **Frameworks**: [e.g., JUnit, Mockito, Jest, PyTest]
    - **Requirements**: [e.g., Test all public methods, cover business logic, edge cases, error conditions.]
- **Integration Tests**:
    - **When Required**: [e.g., For changes involving multiple components or external services.]
    - **Scope**: [What should they cover? e.g., API contract testing, service-to-service interaction.]
- **End-to-End Tests**: [If applicable, how are they handled? Who is responsible?]

## 6. Error Handling
- **Exception Strategy**: [Custom exceptions vs. standard exceptions, checked vs. unchecked (if applicable).]
- **Logging Errors**: [Format, level (ERROR), information to include (e.g., stack trace, request ID, user ID if anonymized).]
- **User-Facing Errors**: [How should they be presented? Error codes, user-friendly messages.]

## 7. Logging Standards
- **Library**: [e.g., SLF4j with Logback, Winston]
- **Levels**: [Clear guidelines on using DEBUG, INFO, WARN, ERROR.]
- **Format**: [Standard log message format, e.g., timestamp, level, thread, logger name, message, correlation ID.]
- **Sensitive Information**: [Strict rules on WHAT NOT TO LOG (PII, secrets, etc.).]

## 8. API Design (if applicable)
- **Style**: [e.g., RESTful (JSON), GraphQL]
- **Versioning**: [How are APIs versioned? (e.g., URL path /v1/, header)]
- **Authentication/Authorization**: [Standard mechanisms used (e.g., OAuth2, JWT).]
- **Request/Response Standards**: [e.g., Snake_case vs camelCase for JSON fields, standard error response structure.]

## 9. Security Best Practices
- **Input Validation**: [Always validate and sanitize input from all sources.]
- **Parameterized Queries/ORMs**: [To prevent SQL injection.]
- **Secrets Management**: [How are secrets stored and accessed? (e.g., Vault, AWS Secrets Manager)]
- **Dependency Vulnerabilities**: [Process for checking and updating vulnerable dependencies.]
- **Principle of Least Privilege**: [Ensure components and users have only necessary permissions.]

## 10. Performance Guidelines
- **Performance Standards**: [Response time targets, throughput requirements, memory usage limits]
- **Optimization Practices**: [Database query optimization, caching strategies, async processing]
- **Profiling Requirements**: [When and how to profile code changes]
- **Resource Management**: [Connection pooling, memory management, cleanup procedures]

## 11. Documentation Requirements
- **Code Documentation**: [Standards for inline comments, method documentation, class documentation]
- **API Documentation**: [Standards for API docs, when to update OpenAPI specs]
- **Architecture Documentation**: [When to update structure.md, tech-stack.md, etc.]
- **README Updates**: [When and how to update project README files]

## 12. Database Change Management
- **Migration Scripts**: [Standards for database migrations, rollback procedures]
- **Schema Changes**: [Approval process for schema modifications]
- **Data Seeding**: [Standards for test data and production data seeding]
- **Indexing Strategy**: [Guidelines for adding/removing database indexes]

## 13. Configuration Management
- **Environment Variables**: [Standards for configuration, secrets vs. non-secrets]
- **Feature Flags**: [How to implement and manage feature toggles]
- **Configuration Validation**: [Requirements for validating configuration at startup]

## 14. SOP: Adding a New Feature/Component/Endpoint
[Step-by-step process for typical development tasks within this module.]
1. Create a new feature branch from `develop` (e.g., `feature/JIRA-123-my-new-feature`).
2. Create/update design documents or task breakdown if necessary.
3. Update relevant architecture documentation (`structure.md`, `tech-stack.md` if new tech) *before or during* implementation.
4. Implement the feature, adhering to coding standards.
5. Write comprehensive unit tests (and integration tests if applicable).
6. Ensure all tests pass and meet coverage targets.
7. Update `important-commands.md` if new commands are introduced.
8. Perform self-review against the code review checklist.
9. Create a Pull Request/Merge Request with a clear description and link to the task/issue.
10. Address review comments and ensure CI pipeline passes.
11. Merge (or await merge by authorized personnel).

## 15. SOP: Bug Fix Process
1. Create a hotfix branch from the affected release branch (e.g., `hotfix/JIRA-456-critical-bug`).
2. Reproduce the bug locally and write a failing test case.
3. Implement the minimal fix required to resolve the issue.
4. Ensure the test case now passes and no existing tests are broken.
5. Update documentation if the bug fix changes behavior.
6. Create PR with clear description of the bug and fix.
7. Get expedited review (may require fewer reviewers for critical fixes).
8. Deploy to staging/test environment for validation.
9. Merge and deploy to production following emergency deployment procedures if critical.

## 16. SOP: Dependency Updates
1. Check for security vulnerabilities in current dependencies.
2. Review release notes for breaking changes.
3. Update dependencies in a separate branch (e.g., `chore/update-dependencies`).
4. Run full test suite to ensure no regressions.
5. Update any code affected by breaking changes.
6. Test in development environment thoroughly.
7. Update `tech-stack.md` with new versions.
8. Create PR with detailed notes on what was updated and any changes made.

## 17. Dependency Management
- **Adding New Dependencies**: [Process or considerations: license checks, security vulnerability scan, necessity, alternatives.]
- **Updating Dependencies**: [Frequency, testing strategy after updates, process for major version upgrades.]
- **Dependency Approval**: [Who needs to approve new dependencies, especially for security-sensitive components.]

## 18. Specialized Development Practices
[Standards and practices that don't fit typical categories but are important for this module:]

### 18.1 Microservices-Specific Practices
- **Service Communication**: [Standards for inter-service communication, circuit breakers, retries]
- **Distributed Tracing**: [How to implement and maintain trace correlation across services]
- **Service Versioning**: [Backwards compatibility, API versioning strategies]

### 18.2 Event-Driven Development
- **Event Schema Management**: [Standards for event structure, versioning, backward compatibility]
- **Event Publishing**: [When and how to publish events, error handling]
- **Event Consumption**: [Standards for event handlers, idempotency, failure recovery]

### 18.3 Real-Time Features
- **WebSocket Management**: [Connection handling, authentication, message formatting]
- **Push Notifications**: [Standards for mobile/web push notifications]
- **Live Data Updates**: [Strategies for real-time data synchronization]

### 18.4 Batch Processing
- **Job Design**: [Standards for batch job implementation, error handling, monitoring]
- **Data Processing**: [ETL patterns, data validation, rollback procedures]
- **Scheduling**: [How to implement and manage scheduled tasks]

### 18.5 Machine Learning/AI Integration
- **Model Deployment**: [Standards for deploying and versioning ML models]
- **Data Pipeline**: [Standards for ML data preprocessing and feature engineering]
- **A/B Testing**: [Implementation of experiments and statistical significance]

## 19. Compliance and Regulatory Requirements
[Special coding practices required for compliance:]
- **Data Privacy (GDPR/CCPA)**: [Data handling, anonymization, deletion procedures]
- **Financial Regulations**: [Audit trails, transaction logging, data retention]
- **Healthcare (HIPAA)**: [PHI handling, encryption requirements, access logging]
- **Industry-Specific Standards**: [SOX compliance, PCI DSS, etc.]

## 20. Team-Specific Practices
[Practices that vary by team role or specialization:]
- **Frontend-Specific**: [Component libraries, state management, accessibility standards]
- **Backend-Specific**: [Service patterns, database optimization, caching strategies]
- **DevOps Integration**: [Infrastructure as code, deployment automation, monitoring]
- **QA Collaboration**: [Test automation standards, bug reporting procedures]

## 21. Emergency Procedures
- **Incident Response**: [Code rollback procedures, hotfix deployment, communication protocols]
- **Production Debugging**: [Safe debugging practices, log analysis, performance monitoring]
- **Data Recovery**: [Procedures for data corruption or loss scenarios]

## 22. Additional Development Context
[Catch-all section for development practices that don't fit other categories:]
- **Prototype Development**: [Standards for experimental features, technical spikes]
- **Legacy Code Maintenance**: [Practices for working with legacy systems, refactoring guidelines]
- **Cross-Team Collaboration**: [Standards for shared libraries, API contracts, integration testing]
- **Technical Debt Management**: [How to identify, document, and prioritize technical debt]
- **Knowledge Sharing**: [Code review learning points, internal tech talks, documentation standards]
- **Onboarding**: [Specific practices new team members should learn]
- **Tool-Specific Workflows**: [IDE-specific practices, custom tooling usage]

## 23. Monitoring and Observability Standards
- **Metrics Collection**: [What metrics to collect, naming conventions, alerting thresholds]
- **Distributed Tracing**: [Trace annotation standards, correlation ID management]
- **Health Checks**: [Implementation standards for service health endpoints]
- **Performance Monitoring**: [APM integration, custom metrics, SLA monitoring]

## Document History
- **Version**: 1.0
- **Last Updated**: YYYY-MM-DD
- **Updated By**: [Name/Team]
- **Changes**: [Initial Draft / Specific changes made]