# Project Chimera Makefile
# Standardized commands for development workflow

.PHONY: setup test lint clean

# Resolve dependencies and build the project without running tests
setup:
	mvn clean install -DskipTests

# Run all JUnit tests
test:
	mvn test

# Run code quality checks
lint:
	mvn checkstyle:check

# Optional: clean build artifacts
clean:
	mvn clean