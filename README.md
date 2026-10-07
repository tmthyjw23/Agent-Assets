# Agent-Assets

A curated library of **103 agent skills** organized by category for AI coding agents (OpenCode, Claude Code, Cursor, Codex, etc.). Skills are reusable, composable instruction sets that give agents specialized capabilities for software engineering tasks.

---

## Quick Start

### Install Skills to a Project

```powershell
# From D:\Agent-Assets\Skills
# Install entire categories
.\Install-Skills.ps1 -Target "D:\path\to\project" -Categories @("workflow","quality","backend")

# Install specific skills
.\Install-Skills.ps1 -Target "D:\path\to\project" -Skills @("spec-driven-development","test-driven-development","ponytail")

# Symlink instead of copy (for development)
.\Install-Skills.ps1 -Target "D:\path\to\project" -Mode symlink -Categories @("workflow")
```

### Install to OpenCode / Claude Code / etc.

```bash
# Via npx skills (installs to .agents/skills in current project)
npx skills add https://github.com/wshobson/agents --skill responsive-design
npx skills add https://github.com/miqdadbadjuber/anti-slop --skill antislop
npx skills add https://github.com/leonxlnx/taste-skill --skill design-taste-frontend
npx skills add https://github.com/dietrichgebert/ponytail --skill ponytail
npx skills add addyosmani/agent-skills
```

---

## Skill Categories (103 Total)

| Category | Skills | Description |
|----------|--------|-------------|
| **workflow** | 27 | Planning, execution, git, parallel agents, decision-making |
| **quality** | 11 | Testing, debugging, code review, performance, CI/CD |
| **SystemDesign** | 22 | Architecture patterns, distributed systems, scalability |
| **frontend** | 9 | React/Redux, UI engineering, state management |
| **backend** | 8 | API design, security, observability, migrations |
| **design** | 4 | Visual design, design systems, UI/UX |
| **eval** | 8 | Skill evaluation, TDD eval, config validation |
| **spec** | 1 | Spec-driven development |
| **writing** | 3 | Documentation, ADRs, humanizer |
| **tools** | 1 | Browser automation |

**Total: 103 skills**

---

## Workflow Skills (27)

| Skill | Source | Description |
|-------|--------|-------------|
| `antislop` | miqdadbadjuber/anti-slop | Anti-slop filter: rules for AI coding agents, prevents generic output |
| `brainstorming` | wshobson/agents | Divergent/convergent ideation, stress-test assumptions |
| `ci-cd-and-automation` | addyosmani/agent-skills | Build/deployment pipeline setup, quality gates |
| `code-simplification` | addyosmani/agent-skills | Refactor for clarity without changing behavior |
| `constraint-driven-development` | addyosmani/agent-skills | Quality bar as written contract (CONSTRAINTS.md) |
| `context-engineering` | addyosmani/agent-skills | Optimize agent context setup, rules files |
| `dispatching-parallel-agents` | wshobson/agents | Coordinate multiple agents on parallel workstreams |
| `doubt-driven-development` | addyosmani/agent-skills | Adversarial review before decisions stand |
| `executing-plans` | wshobson/agents | Thin, verifiable slices; feature flags; incremental delivery |
| `find-skills` | wshobson/agents | Discover and invoke agent skills |
| `git-workflow-and-versioning` | addyosmani/agent-skills | Commits, branches, PRs, semantic versioning, changelogs |
| `grill-me` | wshobson/agents | Relentless interview to sharpen a plan/design |
| `grilling` | wshobson/agents | Interview primitive behind grill-me, triage, wayfinder |
| `idea-refine` | addyosmani/agent-skills | Divergent/convergent thinking to stress-test plans |
| `incremental-implementation` | addyosmani/agent-skills | Deliver changes in thin, verifiable slices |
| `interview-me` | addyosmani/agent-skills | Extract actual intent via one-question-at-a-time |
| `karpathy-guidelines` | wshobson/agents | Andrej Karpathy's software engineering principles |
| `planning-and-task-breakdown` | addyosmani/agent-skills | Break work into ordered, implementable tasks |
| `ponytail` | dietrichgebert/ponytail | Lazy senior dev: YAGNI, stdlib-first, shortest working diff |
| `shipping-and-launch` | addyosmani/agent-skills | Pre-launch checklist, monitoring, rollout, rollback |
| `source-driven-development` | addyosmani/agent-skills | Ground decisions in official documentation |
| `spec-driven-development` | addyosmani/agent-skills | Create specs before coding (PRD, capability map) |
| `subagent-driven-development` | wshobson/agents | Delegate to specialized sub-agents |
| `using-agent-skills` | addyosmani/agent-skills | Meta-skill: discover and invoke other skills |
| `using-superpowers` | wshobson/agents | Leverage agent capabilities effectively |
| `writing-plans` | wshobson/agents | Write clear, executable plans |
| `writing-skills` | wshobson/agents | Create new agent skills |

