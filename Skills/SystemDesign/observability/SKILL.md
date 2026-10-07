---
name: observability
description: >
  Instrument, monitor, and debug production systems. Use for logging, metrics,
  and tracing; structured logs; the ELK stack; dashboards and alerting; SLI/SLO
  and error budgets; incident response; CPU/memory diagnosis; log parsing;
  push vs pull metrics. Triggers: "monitoring", "observability", "logging",
  "tracing", "SLO", "alert", "why is it slow", "100% CPU".
---

# Observability

You cannot operate what you cannot see. Design telemetry in from day one.

## When to use
- Adding monitoring/logging/tracing to a system.
- Defining SLIs/SLOs and alerts.
- Debugging production incidents.
- Reducing MTTR.

## Three pillars
1. **Metrics:** numeric time series (counters, gauges, histograms). Cheap,
   aggregate, great for alerts and dashboards. Push vs pull collection.
2. **Logs:** structured, leveled, correlated (request/trace ID). Centralized
   (ELK/OpenSearch). Log for events, not for control flow.
3. **Traces:** distributed tracing across services; spans, context propagation.
   Answers "where did the latency go?".

Add **profiling** and **continuous profiling** for CPU/memory hotspots.

## SLO-based operations
- Define SLIs (availability, latency p99, error rate, throughput).
- Set SLOs → derive error budgets → alert on burn rate, not every blip.
- Alert on symptoms (user impact), not causes, to reduce noise.
- Dashboards: RED (Rate, Errors, Duration) for services; USE (Utilization,
  Saturation, Errors) for resources.

## Debugging production
- Start from the user-visible symptom; follow the trace.
- Check the four golden signals before details.
- Common causes: 100% CPU (infinite loop, hot query, GC thrash, traffic),
  memory leaks, lock contention, connection pool exhaustion, noisy neighbor.
- Correlate deploy timeline with metric changes.
- Have runbooks; do blameless postmortems; track action items.

## Checklist
- [ ] Structured logs with correlation IDs.
- [ ] Core metrics per service (RED) + resources (USE).
- [ ] Distributed tracing with context propagation.
- [ ] Dashboards per service + dependency.
- [ ] SLIs/SLOs + error budgets.
- [ ] Symptom-based alerts; on-call runbooks.
- [ ] Retention + cost plan for telemetry.
- [ ] Postmortem process.

## Common pitfalls
- Logging PII/secrets.
- Alert fatigue (too many, too sensitive).
- Metrics without dimensions you actually query.
- Tracing not propagated through async/queues.
- Monitoring infrastructure but not user journeys.

## References
- `...\logging-tracing-metrics.md`, `...\what-is-elk-stack-and-why-is-it-so-popular-for-log-management.md`
- `...\log-parsing-cheat-sheet.md`, `...\push-vs-pull-in-metrics-collecting-systems.md`
- `...\choose-the-right-database-for-metric-collecting-system.md`
- `...\cloud-monitoring-cheat-sheet.md`
- `...\top-9-cases-behind-100-cpu-usage.md`
- `...\amazon-prime-video-monitoring-service.md`
Base: `D:\Agent-Assets\system-design-101\data\guides\`

## Related skills
`devops-and-platform`, `high-availability-and-resilience`,
`scalability-and-performance`, `deployment-strategies`.
