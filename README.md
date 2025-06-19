# Rules Template for AI-Assisted Development 🚀

A comprehensive framework for enhancing AI-assisted development through structured workflows, knowledge management, and cross-platform compatibility.

## Overview

This template provides a structured approach to AI-assisted development by combining:
- Workflow-driven development processes
- Centralized knowledge management
- Cross-platform rule configurations
- Token-optimized interactions

## Directory Structure

```
.
├── workflow/                    # Development workflow definitions
│   ├── workflow-router.mdc     # Central workflow entry point
│   ├── feature-development-workflow.md
│   ├── tweak-development-workflow.md
│   ├── core-development-workflow.md
│   └── architecture-documentation-workflow.md
│
├── knowledge-base/             # Project knowledge repository
│   ├── architecture-docs/      # System architecture documentation
│   └── feature-docs/          # Feature-specific documentation
│
├── .cursor/                    # Cursor-specific configurations
│   └── rules/                 # Custom rules for Cursor
│
├── .clinerules/               # CLINE-specific configurations
│
└── templates/                 # Template files for various purposes
```

## Key Components

### 1. Workflow System

The workflow system provides structured approaches for different development scenarios:

- **Feature Development**: Complete workflow for new feature implementation
- **Tweak Development**: Streamlined process for enhancements and bug fixes
- **Architecture Documentation**: Guidelines for maintaining system documentation
- **Core Development**: Fundamental development practices and standards

### 2. Knowledge Management

Centralized knowledge management through:

- **Architecture Documentation**: System design and component relationships
- **Feature Documentation**: Requirements, specifications, and implementation details
- **Development Context**: Active development tracking and decision history

### 3. Platform-Specific Rules

Optimized rule configurations for different AI coding assistants:

#### Cursor
```bash
.cursor/rules/
├── rules.mdc
├── plan.mdc
├── implement.mdc
├── debug.mdc
├── memory.mdc
└── directory-structure.mdc
```

#### CLINE
```bash
.clinerules/
├── rules
├── plan
├── implement
├── debug
├── memory
└── directory-structure
```

## Setup Guide

### Basic Setup

1. Clone this repository
2. Copy platform-specific rules to your project:
   ```bash
   # For Cursor
   cp -r .cursor/rules/ /path/to/your/project/.cursor/
   
   # For CLINE
   cp -r .clinerules/ /path/to/your/project/
   ```
3. Initialize knowledge base structure:
   ```bash
   mkdir -p knowledge-base/{architecture-docs,feature-docs}
   ```
4. Copy workflow definitions:
   ```bash
   cp -r workflow/ /path/to/your/project/
   ```

### Advanced Configuration

#### Custom Modes Setup

1. **Chat Mode**
   - Purpose: Comprehensive thinking and analysis
   - Configuration: No file operations
   - Token optimization: Minimal context loading

2. **Write Mode**
   - Purpose: File operations and command execution
   - Capabilities: Read, write, and execute
   - Token optimization: Efficient file handling

3. **MCP Mode**
   - Purpose: MCP server operations
   - Integration: Seamless mode switching
   - Token optimization: Focused server interactions

## Best Practices

### 1. Workflow Management
- Start with the workflow router for task categorization
- Follow appropriate workflow based on task type
- Document decisions and changes in knowledge base

### 2. Documentation
- Maintain up-to-date architecture documentation
- Document feature requirements and specifications
- Track development context and decisions

### 3. Token Optimization
- Use appropriate modes for different tasks
- Load context selectively
- Leverage efficient file operations

## Features

1. **Workflow-Driven Development**
   - Structured development processes
   - Clear task categorization
   - Integrated documentation

2. **Knowledge Management**
   - Centralized documentation
   - Feature tracking
   - Decision history

3. **Cross-Platform Support**
   - Cursor integration
   - CLINE compatibility
   - Consistent workflows

4. **Token Optimization**
   - Mode-based optimization
   - Selective context loading
   - Efficient operations

## Contributing

1. Fork the repository
2. Create a feature branch
3. Submit a pull request with:
   - Clear description of changes
   - Updated documentation
   - Test results if applicable

## Roadmap

- [ ] Unified ignore system for token optimization
- [ ] Example content for each file type
- [ ] Comprehensive FAQ section
- [ ] TDD prompt injection implementation
- [ ] Boomerang Task Mode and Context Handoff

## License

[Add your license information here]

---

## Additional Resources

- [Workflow Documentation](workflow/README.md)
- [Architecture Guidelines](knowledge-base/architecture-docs/README.md)
- [Feature Documentation Guide](knowledge-base/feature-docs/README.md) 