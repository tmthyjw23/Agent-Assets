---
name: deployment-strategies
description: >
  Ship changes safely. Use for deployment strategies (blue/green, canary,
  rolling, recreate, shadow), zero-downtime releases, feature flags, rollback,
  database migration during deploy, release trains, and progressive delivery.
  Triggers: "deployment strategy", "canary", "blue-green", "zero downtime",
  "rollback", "feature flag", "progressive delivery".
---

# Deployment Strategies

Deploys should be boring, reversible, and decoupled from release.

## When to use
- Choosing how to roll out a new version.
- Achieving zero-downtime deploys.
- Migrating databases alongside code.
- Setting up progressive delivery.

## Strategies
| Strategy | Behavior | Risk / cost |
|---|---|---|
| Recreate | Stop old, start new | Downtime; simple |
| Rolling | Replace instances in batches | No downtime; mixed versions |
| Blue/Green | Two full environments, switch traffic | Fast rollback; 2x resources |
| Canary | Send small % traffic to new version | Low blast radius; needs metrics |
| Shadow | Mirror traffic to new, don't serve | Safe testing; double load |
| A/B | Route by user segment | Experimentation, not just deploy |

Pick by **rollback speed and blast radius**, not novelty. Canary + feature flags
is the common default for services.

## Zero-downtime rules
- Backward/forward-compatible changes; expand-contract for schema.
- Health checks + readiness/liveness; drain connections before shutdown.
- Graceful shutdown; stop accepting new work, finish in-flight.
- Decouple **deploy** (code live) from **release** (feature on) via flags.

## Database migrations during deploy
- Expand → migrate → contract: add new column (nullable) → backfill → dual
  write/read → switch → drop old. Never break the old code still running.

## Rollback
- One-command rollback; keep previous artifacts.
- Feature flags for instant kill without redeploy.
- Data migrations must be reversible or forward-fixable.

## Checklist
- [ ] Strategy chosen with rollback time stated.
- [ ] Health/readiness checks + graceful shutdown.
- [ ] Backward-compatible API/schema changes.
- [ ] Feature flags for risky changes.
- [ ] Canary metrics + automatic rollback triggers.
- [ ] Migration plan (expand/contract) tested.
- [ ] Post-deploy verification + smoke tests.

## Common pitfalls
- Big-bang releases with no rollback.
- Schema change that breaks the still-running old version.
- Canary without metrics → no decision signal.
- Long-lived feature flags accumulating as debt.
- Manual, undocumented deploy steps.

## References
- `...\how-to-deploy-services.md`, `...\top-5-most-used-deployment-strategies.md`
- `...\kubernetes-deployment-strategies.md`
- `...\cicd-pipeline-explained-in-simple-terms.md`, `...\cicd-simplified-visual-guide.md`
- `...\how-do-companies-ship-code-to-production.md`, `...\what-tools-does-your-team-use-to-ship-code-to-production-and-ensure-code-quality.md`
Base: `D:\Agent-Assets\system-design-101\data\guides\`

## Related skills
`devops-and-platform`, `observability`, `cloud-and-infrastructure`.
