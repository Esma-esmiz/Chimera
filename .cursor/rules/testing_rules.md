# Testing Rules

All generated code must include automated tests.

Testing framework:

JUnit 5

Required test types:

- Unit Tests
- Service Tests
- Integration Tests (for Redis queues or MCP tools)

Examples:

PlannerServiceTest  
WorkerServiceTest  
JudgeServiceTest  

Tests must validate:

- Task generation
- Queue communication
- Worker execution behavior
- Judge validation logic
- Failure handling

No production code should be generated without tests.