---

## Quality Skills (11)

| Skill | Source | Description |
|-------|--------|-------------|
| `browser-testing-with-devtools` | addyosmani/agent-skills | Test in real browsers via Chrome DevTools MCP |
| `code-review-and-quality` | addyosmani/agent-skills | Multi-axis code review before merge |
| `debugging-and-error-recovery` | addyosmani/agent-skills | Systematic root-cause debugging |
| `finishing-a-development-branch` | wshobson/agents | Complete and merge feature branches cleanly |
| `performance-optimization` | addyosmani/agent-skills | Optimize frontend, backend, queries, databases |
| `receiving-code-review` | wshobson/agents | Process feedback from code reviews |
| `requesting-code-review` | wshobson/agents | Prepare PRs for effective review |
| `systematic-debugging` | wshobson/agents | Methodical debugging approach |
| `test-driven-development` | addyosmani/agent-skills | Red-green-refactor loop for all changes |
| `using-git-worktrees` | wshobson/agents | Parallel workstreams with git worktrees |
| `verification-before-completion` | wshobson/agents | Verify work before declaring done |

---

## System Design Skills (22)

| Skill | Description |
|-------|-------------|
| `api-design` | REST/GraphQL API design principles |
| `architecture-case-studies` | Real-world architecture deep-dives |
| `backend-architecture` | Service layer, domain modeling, modularity |
| `caching-and-cdn` | Cache strategies, CDN integration |
| `cloud-and-infrastructure` | Cloud patterns, IaC, serverless |
| `computer-fundamentals` | OS, networking, storage basics for engineers |
| `data-and-ai-pipelines` | ETL, ML pipelines, vector search |
| `database-design` | Schema design, normalization, indexing |
| `deployment-strategies` | Blue-green, canary, rolling deployments |
| `developer-productivity` | Tooling, DX, inner-loop optimization |
| `devops-and-platform` | Platform engineering, internal tools |
| `distributed-systems` | Consensus, replication, partitioning |
| `high-availability-and-resilience` | Fault tolerance, circuit breakers, retries |
| `messaging-and-streaming` | Event-driven, Kafka, pub/sub patterns |
| `networking-fundamentals` | TCP/IP, DNS, load balancing, service mesh |
| `observability` | Logging, metrics, tracing, alerting |
| `payment-systems` | Payment processing, compliance, fraud |
| `scalability-and-performance` | Horizontal scaling, bottlenecks, profiling |
| `security-and-auth` | AuthN/AuthZ, OAuth, JWT, zero-trust |
| `software-engineering-craft` | Code quality, patterns, maintainability |
| `system-design-interviews` | Interview preparation, frameworks |
| `system-design-method` | Structured approach to system design |

---

## Frontend Skills (9)

| Skill | Source | Description |
|-------|--------|-------------|
| `adopt-rtk-query` | wshobson/agents | Migrate to RTK Query for server state |
| `build-slices-and-selectors` | wshobson/agents | Redux Toolkit slice patterns |
| `debug-redux-toolkit-apps` | wshobson/agents | Debug RTK apps with DevTools |
| `design-state-ownership` | wshobson/agents | Component vs. global state boundaries |
| `frontend-ui-engineering` | addyosmani/agent-skills | Production-quality, accessible, responsive UIs |
| `handle-side-effects` | wshobson/agents | RTK listeners, thunks, sagas |
| `migrate-to-modern-redux` | wshobson/agents | Legacy Redux → RTK migration |
| `modern-redux` | wshobson/agents | RTK patterns, TypeScript, performance |
| `redux-dataflow` | wshobson/agents | Unidirectional data flow patterns |

