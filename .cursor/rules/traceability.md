# Traceability Requirement

Before generating any code, the AI assistant must explain its implementation plan.

Required format:

Implementation Plan:

1. Identify relevant specification sections
2. Outline the components to be implemented
3. List files to be created or modified
4. Describe expected behavior

Example:

Implementation Plan

1. Read specs/technical.md for Task schema
2. Create Task.java record
3. Implement PlannerService
4. Add Redis queue integration
5. Write JUnit tests

Only after presenting the plan should the assistant generate code.