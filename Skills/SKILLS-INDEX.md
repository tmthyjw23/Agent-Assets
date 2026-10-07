# Agent Skills Library — D:\Agent-Assets\Skills

Sentral skill library. 66 skill unik (37 umum + 22 SystemDesign + 7 eval harness), deduplikat dari seluruh `D:\` + harness eval.
Sumber kanonis: `.agent/skills` proyek + `skills-lock.json` + bundled `node_modules` / `.venv` (official).

Struktur:
```
Skills/
  workflow/   # orkestrasi: superpowers, planning, paralel, subagent, grilling
  quality/    # debug, TDD, verifikasi, review, git
  design/     # UI/UX + Apple design + extract design token
  spec/       # to-spec
  backend/    # fastapi, typer, dotenv, dotenvx
  frontend/   # 8x redux-toolkit (RTK)
  tools/      # agent-browser (browser automation CLI)
  writing/    # humanizer + caveman
  eval/       # 7 skill harness agent-skill-eval (lift benchmark + 6 contoh: basic-skill, commit-push-pr, ...)
  SystemDesign/  # 22 skill dari ByteByteGo system-design-101 (lihat SYSTEMDESIGN-INDEX.md)
  SKILLS-INDEX.md
  registry.json
  Install-Skills.ps1
  AGENTS-snippet.md
