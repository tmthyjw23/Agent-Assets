---
name: backend-architecture
description: >
  Structure backend applications. Use when choosing architecture (monolith,
  microservices, modular monolith), applying design patterns and DDD, layering
  (MVC/MVVM/VIPER), OOP/SOLID, inter-process communication, orchestration vs
  choreography, microservice best practices, monorepo vs microrepo, and
  deciding when microservices are the wrong choice. Triggers: "microservices",
  "monolith", "DDD", "design patterns", "architecture", "monorepo".
---

# Backend Architecture

Structure code and services so they can evolve without collapsing.

## When to use
- Choosing a system architecture.
- Deciding for/against microservices.
- Applying design patterns, DDD, or layering.
- Organizing code across services/repos.

## Architecture decision
| Option | Use when |
|---|---|
| Monolith | Small team, uncertain domain, strong transactions |
| Modular monolith | Growing app, want boundaries without ops cost |
| Microservices | Many teams, independent scaling/deploy, clear domains |

Default to a **modular monolith** until organizational or scaling pressure
proves otherwise. Microservices trade code complexity for operational
complexity. See `...\is-microservice-architecture-the-silver-bullet.md` and
`...\amazon-prime-video-monitoring-service.md`.

## Design patterns
- Creational/structural/behavioral patterns (18 key patterns; cheat sheet).
- Layering: MVC, MVP, MVVM, VIPER; hexagonal/ports-and-adapters.
- SOLID, DRY, KISS, YAGNI; composition over inheritance.
- Domain-Driven Design: bounded contexts, aggregates, entities/value objects,
  ubiquitous language, domain events.

## Service interaction
- Sync (REST/gRPC) vs async (events/queues).
- Orchestration (central coordinator) vs choreography (event-driven).
- API gateway, service discovery, config, sidecars.
- Distributed transaction patterns: saga, outbox.

## Repo strategy
- Monorepo (atomic changes, shared tooling, harder scaling) vs microrepo
  (independent, harder cross-cutting changes). Choose for team workflow.

## Checklist
- [ ] Architecture matched to team size and domain maturity.
- [ ] Service boundaries align with bounded contexts.
- [ ] Patterns applied deliberately, not cargo-culted.
- [ ] Sync vs async interaction chosen per call.
- [ ] Cross-service writes use saga/outbox.
- [ ] Repo strategy justified.
- [ ] Production-readiness components (config, logging, health, discovery).

## Common pitfalls
- Distributed monolith (microservices with tight coupling).
- Shared database across services.
- Nanoservices; too-fine boundaries.
- Beautiful architecture, no operational story.
- Using patterns to impress instead of to solve.

## References
- `...\6-software-architectural-patterns-you-must-know.md`, `...\top-5-software-architectural-patterns.md`
- `...\18-key-design-patterns-every-developer-should-know.md`, `...\design-patterns-cheat-sheet-part-1-and-part-2.md`
- `...\8-key-concepts-in-ddd.md`, `...\key-terms-in-domain-driven-design.md`
- `...\8-key-oop-concepts-every-developer-should-know.md`, `...\the-fundamental-pillars-of-object-oriented-programming.md`
- `...\what-does-a-typical-microservice-architecture-look-like.md`, `...\9-best-practices-for-building-microservices.md`, `...\9-best-practices-for-developing-microservices.md`, `...\9-essential-components-of-a-production-microservice-application.md`
- `...\orchestration-vs-choreography-microservices.md`, `...\is-microservice-architecture-the-silver-bullet.md`
- `...\monorepo-vs.md`, `...\how-tiktok-manages-a-200k-file-frontend-monorepo.md`
- `...\mvc-mvp-mvvm-viper-patterns.md`, `...\a-cheatsheet-for-uml-class-diagrams.md`
Base: `D:\Agent-Assets\system-design-101\data\guides\`

## Related skills
`system-design-method`, `messaging-and-streaming`, `devops-and-platform`,
`computer-fundamentals`.
