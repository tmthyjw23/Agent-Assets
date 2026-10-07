# SystemDesign — Skills dari ByteByteGo system-design-101

22 skill di `D:\Agent-Assets\Skills\SystemDesign\`, disintesis dari repo
`D:\Agent-Assets\system-design-101` (15 kategori, 400+ guide). Semua guide asli
dirujuk lewat path relatif `...\<file>.md` dengan base
`D:\Agent-Assets\system-design-101\data\guides\`.

Catatan: kategori `SystemDesign` adalah domain khusus (bukan kategori library
umum). Ia mengelompokkan banyak skill terkait alih-alih 1 skill per kategori.

## Skill map

### Fondasi metode
| Skill | Gunakan untuk |
|---|---|
| system-design-method | Proses 7 langkah: requirements, capacity, HLD, DB, API, scale, reliability |
| system-design-interviews | Struktur jawaban interview + latihan + angka kapasitas |

### Skala & keandalan
| Skill | Gunakan untuk |
|---|---|
| scalability-and-performance | Scale up/out, sharding, latency, throughput |
| high-availability-and-resilience | Redundancy, failover, retries, idempotency, DR |
| distributed-systems | CAP, consistency, consensus, ID unik, koordinasi |
| observability | Log/metric/trace, SLI/SLO, alerting, debug produksi |

### Data & messaging
| Skill | Gunakan untuk |
|---|---|
| database-design | Pilih DB, schema, index, transaksi, sharding, replikasi |
| caching-and-cdn | Strategi cache, eviction, invalidation, Redis, CDN |
| messaging-and-streaming | Queue/stream, delivery semantics, event-driven, Kafka |
| data-and-ai-pipelines | Pipeline data, batch vs stream, AI/LLM serving |

### API & jaringan
| Skill | Gunakan untuk |
|---|---|
| api-design | REST/GraphQL/gRPC, pagination, versioning, gateway, webhook |
| networking-fundamentals | DNS, TCP/UDP, HTTP/1-2-3, TLS, latency budget |
| security-and-auth | OAuth/OIDC/JWT/SSO, password, enkripsi, RBAC, DevSecOps |

### Arsitektur & platform
| Skill | Gunakan untuk |
|---|---|
| backend-architecture | Monolith vs microservices, design pattern, DDD, monorepo |
| cloud-and-infrastructure | AWS/Azure/GCP, serverless, IaC, cloud cost, 12-factor |
| deployment-strategies | Blue/green, canary, zero-downtime, rollback, feature flag |
| devops-and-platform | CI/CD, Docker, Kubernetes, SRE, platform engineering |

### Dasar teknis & praktik
| Skill | Gunakan untuk |
|---|---|
| computer-fundamentals | Process/thread, concurrency, memori, deadlock, GC |
| developer-productivity | Git, Linux, diagram-as-code, code quality, review |
| software-engineering-craft | Paradigma, data structure, algoritma, SQL, karier |

### Domain & pembelajaran
| Skill | Gunakan untuk |
|---|---|
| payment-systems | Payment, settlement, reconciliation, idempotency, fintech |
| architecture-case-studies | Netflix/Uber/Discord/Figma + desain klasik (chat, feed...) |

## Cara pakai
- Mulai dari `system-design-method` untuk desain baru.
- Masuk ke skill komponen sesuai kebutuhan (DB, API, cache, queue...).
- Untuk interview: `system-design-interviews` + `architecture-case-studies`.
- Semua skill saling menaut di bagian "Related skills".

Install ke proyek:
```powershell
# SystemDesign itu 1 kategori; installer library mengharapkan skill langsung.
# Untuk 22 skill ini, copy seluruh folder:
Copy-Item "D:\Agent-Assets\Skills\SystemDesign\*" "D:\path\proyek\.agent\skills\" -Recurse
```

## Sumber
- Repo: `D:\Agent-Assets\system-design-101` (ByteByteGoHq/system-design-101)
- Kategori: api-web-development, caching-performance, cloud-distributed-systems,
  computer-fundamentals, database-and-storage, devops-cicd, devtools-productivity,
  how-it-works, payment-and-fintech, real-world-case-studies, security,
  software-architecture, software-development, technical-interviews,
  ai-machine-learning.
