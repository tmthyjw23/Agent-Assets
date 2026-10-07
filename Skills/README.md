# Skills Library — Dokumentasi

Library sentral skill agent di `D:\Agent-Assets\Skills`. 66 skill unik (37 umum + 22 SystemDesign + 7 eval) hasil deduplikasi
seluruh `D:\` (duplikat antar proyek hash-nya identik, jadi 1 salinan kanonis cukup).

## 1. Struktur folder

```
Skills/
  README.md              # dokumentasi ini
  SKILLS-INDEX.md        # index cepat + trigger per skill
  registry.json          # index machine-readable (66 entri)
  Install-Skills.ps1     # skrip distribusi ke proyek
  AGENTS-snippet.md      # snippet untuk AGENTS.md / CLAUDE.md / GEMINI.md
  workflow/              # 11 skill orkestrasi
  quality/               # 7 skill debug / test / review / git
  design/                # 3 skill UI/UX + Apple design + design token
  spec/                  # 1 skill to-spec
  backend/               # 4 skill fastapi, typer, dotenv, dotenvx
  frontend/              # 8 skill redux-toolkit (official RTK)
  tools/                 # 1 skill agent-browser
  writing/               # 2 skill humanizer + caveman
  eval/                  # 7 skill harness agent-skill-eval (benchmark + 6 contoh)
  SystemDesign/          # 22 skill dari ByteByteGo system-design-101
