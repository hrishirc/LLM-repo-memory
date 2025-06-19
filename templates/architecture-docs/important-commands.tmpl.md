# {Service}/{Module} Important Commands

## Prerequisites
[List any tools, environment variables, or setup needed before these commands can be run effectively. Be specific about versions if they are critical.]
- Example: `Java 17 SDK (version 17.0.x) installed and JAVA_HOME set.`
- Example: `Node.js (version 18.x) and npm (version 9.x) installed.`
- Example: `Docker Desktop (version X.Y.Z) running.`
- Example: `Access to private npm registry configured (e.g., ~/.npmrc setup).`
- Example: `Required environment variables set (e.g., API_KEY, DATABASE_URL). Refer to .env.example if applicable.`
- Example: `Valid credentials for [Specific Service/Platform] configured.`

## Common Commands

### Build & Compile
- **Clean Project**:
  ```bash
  # e.g., ./mvnw clean
  # e.g., npm run clean
  # e.g., make clean
  # [Add specific command for this project]
  ```
- **Compile/Build Project**:
  ```bash
  # e.g., ./mvnw package
  # e.g., npm run build
  # e.g., go build ./...
  # e.g., docker build -t {image_name}:{tag} .
  # [Add specific command for this project]
  ```

### Running Locally
- **Start Development Server**:
  ```bash
  # e.g., ./mvnw spring-boot:run
  # e.g., npm start
  # e.g., go run main.go
  # e.g., docker-compose up
  # [Add specific command for this project]
  ```
- **Accessing Local Instance**:
  - URL: `http://localhost:{PORT}`
  - Notes: [Any specific notes, e.g., default credentials, health check endpoint]

### Testing
- **Run Unit Tests**:
  ```bash
  # e.g., ./mvnw test
  # e.g., npm test
  # e.g., go test ./...
  # [Add specific command for this project]
  ```
- **Run Integration Tests**:
  ```bash
  # e.g., ./mvnw verify
  # e.g., npm run test:integration
  # [Add specific command for this project, mention if any setup like DB is needed]
  ```
- **Run End-to-End (E2E) Tests**:
  ```bash
  # e.g., npm run test:e2e
  # [Add specific command for this project]
  ```
- **View Test Coverage Report**:
  ```bash
  # e.g., Open target/site/jacoco/index.html
  # e.g., npm run coverage
  # [Add specific command or path for this project]
  ```

### Linting & Formatting
- **Check Code Style/Lint**:
  ```bash
  # e.g., ./mvnw checkstyle:check
  # e.g., npm run lint
  # e.g., golangci-lint run
  # [Add specific command for this project]
  ```
- **Format Code**:
  ```bash
  # e.g., ./mvnw fmt:format (if using a plugin)
  # e.g., npm run format
  # e.g., gofmt -w .
  # [Add specific command for this project]
  ```

### Deployment (Optional - if applicable for developers)
- **Deploy to Development Environment**:
  ```bash
  # e.g., ./scripts/deploy-dev.sh
  # e.g., skaffold run -p dev
  # [Add specific command for this project]
  ```

### Database Operations
- **Connect to Database (Local/Dev)**:
  ```bash
  # e.g., psql -h localhost -U user dbname
  # e.g., docker exec -it {db_container_name} psql -U user dbname
  # e.g., mysql -h localhost -u user -p dbname
  # [Add specific command for this project]
  ```
- **Run Database Migrations**:
  ```bash
  # e.g., ./mvnw flyway:migrate
  # e.g., npm run db:migrate
  # e.g., alembic upgrade head
  # [Add specific command for this project]
  ```
- **Seed Test Data**:
  ```bash
  # e.g., ./scripts/seed-data.sh
  # e.g., npm run db:seed
  # [Add specific command for this project]
  ```

### Monitoring & Debugging
- **View Logs (Local Development)**:
  ```bash
  # e.g., tail -f logs/app.log
  # e.g., docker logs -f {container_name}
  # e.g., kubectl logs -f deployment/{app_name}
  # [Add specific command for this project]
  ```
- **Health Check**:
  ```bash
  # e.g., curl http://localhost:8080/actuator/health
  # e.g., curl http://localhost:3000/health
  # [Add specific command for this project]
  ```
- **Performance Profiling**:
  ```bash
  # e.g., java -jar -Xprof application.jar
  # e.g., node --prof app.js
  # [Add specific command for this project]
  ```

