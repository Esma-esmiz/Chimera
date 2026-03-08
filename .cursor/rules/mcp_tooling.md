# MCP Tooling Rules

External integrations must ONLY be accessed through **Model Context Protocol (MCP)** tools.

Direct API calls to third-party services are prohibited.

Allowed pattern:

mcpClient.callTool("twitter", "post_tweet", args)

Not allowed:

Direct HTTP requests to Twitter, OpenAI, or other APIs.

All tools must be registered in the MCP tool registry.

Examples of MCP tools:

- twitter.post_tweet
- twitter.read_mentions
- image.generate
- wallet.get_balance
- wallet.send_transaction