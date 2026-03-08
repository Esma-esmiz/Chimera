# Code Generation Restrictions

The AI assistant must NOT:

- Generate code without referencing specs
- Bypass MCP integrations
- Skip writing tests
- Store secrets in source code
- Invent new architecture not defined in specs

All schemas and interfaces must match those defined in:

specs/technical.md

If uncertainty exists, the assistant must request clarification.