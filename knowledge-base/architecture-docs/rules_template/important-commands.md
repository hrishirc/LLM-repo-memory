# Important Development Commands

## Documentation Management

### Create New Documentation
```bash
# Create new architecture documentation
./workflow/architecture-documentation-workflow.md create

# Create documentation for specific module
./workflow/architecture-documentation-workflow.md create --module-name=<module-name>

# Update existing documentation
./workflow/architecture-documentation-workflow.md update
```

### Validate Documentation
```bash
# Validate all documentation
./scripts/validate-docs.sh

# Validate specific module
./scripts/validate-docs.sh --module=<module-name>
```

## Git Operations

### Branch Management
```bash
# Create new feature branch
git checkout -b feature/<feature-name>

# Create documentation branch
git checkout -b docs/<doc-name>
```

### Commit Guidelines
```bash
# Stage changes
git add .

# Commit with conventional message
git commit -m "docs: update architecture documentation"

# Push changes
git push origin <branch-name>
```

## Development Tools

### Linting
```bash
# Lint markdown files
markdownlint .

# Lint shell scripts
shellcheck *.sh
```

### Testing
```bash
# Run documentation tests
./scripts/test-docs.sh

# Run workflow tests
./scripts/test-workflows.sh
```

## Maintenance

### Cleanup
```bash
# Clean temporary files
./scripts/cleanup.sh

# Remove old documentation
./scripts/cleanup-docs.sh --older-than=<days>
```

### Backup
```bash
# Backup documentation
./scripts/backup-docs.sh

# Restore from backup
./scripts/restore-docs.sh <backup-file>
```

## Common Workflows

### Documentation Update
1. Create feature branch
2. Make documentation changes
3. Run validation
4. Create pull request
5. Get review
6. Merge changes

### Module Addition
1. Create module directory
2. Initialize documentation
3. Add to module registry
4. Update dependencies
5. Validate changes
6. Deploy updates 