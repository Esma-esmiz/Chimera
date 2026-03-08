# OpenClaw Integration

## Objective

Enable agents to publish availability/status to the OpenClaw network, allowing external services and agents to detect active agents.

## Integration Plan

1. **MCP Tool Exposure**: Implement an `openclaw_publish_status` tool for each agent.
2. **Status Payload**:

```json
{
  "agent_id": "string",
  "status": "active | idle | offline",
  "current_task_id": "string | null",
  "last_active": "timestamp"
}
```

3. **Transmission**: Push the payload via OpenClaw API or pub/sub protocol at a configurable interval.
4. **Validation**: Ensure data integrity and sign payloads using the agent’s non-custodial wallet keys.
5. **HITL Override**: Allow human operators to manually set or override availability for critical campaigns.

## Notes

* Must respect privacy and avoid exposing sensitive campaign data.
* Can integrate with agent dashboard for live monitoring of OpenClaw-reported status.
* Design for network latency and retries.