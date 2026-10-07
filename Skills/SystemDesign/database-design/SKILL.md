---
name: database-design
description: >
  Choose, model, and scale databases. Use when selecting SQL vs NoSQL and the
  specific engine, designing schemas and indexes, choosing between ACID and
  BASE, handling transactions, isolation levels, locks, sharding, replication,
  read replicas, event sourcing, CDC, data migration, or message queues used as
  durable storage. Triggers: "choose a database", "schema design", "sharding",
  "replication", "index", "transactions", "ACID", "NoSQL".
---

# Database Design

The data layer outlives the app. Choose and model it deliberately.

## When to use
- Choosing a database type/engine.
- Designing schemas, keys, indexes, access patterns.
- Transactions, isolation, locking questions.
- Scaling data: replication, sharding, caching in front of DB.

## Choose the database
| Workload | Reasonable default |
|---|---|
| Transactions, relations, strong consistency | Relational (PostgreSQL) |
| Flexible schema, document access | Document store |
| Massive simple key lookups, cache | Key-value (Redis) |
| Time-series / metrics | TSDB |
| Full-text search | Search engine (Elasticsearch) |
| Graph relationships | Graph DB |
| Analytics, columnar scans | OLAP / warehouse |
| Append-only event log, streaming | Kafka-class log |

Rule: pick for the **access pattern and consistency need**, not hype. Postgres
covers most defaults; move only when a real constraint forces it.

## Schema & indexing
- Model access patterns first (query-driven vs entity-driven).
- Normalize for correctness; denormalize for read performance — name the
  tradeoff.
- Index the columns you filter/join/sort on; composite order matters
  (equality → range → sort). Avoid over-indexing writes.
- Choose primary keys deliberately (surrogate vs natural; UUID vs bigint).
- Use constraints (FK, unique, check) to protect integrity.

## Transactions & concurrency
- ACID vs BASE. Know your isolation level (read committed, repeatable read,
  serializable) and its anomalies.
- Locking: optimistic vs pessimistic; row/table locks; deadlock prevention
  (consistent ordering, short transactions).
- Idempotent writes for retry safety.

## Scaling data
- **Read scaling:** read replicas, caching, denormalization, connection pooling.
- **Write scaling:** sharding (range/hash/consistent hashing), partitioning,
  LSM vs B-tree engines for write-heavy.
- **Consistency tradeoffs:** replication lag, eventual consistency patterns,
  conflict resolution.
- **Migration:** schema evolution (Avro/schemas), online migration (dual write,
  backfill, cutover), CDC for real-time downstream.

## Checklist
- [ ] DB choice mapped to workload + consistency need.
- [ ] Access patterns listed; indexes match them.
- [ ] PK strategy + constraints defined.
- [ ] Transaction/isolation requirements explicit.
- [ ] Read path: replicas/cache/pooling.
- [ ] Write path: shard key avoids hotspots; rebalancing plan.
- [ ] Backup, restore, and migration plan tested.
- [ ] Slow-query monitoring in place.

## Common pitfalls
- Joining across shards (defeats sharding).
- Primary keys that create hotspots (monotonic IDs).
- Missing indexes → table scans; too many → slow writes.
- Ignoring isolation-level anomalies.
- Unbounded data growth with no retention/archival.

## References
- `...\how-to-choose-the-right-database.md`, `...\how-do-you-decide-which-type-of-database-to-use.md`
- `...\types-of-databases.md`, `...\understanding-database-types.md`, `...\top-6-database-models.md`
- `...\what-does-acid-mean.md`, `...\what-are-database-isolation-levels.md`, `...\what-are-the-differences-among-database-locks.md`
- `...\a-crash-course-in-database-sharding.md`, `...\key-concepts-to-understand-database-sharding.md`, `...\top-4-data-sharding-algorithms-explained.md`
- `...\read-replica-pattern.md`, `...\how-to-implement-read-replica-pattern.md`
- `...\consistent-hashing.md`, `...\b-tree-vs.md`
- `...\change-data-capture-key-to-leverage-real-time-data.md`, `...\differences-in-event-sourcing-system-design.md`
- `...\7-must-know-strategies-to-scale-your-database.md`, `...\a-cheatsheet-on-database-performance.md`
- `...\storage-systems-overview.md`, `...\explain-the-top-6-use-cases-of-object-stores.md`
Base: `D:\Agent-Assets\system-design-101\data\guides\`

## Related skills
`distributed-systems`, `caching-and-cdn`, `messaging-and-streaming`,
`scalability-and-performance`, `data-and-ai-pipelines`.
