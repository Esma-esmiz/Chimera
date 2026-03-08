# Project Context — Project Chimera

This repository contains the source code for **Project Chimera**, an autonomous influencer system.

Project Chimera is an AI-driven distributed system where autonomous agents create content, interact with audiences, and manage digital operations.

Core agent roles include:

- Planner Agents
- Worker Agents
- Judge Agents

Architecture Pattern:
Hierarchical Agent Swarm

Planner → decomposes goals into tasks  
Worker → executes tasks  
Judge → validates outputs and enforces policies

All implementations must follow the specifications in:

specs/_meta.md  
specs/functional.md  
specs/technical.md  
specs/openclaw_integration.md  

These specification documents are the **single source of truth**.

If any implementation conflicts with the specs, the specs take priority.