```

Aturan struktur:

- 1 skill = 1 folder. Nama folder = nama skill (flat per kategori).
- Tiap folder skill wajib ada `SKILL.md` dengan frontmatter `name:` dan
  `description:`. File pendukung (`references/`, `scripts/`, `assets/`,
  `README.md`, `AGENTS.md`, `LICENSE`) ikut disalin bila ada.
- Pengecualian penamaan: 8 skill redux nama aslinya `grup/nama`
  (mis. `build-modern-redux-apps/modern-redux`) di-flatten jadi `modern-redux`
  agar tidak nested.
- Yang TIDAK disimpan: `.git/`, `.github/`, `__pycache__/`, `node_modules/`,
  `.venv/`. Sudah dibersihkan saat import.

## 2. Daftar skill (66)

### workflow/ (11) — orkestrasi sesi

| Skill | Kapan dipakai |
|---|---|
| using-superpowers | Pertama tiap sesi. Memaksa cek skill sebelum merespon, bahkan untuk pertanyaan klarifikasi. |
| karpathy-guidelines | **Foundation (auto-load)**: Think Before Coding, Simplicity First, Surgical Changes, Goal-Driven Execution. Guardrails perilaku coding LLM. |
| brainstorming | Sebelum kerja kreatif (fitur, komponen, ubah behavior). Gali intent/requirement/desain dulu. |
| writing-plans | Punya spec/requirement multi-step, sebelum sentuh kode. |
| executing-plans | Eksekusi plan tertulis di sesi terpisah dengan checkpoint review. |
| dispatching-parallel-agents | 2+ task independen tanpa shared state / dependensi sekuensial. |
| subagent-driven-development | Eksekusi plan via subagent di sesi berjalan. |
| writing-skills | Buat / edit / verifikasi skill sebelum deploy. |
| grill-me | Interview kejam untuk pertajam plan/desain. Memanggil skill `grilling`. Sumber: `mattpocock/skills` (via `npx skills add`). |
| grilling | Stress-test thinking user per ronde (decision tree + frontier). Sumber: `mattpocock/skills` (via `npx skills add`). |
| find-skills | User cari kapabilitas baru ("is there a skill for X"). Cari + install skill dari ekosistem. Sumber: `vercel-labs/skills` (via `npx skills add`). |

### quality/ (7) — debug, test, review, git

| Skill | Kapan dipakai |
|---|---|
| systematic-debugging | Bug, test fail, atau behavior tak terduga — sebelum mengusulkan fix. |
| test-driven-development | Sebelum tulis kode implementasi fitur/bugfix. |
| verification-before-completion | Sebelum klaim selesai/fixed/passing, sebelum commit/PR. Bukti dulu, klaim kemudian. |
| requesting-code-review | Selesai task / fitur besar, sebelum merge. |
| receiving-code-review | Saat terima feedback review, sebelum implementasi — verifikasi teknis, jangan setuju buta. |
| finishing-a-development-branch | Implementasi selesai + test hijau, pilih integrasi: merge / PR / cleanup. |
| using-git-worktrees | Butuh isolasi workspace untuk fitur atau eksekusi plan. |

### design/ (3)

| Skill | Kapan dipakai |
|---|---|
| ui-ux-pro-max | Butuh desain UI/UX (50 styles, 21 palettes, 50 font pairing). |
| apple-design | Gaya Apple untuk web: fluid motion, springs, gesture/drag/sheet, materials, typography. Sumber: `emilkowalski/skills` (via `npx skills add`). |
| extract-design-system | Reverse design token dari URL publik → `design-system/tokens.json` + `tokens.css`. Sumber: `arvindrk/extract-design-system` (via `npx skills add`). |

### spec/ (1)

| Skill | Kapan dipakai |
|---|---|
| to-spec | Ubah diskusi berjalan jadi spec ke issue tracker, tanpa interview. Sumber: `mattpocock/skills` (via `npx skills add`). |

### backend/ (4)

| Skill | Kapan dipakai |
|---|---|
| fastapi | Kerja dengan FastAPI + Pydantic. Skill official bawaan paket `fastapi`. |
| typer | Kerja dengan CLI Typer. Skill official bawaan paket `typer`. |
| dotenv | Konfigurasi `.env` Node.js (secrets, API keys, DB URL). Berisi gotchas expansion/enkripsi. Skill bawaan paket `dotenv`. |
| dotenvx | `dotenvx run`, multi-env, variable expansion, enkripsi untuk commit/CI-CD aman. |

### frontend/ (8, official @reduxjs/toolkit)

| Skill | Kapan dipakai |
|---|---|
| modern-redux | Build Redux modern. |
| redux-dataflow | Dataflow Redux. |
| debug-redux-toolkit-apps | Debug aplikasi RTK. |
| migrate-to-modern-redux | Migrasi Redux lama ke modern. |
| adopt-rtk-query | Adopsi RTK Query untuk server data. |
| build-slices-and-selectors | Bangun slices + selectors. |
| design-state-ownership | Desain kepemilikan state. |
| handle-side-effects | Side effects (thunk/listener). |

### tools/ (1)

| Skill | Kapan dipakai |
|---|---|
| agent-browser | Otomatisasi browser via CLI (CDP): navigasi, klik, form, screenshot, scraping, QA web app + Electron (VS Code, Slack, Figma...). Trigger: "open a website", "take a screenshot", "test this web app". Sumber: `vercel-labs/agent-browser` (via `npx skills add`). |

### writing/ (2)

| Skill | Kapan dipakai |
|---|---|
| humanizer v3.0.0 | Tulis/edit prose yang terdengar seperti AI. Rapikan tanpa mengubah fakta. |
| caveman | Mode komunikasi ultra-ringkas (lite/full/ultra + wenyan). Hemat token, akurasi teknis tetap. Trigger: `/caveman`, "caveman mode", "be brief". Sumber: `juliusbrussee/caveman` (via `npx skills add`). |

### SystemDesign/ (22)

Skill system design disintesis dari repo ByteByteGo `system-design-101`
(15 kategori, 400+ guide). Tiap SKILL.md punya playbook + checklist + rujukan
langsung ke guide sumber (`...\<file>.md`, base
`D:\Agent-Assets\system-design-101\data\guides\`).

| Skill | Kapan dipakai |
|---|---|
| system-design-method | Proses 7 langkah desain sistem + tradeoff discipline |
| system-design-interviews | Struktur jawaban, kapasitas, latihan interview |
| scalability-and-performance | Scale up/out, sharding, latency, throughput |
| high-availability-and-resilience | Redundancy, failover, retries, idempotency, DR |
| distributed-systems | CAP, consistency, consensus, unique ID, koordinasi |
| observability | Log/metric/trace, SLI/SLO, alerting, debug produksi |
| database-design | Pilih DB, schema, index, transaksi, sharding, replikasi |
| caching-and-cdn | Strategi cache, eviction, invalidation, Redis, CDN |
| messaging-and-streaming | Queue/stream, delivery semantics, event-driven, Kafka |
| data-and-ai-pipelines | Pipeline data, batch vs stream, AI/LLM serving |
| api-design | REST/GraphQL/gRPC, pagination, versioning, gateway, webhook |
| networking-fundamentals | DNS, TCP/UDP, HTTP/1-2-3, TLS, latency budget |
| security-and-auth | OAuth/OIDC/JWT/SSO, password, enkripsi, RBAC, DevSecOps |
| backend-architecture | Monolith vs microservices, pattern, DDD, monorepo |
| cloud-and-infrastructure | AWS/Azure/GCP, serverless, IaC, cloud cost, 12-factor |
| deployment-strategies | Blue/green, canary, zero-downtime, rollback, feature flag |
| devops-and-platform | CI/CD, Docker, Kubernetes, SRE, platform engineering |
| computer-fundamentals | Process/thread, concurrency, memori, deadlock, GC |
| developer-productivity | Git, Linux, diagram-as-code, code quality, review |
| software-engineering-craft | Paradigma, data structure, algoritma, SQL, karier |
| payment-systems | Payment, settlement, reconciliation, idempotency, fintech |
| architecture-case-studies | Netflix/Uber/Discord/Figma + desain klasik |

Index terpisah + trigger: `SystemDesign/SYSTEMDESIGN-INDEX.md`.

### eval/ (7) — skill harness benchmark

| Skill | Kapan dipakai |
|---|---|
| agent-skill-eval | Harness benchmark: `ase run/run-all/validate/report`, with_skill vs without_skill. Trigger: "skill eval", "benchmark skill" |
| basic-skill | Contoh analytics: CSV → highest revenue month |
| commit-push-pr | Git workflow: branch/commit/push/PR via gh CLI |
| fix-failing-tests | Debug: run tests → diagnose → fix → verify |
| review-diff | Review .diff tanpa ubah file, severity-tagged verdict |
| validate-config | Validasi config → CONFIG_REPORT.md |
| write-release-notes | Commit history → RELEASE_NOTES.md grouped |

Harness terinstall sebagai CLI `agent-skill-eval` / `ase` (`python -m agent_skill_eval`). Lihat `eval/agent-skill-eval/SKILL.md`.

## 3. Cara pakai (TANPA API KEY)

**PENTING: Skill ini adalah file Markdown instruksi. Tidak butuh API key eksternal untuk dipakai.**

Skill = sekumpulan aturan/prosedur dalam `SKILL.md` yang dibaca & diikuti oleh AI coding agent (Claude Code, Cursor, OpenCode, Codex, Kimi, dsb). Agent Anda sudah punya model LLM-nya sendiri — skill hanya memberinya **konteks & perilaku tambahan**.

API key (`OPENAI_API_KEY`, `ANTHROPIC_API_KEY`, dll) **hanya** dibutuhkan kalau Anda menjalankan **evaluasi otomatis** via `agent-skills-eval` (bandingkan output `with_skill` vs `without_skill` pakai LLM judge). Untuk penggunaan sehari-hari: **tidak perlu API key**.

---

### 3.1 Install ke proyek (cara utama)

Default menginstall `workflow + quality + spec + design` (21 skill inti) ke
`.agent/skills/`:

```powershell
D:\Agent-Assets\Skills\Install-Skills.ps1 -Target "D:\path\proyek"
```

Semua kategori (65 skill, termasuk SystemDesign + eval):

```powershell
D:\Agent-Assets\Skills\Install-Skills.ps1 -Target "D:\path\proyek" -Categories all
```

Kategori tertentu:

```powershell
D:\Agent-Assets\Skills\Install-Skills.ps1 -Target "D:\path\proyek" -Categories @("backend","frontend")
```

Skill tertentu saja:

```powershell
D:\Agent-Assets\Skills\Install-Skills.ps1 -Target "D:\path\proyek" -Skills @("humanizer","typer","fastapi")
```

Mode symlink (hemat disk, selalu ikut update sentral; butuh hak symlink):

```powershell
D:\Agent-Assets\Skills\Install-Skills.ps1 -Target "D:\path\proyek" -Mode symlink
```

Target folder proyek lain (`.agents/skills` atau `skills`):

```powershell
D:\Agent-Assets\Skills\Install-Skills.ps1 -Target "D:\path\proyek" -DestSub ".agents/skills"
```

Parameter lengkap: `-Target` (wajib), `-Categories` (default
`workflow,quality,spec,design`; `all` = 10 kategori), `-Skills` (nama folder
skill, mengalahkan `-Categories`), `-Mode` (`copy`/`symlink`),
`-DestSub` (`.agent/skills` / `.agents/skills` / `skills`).

### 3.2 Daftarkan ke agent

Tempel isi `AGENTS-snippet.md` ke `AGENTS.md` / `CLAUDE.md` / `GEMINI.md`
proyek. Intinya: tunjuk library sentral, urutan skill
(`using-superpowers` → `karpathy-guidelines` → `brainstorming` → `writing-plans` → ...), lokasi
skill proyek (`.agent/skills/`), dan larangan duplikat manual.

### 3.3 Contoh pakai harian (tanpa API key)

**Skenario:** Anda mau bikin fitur baru di proyek React + Redux.

1. **Buka Claude Code / Cursor / OpenCode** di folder proyek.
2. **Agent sudah baca `CLAUDE.md`** → auto-load `using-superpowers` + `karpathy-guidelines` (foundation skills).
3. **Anda bilang:** *"Buatkan fitur todo-list dengan Redux Toolkit, pakai RTK Query untuk fetch data."*
4. **Agent (via `using-superpowers`) cek skill** → temukan `frontend/adopt-rtk-query`, `frontend/modern-redux`, `frontend/build-slices-and-selectors`.
5. **Agent invoke skill tsb** → baca `SKILL.md` masing-masing → ikuti prosedur:
   - `karpathy-guidelines`: Tanya dulu asumsi (API endpoint? auth? caching?), simpel, surgical, goal-driven.
   - `adopt-rtk-query`: Setup `createApi`, `fetchBaseQuery`, tag invalidation.
   - `modern-redux`: `configureStore`, typed hooks, feature folders.
   - `build-slices-and-selectors`: `createSlice`, `createSelector` memoized.
6. **Hasil:** Kode yang konsisten dengan best-practice RTK, tanpa over-engineering, dengan verifikasi tiap langkah.

**Tidak ada pemanggilan API eksternal.** Agent menggunakan model internal-nya sendiri + instruksi dari skill.

### 3.4 Pakai skill spesifik tanpa install ke proyek (ad-hoc)

Bisa langsung rujuk skill sentral dari chat agent:

> "Pakai skill `D:\Agent-Assets\Skills\quality\test-driven-development\SKILL.md` untuk bikin fungsi ini."

Atau copy-paste isi `SKILL.md` ke chat jika agent tidak support skill tool.

### 3.5 Pakai SystemDesign skill (reference guide)

22 skill di `SystemDesign/` punya rujukan langsung ke `D:\Agent-Assets\system-design-101\data\guides\*.md` (400+ file ByteByteGo).

Contoh:
> "Pakai skill `system-design-method` desain sistem rate-limiter 10k req/s."

Agent baca playbook 7 langkah + checklist + buka guide sumber (`rate-limiting.md`, `api-gateway.md`, dll) dari folder ByteByteGo lokal — **offline, tanpa API key**.

### 3.6 Cari skill

- Manusia: baca `SKILLS-INDEX.md` (tabel trigger per kategori).
- Tooling: parse `registry.json` (`skills[].name`, `.path`, `.category`,
  `.description`, `.source`).

## 5. Anatomi satu skill

```
<kategori>/<nama-skill>/
  SKILL.md            # wajib
  references/         # opsional, materi pendukung
  scripts/            # opsional, skrip pembantu
  assets/             # opsional
  README.md / AGENTS.md / LICENSE  # opsional, bila bawaan sumber
