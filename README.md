> ⚡ **Weekend Challenge Project**
>
> Project Chimera was developed as part of a **weekend engineering challenge focused on learning controlled AI-assisted development**.  
> The goal of this project is not to build a fully finished product, but to demonstrate how AI agents can be guided through **spec-first development, rule-based context engineering, test-driven design, and governed code generation**.
>
> This repository showcases the **foundation of an AI agent system built with strong architectural specifications, automated testing, and AI governance mechanisms**.

# Project Chimera

Project Chimera is an **autonomous influencer system** built using an agent-based architecture.  
It is designed to allow AI agents to plan, execute, and validate content-generation workflows while enforcing governance, safety, and specification alignment.

This repository contains the **architecture, specifications, tooling configuration, and testing framework** required to build the system.

The project follows a **spec-first, test-driven development (TDD)** approach.

---

# Architecture Overview

Project Chimera uses a **Hierarchical Agent Architecture** composed of three main roles:

Planner → Worker → Judge

### Planner Agent

Responsible for:

- Interpreting campaign goals
- Breaking goals into executable tasks
- Scheduling work for Worker agents

### Worker Agent

Responsible for:

- Executing tasks
- Calling runtime skills
- Producing outputs for review

### Judge Agent

Responsible for:

- Validating outputs
- Enforcing safety policies
- Escalating tasks to Human-in-the-Loop (HITL) when necessary

This separation ensures **modularity, safety, and scalability**.

---

---

# Specifications

The **specs directory** defines the system architecture and behavior.


| File                    | Purpose                              |
| ----------------------- | ------------------------------------ |
| _meta.md                | Project vision and meta architecture |
| functional.md           | Functional system requirements       |
| technical.md            | Technical architecture and contracts |
| openclaw_integration.md | Integration with external systems    |


These specifications are the **single source of truth** for the project.

---

# Agent Skills

Skills represent **runtime capabilities** that Worker agents use to perform tasks.

Examples included in this repository:

### skill_download_youtube

Downloads media content for analysis or repurposing.

### skill_transcribe_audio

Converts audio into structured text transcripts.

Each skill defines:

- Purpose
- Input contract
- Output contract
- Error handling

Skills are **modular and extensible**.

---

# Development Workflow

This project follows a **Spec → Tests → Implementation** workflow.

1. Define architecture in `/specs`
2. Write failing tests
3. Implement system components
4. Validate with CI

This ensures the AI development agent builds the system **according to specification**.

---

# Test-Driven Development

The repository includes failing tests that define the required system behavior.

Tests include:

### TrendFetcherTest

Verifies that trend data structures conform to the API contract defined in `technical.md`.

### SkillsInterfaceTest

Validates skill input/output interfaces and exception handling.

Run tests with:

Expected result during early development:

Tests will **fail intentionally** until implementations are provided.

---

# Automation

Project commands are standardized using a Makefile.

### Setup the project


Resolves dependencies and builds the project.

### Run tests

Executes all JUnit tests.

### Run lint checks

Runs code quality checks.

---

# Continuous Integration

CI is configured using GitHub Actions.

On every push or pull request, the pipeline:

1. Sets up Java 21
2. Installs dependencies
3. Runs automated tests

This ensures code quality and prevents regressions.

---

# AI Development Context

The repository includes `.cursor/rules` which define the behavioral rules for the AI development assistant.

These rules enforce:

- Spec-first development
- Java coding standards
- Architecture alignment
- Testing requirements

This ensures the AI agent produces **consistent and governed code**.

---

# Governance and Review

AI code reviews are configured via `.coderabbit.yaml`.

Review policies enforce:

- Specification alignment
- Java thread safety
- Security vulnerability checks

This layer ensures that AI-generated code meets **production standards**.

---

# Getting Started

Prerequisites:

- Java 21
- Maven
- Make

Clone the repository:

Install dependencies:

Run tests:

---

# Future Implementation

The current repository provides the **foundation for the Chimera system**.

Future development will include:

- Planner agent implementation
- Worker task execution engine
- Judge validation system
- Skill runtime implementations
- MCP tool integrations
- Agent orchestration layer