```

Aturan:
- 1 skill = 1 folder berisi `SKILL.md` (frontmatter `name`+`description` wajib) + `references/`/`scripts/`/`assets/` bila ada.
- Nama folder = nama skill (flat per kategori). Khusus redux: `modern-redux` dst (asli `build-modern-redux-apps/modern-redux` dst — prefix grup dibuang agar flat).
- Jangan commit `.git/`, `.github/`, `__pycache__/`, `node_modules/`, `.venv/` (sudah dibersihkan saat import).
- Tambah skill baru: copy folder ke kategori yang pas, update `SKILLS-INDEX.md` + `registry.json`.

## Index cepat

### workflow/ (11)
| Skill | Trigger |
|---|---|
| using-superpowers | Wajib pertama tiap sesi — paksa cek skill sebelum respon |
| karpathy-guidelines | **Foundation**: Think Before Coding, Simplicity First, Surgical Changes, Goal-Driven (auto-load dengan using-superpowers) |
| brainstorming | Sebelum kerja kreatif / fitur baru |
| writing-plans | Punya spec, sebelum sentuh kode |
| executing-plans | Eksekusi plan tertulis sesi terpisah + checkpoint |
| dispatching-parallel-agents | 2+ task independen paralel |
| subagent-driven-development | Eksekusi plan via subagent sesi ini |
| writing-skills | Buat/edit/verifikasi skill |
| grill-me | Interview kejam untuk pertajam plan/desain (memanggil `grilling`) |
| grilling | Stress-test thinking user per ronde, petakan decision tree |
| find-skills | User cari kapabilitas baru ("is there a skill for X") |

### quality/ (7)
| Skill | Trigger |
|---|---|
| systematic-debugging | Bug / test fail, sebelum fix |
| test-driven-development | Sebelum tulis kode implementasi |
| verification-before-completion | Sebelum klaim selesai / commit / PR |
| requesting-code-review | Selesai fitur, sebelum merge |
| receiving-code-review | Saat terima feedback review |
| finishing-a-development-branch | Integrasi: merge / PR / cleanup |
| using-git-worktrees | Butuh isolasi workspace / worktree |

### design/ (3)
| Skill | Trigger |
|---|---|
| ui-ux-pro-max | Desain UI/UX (50 styles, 21 palettes, 50 fonts) |
| apple-design | Gaya Apple: fluid motion, springs, gestures, materials, typography web |
| extract-design-system | Reverse token dari URL publik → `design-system/tokens.*` |

### spec/ (1)
| Skill | Trigger |
|---|---|
| to-spec | Ubah diskusi jadi spec ke issue tracker |

### backend/ (4)
| Skill | Trigger |
|---|---|
| fastapi | API FastAPI + Pydantic (official bundled) |
| typer | CLI Typer (official bundled) |
| dotenv | `.env` Node.js, secrets, gotchas expansion/enkripsi |
| dotenvx | dotenvx multi-env, run, encrypt, CI/CD |

### frontend/ (8, official @reduxjs/toolkit)
| Skill | Trigger |
|---|---|
| modern-redux | Build modern Redux |
| redux-dataflow | Dataflow Redux |
| debug-redux-toolkit-apps | Debug RTK |
| migrate-to-modern-redux | Migrasi ke modern Redux |
| adopt-rtk-query | RTK Query server data |
| build-slices-and-selectors | Slices + selectors |
| design-state-ownership | Desain state ownership |
| handle-side-effects | Side effects / thunk-listener |

### tools/ (1)
| Skill | Trigger |
|---|---|
| agent-browser | Otomatisasi browser: navigasi, klik, form, screenshot, scraping, QA web/Electron. Trigger: "open a website", "take a screenshot", "test this web app" |

### writing/ (2)
| Skill | Trigger |
|---|---|
| humanizer v3.0.0 | Hilangkan pola AI writing, tanpa ubah fakta |
| caveman | Mode komunikasi ultra-ringkas (lite/full/ultra + wenyan), hemat token. Trigger: `/caveman`, "caveman mode", "be brief" |

### eval/ (7)
Harness `agent-skill-eval` (tardigrde + darkrishabh). Benchmark apakah skill beneran ngebantu: with_skill vs without_skill.

| Skill | Trigger |
|---|---|
| agent-skill-eval | Harness utama: `ase run/run-all/validate/report`. Trigger: "skill eval", "benchmark skill", "with_skill vs without_skill" |
| basic-skill | Contoh analytics: CSV → highest revenue month |
| commit-push-pr | Git workflow: branch/commit/push/PR via gh CLI |
| fix-failing-tests | Debug: jalankan test → diagnosa → fix → verify |
| review-diff | Review .diff tanpa ubah file, severity-tagged |
| validate-config | Validasi config → CONFIG_REPORT.md |
| write-release-notes | Commit history → RELEASE_NOTES.md grouped |

### SystemDesign/ (22)
22 skill system design disintesis dari ByteByteGo `system-design-101`.
Lihat `SystemDesign/SYSTEMDESIGN-INDEX.md` untuk daftar + trigger lengkap.
Ringkas: `system-design-method`, `system-design-interviews`,
`scalability-and-performance`, `high-availability-and-resilience`,
`distributed-systems`, `observability`, `database-design`, `caching-and-cdn`,
`messaging-and-streaming`, `data-and-ai-pipelines`, `api-design`,
`networking-fundamentals`, `security-and-auth`, `backend-architecture`,
`cloud-and-infrastructure`, `deployment-strategies`, `devops-and-platform`,
`computer-fundamentals`, `developer-productivity`, `software-engineering-craft`,
`payment-systems`, `architecture-case-studies`.

## Pakai ke proyek
```powershell
# copy default (workflow+quality+spec+design) ke proyek:
.\Install-Skills.ps1 -Target "D:\SERIUS\Prospace\DevPortfolio"

# semua kategori:
.\Install-Skills.ps1 -Target "D:\path\proyek" -Categories all

# skill tertentu saja:
.\Install-Skills.ps1 -Target "D:\path\proyek" -Skills @("humanizer","typer","fastapi")

# seluruh SystemDesign (22 skill):
.\Install-Skills.ps1 -Target "D:\path\proyek" -Categories SystemDesign

# eval harness saja (7 skill):
.\Install-Skills.ps1 -Target "D:\path\proyek" -Categories eval

# seluruh eval + SystemDesign sekaligus:
.\Install-Skills.ps1 -Target "D:\path\proyek" -Categories @("eval","SystemDesign")
```
Lihat `AGENTS-snippet.md` untuk ditempel ke `AGENTS.md`/`CLAUDE.md`.
