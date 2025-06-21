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

## 🚀 LLM Installation Prompts & Manual Setup

This section provides ready-to-use prompts for LLM-based coding assistants and manual instructions for installing the rules/templates into any project.

### 🤖 LLM Prompt: Fresh Install (Create)

> **Prompt for LLMs:**
>
> Please install the rules from [https://github.com/hrishirc/LLM-repo-memory](https://github.com/hrishirc/LLM-repo-memory) into my current project.
> 1. Check if the directory `~/rules_template_install` (Unix/macOS) or `%USERPROFILE%\rules_template_install` (Windows) already exists. If it does, pull the latest changes from the repository using `git pull`. If it doesn't exist, clone the repository from `https://github.com/hrishirc/LLM-repo-memory` into that default folder, or ask me for a location.
> 2. Run the `scripts/install_rules.sh` (for Unix/macOS) or `scripts/install_rules.cmd` (for Windows) script with the `create` argument, providing the path to my project if known. If not, ask me for it.
> 3. The script should copy the following folders/files into my project:
>     - `workflow/`
>     - `templates/`
>     - `.cursor/`
>     - `.clinerules/`
>    Only copy files that do not already exist. If a file exists, skip it. If a directory exists, ignore the error and continue.
> 4. Confirm completion.

### 🤖 LLM Prompt: Update (Overwrite)

> **Prompt for LLMs:**
>
> Please update the rules in my current project from [https://github.com/hrishirc/LLM-repo-memory](https://github.com/hrishirc/LLM-repo-memory).
> 1. Check if the directory `~/rules_template_install` (Unix/macOS) or `%USERPROFILE%\rules_template_install` (Windows) already exists. If it does, pull the latest changes from the repository using `git pull`. If it doesn't exist, clone the repository from `https://github.com/hrishirc/LLM-repo-memory` into that default folder, or ask me for a location.
> 2. Run the `scripts/install_rules.sh` (for Unix/macOS) or `scripts/install_rules.cmd` (for Windows) script with the `update` argument, providing the path to my project if known. If not, ask me for it.
> 3. The script should copy the following folders/files into my project:
>     - `workflow/`
>     - `templates/`
>     - `.cursor/`
>     - `.clinerules/`
>    Overwrite any existing files with the new versions. If a directory exists, ignore the error and continue.
> 4. Confirm completion.

---

### 🛠️ Manual Installation (for Human Users)

1. **Clone this repository** to a folder of your choice.
2. **Run the install script** from the `scripts/` directory:
   - On Unix/macOS:
     ```sh
     bash scripts/install_rules.sh create /path/to/your/project
     # or for update (overwrite):
     bash scripts/install_rules.sh update /path/to/your/project
     ```
   - On Windows:
     ```cmd
     scripts\install_rules.cmd create C:\path\to\your\project
     :: or for update (overwrite):
     scripts\install_rules.cmd update C:\path\to\your\project
     ```
3. **If you do not provide the project path as an argument, the script will prompt you for it.**

---

**Note:**
- In `create` mode, existing files are never overwritten.
- In `update` mode, all files are overwritten with the latest versions from this repo.
- Directory existence errors are ignored.
- The scripts are idempotent and safe to run multiple times.
