# Chimera Architecture Rules

The system must follow the **Planner / Worker / Judge architecture**.

## Planner Service

Responsibilities:

- Reads campaign goals
- Decomposes goals into tasks
- Pushes tasks into Redis `task_queue`

Planner agents DO NOT execute tasks.

---

## Worker Service

Responsibilities:

- Pull tasks from `task_queue`
- Execute the tasks
- Use MCP tools when interacting with external systems
- Send results to `review_queue`

Workers do not finalize outputs.

---

## Judge Service

Responsibilities:

- Validate worker outputs
- Apply safety policies
- Approve or reject results
- Escalate uncertain cases to HITL
- Persist validated results to GlobalState

Judge agents are the **final authority** before outputs are committed.