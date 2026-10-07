---
name: distributed-systems
description: >
  Reason about distributed systems. Use for CAP/PACELC, consistency models,
  replication, consensus, leader election, distributed transactions, saga,
  unique ID generation at scale, clock/time issues, partitioning, and
  coordination. Triggers: "CAP theorem", "eventual consistency", "consensus",
  "distributed transaction", "unique ID", "consistent hashing", "clock skew".
---

# Distributed Systems

The laws and patterns that govern systems spread across many machines.

## When to use
- Reasoning about consistency vs availability tradeoffs.
- Replication, consensus, leader election.
- Distributed transactions and coordination.
- Generating unique IDs or ordering events across nodes.

## Foundations
- **CAP theorem:** under a network partition you choose consistency or
  availability — not both. Know which your system needs.
- **PACELC:** else (no partition) you still trade latency vs consistency.
- **Consistency models:** strong → linearizable → sequential → causal →
  eventual. Weaker is cheaper and more available.
- **Consistent hashing:** minimal data movement when nodes join/leave.

## Core patterns (Bruno: "Top 7 distributed patterns")
- Service discovery, leader election, distributed lock, distributed queue,
  distributed cache, distributed transaction (saga/2PC), distributed
  counter/ID.

## Consistency & replication
- Sync vs async replication; quorum (R + W > N); read-your-writes; monotonic
  reads.
- Conflict resolution: LWW, vector clocks, CRDTs.
- Event sourcing as a source of truth; CQRS for read models.

## Unique IDs at scale
- Auto-increment (spof/hotspot), UUID (large, unordered), snowflake
  (timestamp+machine+seq), ULID, DB sequence with ranges, ticket servers.
- Prefer roughly time-sortable IDs (snowflake/ULID) for index locality.

## Time & coordination
- Physical clocks drift; NTP is not enough. Use logical clocks (Lamport/vector)
  for causality.
- Distributed locks must be lease-based with fencing tokens; watch for
  stop-the-world pauses.
- Idempotency + dedup for at-least-once delivery.

## Checklist
- [ ] Availability/consistency requirement stated (CAP/PACELC).
- [ ] Replication topology + quorum defined.
- [ ] Conflict resolution chosen.
- [ ] Coordination (locks/election) has failure handling.
- [ ] IDs unique, roughly ordered, no hotspot.
- [ ] Clocks/causality handled without assuming synced time.
- [ ] Distributed transaction strategy (saga/outbox) if multi-service writes.

## Common pitfalls
- Assuming the network is reliable, fast, or secure.
- Assuming clocks are in sync.
- Treating a distributed transaction as a local one.
- Distributed lock without fencing → two leaders.
- Strong consistency everywhere → fragile, slow systems.

## References
- `...\cap-theorem-one-of-the-most-misunderstood-terms.md`
- `...\top-eventual-consistency-patterns-you-must-know.md`
- `...\top-7-most-used-distributed-system-patterns.md`
- `...\consistent-hashing.md`
- `...\unique-id-generator.md`, `...\explaining-5-unique-id-generators-in-distributed-systems.md`
- `...\how-do-we-detect-node-failures-in-distributed-systems.md`
- `...\do-you-know-why-meta-google-and-amazon-all-stop-using-leap-seconds.md`
- `...\cap-base-solid-kiss-what-do-these-acronyms-mean.md`
- `...\delivery-semantics.md`
Base: `D:\Agent-Assets\system-design-101\data\guides\`

## Related skills
`database-design`, `high-availability-and-resilience`,
`messaging-and-streaming`, `scalability-and-performance`.
