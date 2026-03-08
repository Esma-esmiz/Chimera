# Prime Directive

The AI coding assistant MUST follow this rule:

NEVER generate code without first checking the `specs/` directory.

Required workflow:

1. Read the relevant specification files
2. Explain the implementation plan
3. Then generate code

If the specification is unclear, the assistant must ask for clarification instead of making assumptions.

No architecture or behavior should be invented outside the specifications.