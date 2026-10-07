# Tempel ke AGENTS.md / CLAUDE.md / GEMINI.md proyek

## Skills (sentral: D:\Agent-Assets\Skills)
Skill library sentral, 66 skill dalam 10 kategori: `workflow quality design spec backend frontend tools writing eval SystemDesign`.
Lihat `D:\Agent-Assets\Skills\SKILLS-INDEX.md` / `registry.json` untuk daftar lengkap.

## Foundation Skills (auto-load setiap sesi)
| Skill | Peran |
|---|---|
| `using-superpowers` | Wajib: cek & invoke skill sebelum response apapun |
| `karpathy-guidelines` | Guardrails perilaku: Think Before Coding, Simplicity First, Surgical Changes, Goal-Driven Execution |

Aturan pakai:
1. Saat mulai sesi, `using-superpowers` WAJIB + `karpathy-guidelines` aktif otomatis.
2. Sebelum kerja kreatif → `brainstorming`. Punya spec multi-step → `writing-plans` → `executing-plans`.
3. Bug → `systematic-debugging`. Fitur/bugfix → `test-driven-development`. Sebelum klaim selesai → `verification-before-completion`.
4. Skill proyek terinstall di `.agent/skills/` (via `Install-Skills.ps1`). Bila skill belum ada, cek library sentral sebelum buat baru.
5. Jangan duplikat skill ke proyek bila symlink sudah cukup; update sentral dulu (`SKILLS-INDEX.md` + `registry.json`), baru sync ulang.

Install:
```powershell
D:\Agent-Assets\Skills\Install-Skills.ps1 -Target "D:\path\proyek" -Categories all
```