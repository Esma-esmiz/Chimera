# Tooling Strategy — Project Chimera

This document defines the **developer tooling layer** used to build and maintain Project Chimera.

Tooling is divided into two categories:

1. Developer Tools (MCP servers used during development)
2. Runtime Agent Skills (tools used by agents during execution)

This document focuses on **Developer Tools**.

---

# 1. Model Context Protocol (MCP)

Project Chimera uses **Model Context Protocol (MCP)** to expose tools to AI development agents.

MCP allows the AI assistant to safely interact with:

- Git repositories
- The filesystem
- APIs
- Databases
- External services

These tools help the AI **develop, edit, and test the system safely**.

---

# 2. Selected MCP Servers

The following MCP servers are approved for development.

## filesystem-mcp

Purpose:
Allows the AI assistant to safely read and modify project files.

Capabilities:

- Read files
- Write files
- Create directories
- Modify project structure

Use Cases:

- Updating Java source files
- Writing tests
- Creating new modules
- Editing documentation

---

## git-mcp

Purpose:
Provides version control operations.

Capabilities:

- View repository status
- Create commits
- Manage branches
- Inspect commit history

Use Cases:

- Commit generated code
- Inspect previous implementations
- Manage feature branches

---

## docker-mcp (optional but recommended)

Purpose:
Allows AI to run and inspect containerized services.

Capabilities:

- Start/stop containers
- Inspect logs
- Run integration environments

Use Cases:

- Running Redis
- Running service test environments
- Local system debugging

---

# 3. Security Rules

MCP tools must follow strict security constraints:

- No external network access without explicit permission
- No modification of secrets or environment files
- No destructive Git operations (force push, reset)

All actions must be traceable in commit history.

---

# 4. Development Workflow

The AI development assistant should follow this workflow:

1. Read specifications from `/specs`
2. Generate implementation plan
3. Use filesystem-mcp to write code
4. Use git-mcp to commit changes
5. Run tests

---

# 5. Runtime Tools vs Developer Tools

Important distinction:

Developer Tools (MCP)
→ Used by the **AI coding assistant**

Runtime Skills
→ Used by the **Chimera agents**

Runtime Skills are defined in the `/skills` directory.