# Java Development Directives

All generated code must strictly follow **Java 21+ idioms and standards**.

Required practices:

## Records for DTOs

All inter-service data transfer objects (DTOs) must be implemented using **Java Records**.

Example:

public record Task(
    String taskId,
    String taskType,
    String priority,
    Map<String, Object> context,
    Instant createdAt,
    String status
) {}

DTOs must be immutable.

---

## Framework

Use **Spring Boot** for all services.

Required libraries:

- Spring Boot
- Spring Web
- Spring Validation
- Spring Data (if persistence is required)

---

## Dependency Management

Use **Maven** as the build system.

---

## Code Style

Follow modern Java practices:

- Prefer immutability
- Use Optional appropriately
- Avoid null where possible
- Use Streams carefully (avoid unnecessary complexity)