---

## Backend Skills (8)

| Skill | Source | Description |
|-------|--------|-------------|
| `api-and-interface-design` | addyosmani/agent-skills | Stable API/module boundaries, type contracts |
| `deprecation-and-migration` | addyosmani/agent-skills | Safe removals, expand/contract migrations |
| `dotenv` | wshobson/agents | Environment variable management |
| `dotenvx` | wshobson/agents | Encrypted env files with dotenvx |
| `fastapi` | wshobson/agents | FastAPI patterns, dependency injection |
| `observability-and-instrumentation` | addyosmani/agent-skills | Logging, metrics, tracing for production |
| `security-and-hardening` | addyosmani/agent-skills | OWASP Top 10, input validation, secrets |
| `typer` | wshobson/agents | CLI building with Typer |

---

## Design Skills (4)

| Skill | Source | Description |
|-------|--------|-------------|
| `apple-design` | nextlevelbuilder/ui-ux-pro-max | Apple HIG principles, SF Symbols, native patterns |
| `design-taste-frontend` | leonxlnx/taste-skill | Anti-slop landing pages/portfolios, real design systems |
| `extract-design-system` | wshobson/agents | Derive tokens/components from existing UI |
| `ui-ux-pro-max` | nextlevelbuilder/ui-ux-pro-max | 50+ styles, 161 palettes, 57 font pairings, 99 UX guidelines |

---

## Eval Skills (8)

| Skill | Description |
|-------|-------------|
| `agent-skill-eval` | Evaluate agent skill effectiveness |
| `basic-skill` | Basic skill evaluation framework |
| `commit-push-pr` | Evaluate commit/PR quality |
| `fix-failing-tests` | Test repair evaluation |
| `review-diff` | Code review evaluation |
| `tdd-eval` | TDD practice evaluation |
| `validate-config` | Configuration validation |
| `write-release-notes` | Release note quality evaluation |

---

## Spec Skills (1)

| Skill | Source | Description |
|-------|--------|-------------|
| `to-spec` | wshobson/agents | Turn conversation into spec, publish to issue tracker |

---

## Writing Skills (3)

| Skill | Source | Description |
|-------|--------|-------------|
| `caveman` | wshobson/agents | Terse, direct communication style |
| `documentation-and-adrs` | addyosmani/agent-skills | Architecture Decision Records, API docs |
| `humanizer` | wshobson/agents | Make AI writing sound human |

---

## Tools Skills (1)

| Skill | Description |
|-------|-------------|
| `agent-browser` | Browser automation for agents |

---

## Installation Script

The `Install-Skills.ps1` script copies or symlinks skills from this library to any project:

```powershell
.\Install-Skills.ps1 -Target "D:\path\to\project" -Categories @("workflow","quality") -Mode copy
```

**Parameters:**
- `-Target` (required): Target project path
- `-Categories`: Array of categories (default: workflow, quality, spec, design)
- `-Skills`: Specific skill names (overrides categories)
- `-Mode`: `copy` (default) or `symlink`
- `-DestSub`: Destination subdirectory (default: `.agent/skills`)

---

## Skill Structure

Each skill is a directory containing:
```
skill-name/
├── SKILL.md          # Main skill instructions (required)
├── VERSION           # Version from source repo
├── agents/           # Sub-agent definitions (optional)
├── references/       # Reference materials (optional)
├── scripts/          # Helper scripts (optional)
└── evals/            # Evaluation tests (optional)
```

---

## Sources

Skills sourced from:
- **wshobson/agents** - Core workflow, frontend, backend, design, system design
- **addyosmani/agent-skills** - 25 engineering productivity skills
- **miqdadbadjuber/anti-slop** - Anti-slop filter system
- **leonxlnx/taste-skill** - Design taste for frontend
- **dietrichgebert/ponytail** - Minimalist/lazy coding philosophy
- **nextlevelbuilder/ui-ux-pro-max** - Comprehensive UI/UX design intelligence

---

## Updating Skills

```bash
# Update all skills from their sources
npx skills update

# Or re-run the installer for a specific source
npx skills add https://github.com/wshobson/agents --skill responsive-design
```

---

## License

Individual skills retain their original licenses (mostly MIT, Apache-2.0). See each skill's `SKILL.md` for details.