```

`SKILL.md` minimal:

```markdown
---
name: nama-skill
description: Kapan skill dipakai. Dipakai agent untuk discovery.
---

# Judul
Instruksi...
```

Validasi cepat (semua 65 saat ini lolos):

```powershell
Get-ChildItem "D:\Agent-Assets\Skills" -Recurse -Force |
  Where-Object { $_.Name -eq "SKILL.md" } |
  ForEach-Object {
    $c = Get-Content -LiteralPath $_.FullName -TotalCount 6 | Out-String
    if ($c -notmatch "name:" -or $c -notmatch "description:") { $_.FullName }
  }
```

## 6. Menambah / update / menghapus skill

### Tambah skill baru

1. Copy folder skill ke kategori yang pas
   (`workflow quality design spec backend frontend tools writing eval SystemDesign`).
2. Pastikan `SKILL.md` punya frontmatter `name` + `description`.
3. Buang `.git/ .github/ __pycache__/ node_modules/ .venv/`.
4. Tambah 1 baris ke tabel kategori di `SKILLS-INDEX.md`.
5. Tambah 1 entri ke `registry.json` (`name`, `path`, `category`,
   `description`, `source`).
6. Sync ulang ke proyek via `Install-Skills.ps1`.

### Update skill

Edit langsung di sentral, lalu sync ulang (mode `copy` menimpa penuh;
mode `symlink` ikut otomatis). Bila sumbernya paket (`node_modules`/`.venv`)
atau `npx skills add`, copy ulang dari sumber kanonis lalu bersihkan
folder sampah seperti langkah 3 di atas.

### Hapus skill

Hapus foldernya, hapus baris di `SKILLS-INDEX.md`, hapus entri di
`registry.json`, lalu sync ulang (folder lama di proyek tidak auto-terhapus
bila sudah dicopy — hapus manual atau install ulang).

## 7. Maintenance

- Sumber kanonis saat import awal: 15 skill superpowers dari
  `D:\AppleDevAcademy\.agent\skills\`; `extract-design-system` + `to-spec`
  dari `D:\Project\Mei'sKitchen\.agents\skills\` (`skills-lock.json`);
  `humanizer` dari `D:\GenBI\humanizer`; `typer`/`fastapi` dari `.venv`
  official; `dotenv`/`dotenvx`/8 redux dari `node_modules`. Duplikat di
  `Ody`, `SERIUS`, `collage` hash-nya identik.
