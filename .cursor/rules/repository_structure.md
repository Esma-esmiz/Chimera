# Repository Structure Rules

The repository should follow this structure:

Chimera/

specs/

planner-service/
src/main/java/com/ProjectChimera/planner/
src/test/java/com/ProjectChimera/planner/

worker-service/
src/main/java/com/ProjectChimera/worker/
src/test/java/com/ProjectChimera/worker/

judge-service/
src/main/java/com/ProjectChimera/judge/
src/test/java/com/ProjectChimera/judge/

common/
src/main/java/com/ProjectChimera/common/
dto/
mcp/
utils/

.cursor/
rules/

All shared data structures must live in `common/dto`.

Each service should remain independent and loosely coupled.