### Documentation & Analysis
- **Generate Documentation**:
  ```bash
  # e.g., ./mvnw javadoc:javadoc
  # e.g., npm run docs
  # e.g., go doc -http=:6060
  # [Add specific command for this project]
  ```
- **Security Scan**:
  ```bash
  # e.g., ./mvnw dependency-check:check
  # e.g., npm audit
  # e.g., snyk test
  # [Add specific command for this project]
  ```
- **Dependency Analysis**:
  ```bash
  # e.g., ./mvnw dependency:tree
  # e.g., npm ls
  # e.g., go mod graph
  # [Add specific command for this project]
  ```

## Environment-Specific Commands
### Development Environment
```bash
# Commands specific to dev environment
# e.g., npm run dev:setup
# e.g., ./scripts/setup-dev-env.sh
```

### Staging Environment
```bash
# Commands specific to staging environment
# e.g., ./scripts/deploy-staging.sh
# e.g., kubectl apply -f k8s/staging/
```

### Production Environment
```bash
# Commands specific to production (if developers have access)
# e.g., ./scripts/prod-deploy.sh
# e.g., Production commands should be limited and well-documented
```

## Troubleshooting Commands
[Common commands for diagnosing and fixing issues:]
- **Clear Cache/Reset State**:
  ```bash
  # e.g., rm -rf node_modules && npm install
  # e.g., ./mvnw clean install
  # e.g., docker system prune
  ```
- **Check System Resources**:
  ```bash
  # e.g., docker stats
  # e.g., kubectl top pods
  # e.g., free -m && df -h
  ```
- **Network Diagnostics**:
  ```bash
  # e.g., curl -v http://localhost:8080/health
  # e.g., netstat -tlnp | grep :8080
  # e.g., nslookup api.example.com
  ```

## Specialized/Advanced Commands
[Commands that don't fit standard categories but are important:]
- **Data Migration/Import**:
  ```bash
  # e.g., ./scripts/migrate-legacy-data.sh
  # e.g., mongoimport --db mydb --collection mycol --file data.json
  ```
- **Performance Testing**:
  ```bash
  # e.g., ab -n 1000 -c 10 http://localhost:8080/api/endpoint
  # e.g., k6 run performance-test.js
  ```
- **Backup/Restore Operations**:
  ```bash
  # e.g., pg_dump dbname > backup.sql
  # e.g., ./scripts/backup-prod-data.sh
  ```
- **Certificate/Security Management**:
  ```bash
  # e.g., openssl req -x509 -newkey rsa:4096 -keyout key.pem -out cert.pem
  # e.g., ./scripts/rotate-api-keys.sh
  ```

## IDE/Editor Specific Commands
[Commands that integrate with development tools:]
- **VS Code Tasks**:
  ```bash
  # Commands available through VS Code command palette
  # e.g., "Tasks: Run Task" -> "Build and Test"
  ```
- **IntelliJ Run Configurations**:
  ```bash
  # Available run configurations and their purposes
  # e.g., "Run Application (Dev Profile)", "Debug with Remote DB"
  ```

## Custom Scripts & Utilities
[Project-specific scripts that don't fit other categories:]
- **Setup Scripts**:
  ```bash
  # e.g., ./scripts/first-time-setup.sh
  # e.g., ./tools/configure-local-env.py
  ```
- **Utility Scripts**:
  ```bash
  # e.g., ./scripts/generate-test-data.sh
  # e.g., ./tools/check-code-quality.sh
  ```

## Additional Command Context
[Catch-all for command-related information that doesn't fit elsewhere:]
- **Platform-Specific Variations**: Different commands for Windows/Mac/Linux
- **Team-Specific Workflows**: Commands used by specific roles (QA, DevOps, etc.)
- **Legacy Commands**: Deprecated commands that might still be referenced
- **Emergency Procedures**: Critical commands for incident response
- **Automation Hooks**: Commands used by CI/CD or other automated processes

## Notes
- Replace `{Service}/{Module}`, `{image_name}`, `{tag}`, `{PORT}`, `{container_name}`, `{db_container_name}` etc., with actual values relevant to this project.
- Some commands might require specific configurations or environment variables not listed under prerequisites if they are very command-specific. Check the command's documentation or associated scripts.
- Always verify commands in a safe environment before running in production.
- Keep this document updated as new commands are added or existing ones change.

## Document History
- **Version**: 1.0
- **Last Updated**: YYYY-MM-DD
- **Updated By**: [Name/Team]
- **Changes**: [Initial Draft / Specific changes made]