- Jangan edit copy di `node_modules`/`.venv` — akan hilang saat
  reinstall. Edit di sentral.
- Bila `Install-Skills.ps1` gagal symlink di Windows: jalankan PowerShell
  sebagai Administrator atau aktifkan Developer Mode, atau pakai `-Mode copy`.

## 8. Troubleshooting

| Gejala | Penyebab / solusi |
|---|---|
| Agent tidak menemukan skill | `SKILL.md` tanpa `description`, atau folder tidak di `.agent/skills` proyek. Cek `AGENTS.md` menunjuk library sentral. |
| `Skill not found: X` dari skrip | Nama di `-Skills` harus sama dengan nama folder (mis. `adopt-rtk-query`, bukan `manage-server-data/adopt-rtk-query`). |
| Folder skill membengkak | `.git`/`.venv`/`node_modules` ikut tercopy. Hapus manual. |
| Symlink gagal | Hak Windows. Pakai admin / Developer Mode / `-Mode copy`. |
| `registry.json` invalid | Validasi: `Get-Content registry.json -Raw \| ConvertFrom-Json`. |

## 9. Referensi file

| File | Isi |
|---|---|
| `README.md` | Dokumentasi ini. |
| `SKILLS-INDEX.md` | Index cepat + trigger checklist. |
| `registry.json` | Index machine-readable, 65 entri. |
| `Install-Skills.ps1` | Distribusi copy/symlink ke proyek. |
| `AGENTS-snippet.md` | Snippet registrasi agent. |
