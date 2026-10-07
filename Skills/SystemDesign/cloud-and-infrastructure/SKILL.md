---
name: cloud-and-infrastructure
description: >
  Design and run on the cloud. Use for AWS/Azure/GCP service selection, cloud
  native vs lift-and-shift, serverless/Lambda, infrastructure as code,
  configuration management, cost optimization, multi-cloud, cloud load
  balancers, network architecture, and 12-factor apps. Triggers: "AWS", "cloud
  architecture", "serverless", "Lambda", "IaC", "Terraform", "cloud cost",
  "cloud native".
---

# Cloud and Infrastructure

Use managed building blocks, but own the architecture and the bill.

## When to use
- Provisioning or migrating to cloud.
- Choosing managed services vs self-hosted.
- Serverless vs containers vs VMs.
- Cost, scaling, or multi-cloud decisions.

## Compute spectrum
| Option | Use when |
|---|---|
| VM | Full control, long-running, legacy |
| Containers (K8s/ECS) | Portable, orchestrated, most services |
| Serverless (Lambda/Functions) | Spiky/event-driven, low ops, per-request |
| PaaS | Fast delivery, less control |

Serverless caveats: cold starts, execution limits, vendor lock-in, cost at
sustained high load.

## Cloud native
- 12-factor app: config in env, stateless processes, disposability, dev/prod
  parity, logs as streams.
- Managed data: managed DB, object storage (S3), queues, CDN, secrets.
- **Infrastructure as Code:** declarative, versioned, reviewable (Terraform,
  CloudFormation, Pulumi). Config management vs IaC.
- Immutable infrastructure; blue/green and canary at the platform level.

## Cost & governance
- Cost drivers: compute hours, data egress, storage class, idle resources.
- Tactics: right-sizing, autoscaling, spot/reserved, lifecycle policies,
  storage tiering, kill idle resources.
- Watch hidden costs (egress, cross-AZ traffic, NAT gateways, logs).
- Tagging + budgets + alerts; chargeback by team.

## Reliability & network
- Multi-AZ by default; multi-region for DR (see
  `high-availability-and-resilience`).
- VPC design, subnets, security groups, load balancers (ALB/NLB), NAT.
- Managed vs self-managed tradeoff is an operational cost decision.

## Checklist
- [ ] Workload mapped to compute model (VM/container/serverless).
- [ ] Managed services preferred where they reduce undifferentiated work.
- [ ] IaC for all infra; no console snowflakes.
- [ ] 12-factor compliance (config, stateless, logs).
- [ ] Cost estimate + budgets + tagging.
- [ ] Multi-AZ; DR per RTO/RPO.
- [ ] Network/security boundaries defined.
- [ ] Exit/lock-in risk assessed.

## Common pitfalls
- Lift-and-shift and calling it cloud native.
- Serverless for steady heavy load (cost blowups).
- No IaC → unreproducible environments.
- Ignoring egress and inter-AZ costs.
- Single-AZ "production".

## References
- `...\what-is-cloud-native.md`, `...\how-do-we-transform-a-system-to-be-cloud-native.md`
- `...\the-12-factor-app.md`
- `...\aws-services-cheat-sheet.md`, `...\aws-services-evolution.md`, `...\azure-services-cheat-sheet.md`, `...\cloud-comparison-cheat-sheet.md`, `...\what-are-the-most-important-aws-services-to-learn.md`
- `...\how-does-aws-lambda-work-behind-the-scenes.md`, `...\what-makes-aws-lambda-so-fast.md`
- `...\a-cheatsheet-on-infrastructure-as-code-landscape.md`, `...\how-do-we-manage-configurations-in-a-system.md`, `...\how-does-terraform-turn-code-into-cloud.md`
- `...\cloud-cost-reduction-techniques.md`, `...\hidden-costs-of-the-cloud.md`
- `...\cloud-load-balancer-cheat-sheet.md`, `...\typical-aws-network-architecture-in-one-diagram.md`
- `...\2-decades-of-cloud-evolution.md`, `...\big-data-pipeline-cheatsheet-for-aws-azure-and-google-cloud.md`
Base: `D:\Agent-Assets\system-design-101\data\guides\`

## Related skills
`devops-and-platform`, `scalability-and-performance`,
`high-availability-and-resilience`, `deployment-strategies`.
