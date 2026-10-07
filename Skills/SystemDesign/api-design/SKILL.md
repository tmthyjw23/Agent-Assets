---
name: api-design
description: >
  Design and secure APIs. Use when choosing between REST, GraphQL, gRPC, RPC,
  or SOAP; designing endpoints, pagination, versioning, error models, webhooks,
  or real-time transport (SSE/WebSocket/polling); placing API gateways and load
  balancers; or hardening API security. Triggers: "design an API", "REST vs
  GraphQL", "gRPC", "API gateway", "webhook", "pagination", "status codes".
---

# API Design

Contracts between systems. Get them stable, predictable, and secure.

## When to use
- Designing or reviewing any API surface.
- Choosing a protocol/style.
- Adding pagination, versioning, auth, or rate limits.
- Building real-time or event-driven interfaces.

## Style decision
| Need | Prefer |
|---|---|
| Simple resource CRUD, cacheable, broad tooling | REST |
| Flexible client-driven queries, aggregated graph | GraphQL |
| Low-latency service-to-service, typed contracts, streaming | gRPC |
| Legacy/enterprise contracts, WS-* | SOAP (usually avoid) |
| Real-time push | WebSocket / SSE; polling as fallback |
| Server-to-server event notification | Webhooks |

## Design rules
- Model resources/actions around the domain, not the database.
- Consistent naming, plural nouns, stable IDs.
- **Pagination:** cursor-based for large/changing sets, offset for simple.
  Enforce page size limits.
- **Versioning:** additive changes first; version via URL or header; deprecate
  with a timeline.
- **Errors:** structured body (code, message, details); correct HTTP status.
- **Idempotency:** idempotency keys on unsafe/retryable writes.
- **Rate limits + quotas:** per key/user/tenant; return 429 + Retry-After.
- **Auth:** OAuth2 / OIDC / API keys / JWT; scopes for authorization. See
  `security-and-auth`.

## Edge components
- **API Gateway:** routing, auth, rate limit, observability, protocol
  translation. Not the same as a load balancer.
- **Load balancer:** distributes traffic; L4 vs L7.
- **Reverse proxy:** caching, TLS termination, compression.

## Checklist
- [ ] Style chosen with rationale.
- [ ] Resource/action model documented (OpenAPI/Proto/SDL).
- [ ] Pagination + filtering + sorting defined.
- [ ] Versioning + deprecation policy.
- [ ] Error model consistent.
- [ ] AuthN/AuthZ scopes defined.
- [ ] Rate limits, quotas, timeouts.
- [ ] Idempotency for writes.
- [ ] Contract tests + 9 API test types considered.

## Common pitfalls
- Chatty APIs (N+1 over the wire) — use batching/GraphQL/aggregation.
- Breaking changes without versioning.
- Offset pagination on fast-changing data.
- Exposing internal DB IDs / leaking stack traces in errors.
- No rate limiting → trivial DoS.

## References
- `...\rest-api-cheatsheet.md`, `...\how-does-rest-api-work.md`
- `...\what-is-graphql.md`, `...\rest-api-vs-graphql.md`
- `...\what-is-grpc.md`, `...\how-does-grpc-work.md`
- `...\soap-vs-rest-vs-graphql-vs-rpc.md`
- `...\api-gateway-101.md`, `...\what-does-api-gateway-do.md`
- `...\what-is-a-load-balancer.md`
- `...\reverse-proxy-vs-api-gateway-vs-load-balancer.md`
- `...\how-do-we-perform-pagination-in-api-design.md`
- `...\shortlong-polling-sse-websocket.md`
- `...\polling-vs-webhooks.md`
- `...\8-tips-for-efficient-api-design.md`, `...\a-cheat-sheet-for-api-designs.md`
- `...\top-12-tips-for-api-security.md`, `...\how-do-we-design-effective-and-safe-apis.md`
Base: `D:\Agent-Assets\system-design-101\data\guides\`

## Related skills
`security-and-auth`, `networking-fundamentals`, `messaging-and-streaming`,
`system-design-method`.
