---
name: developer-productivity
description: >
  Improve day-to-day engineering. Use for Git workflows (merge vs rebase,
  branching), Linux commands and filesystem, dev tooling, diagram-as-code,
  code-to-diagram tools, code review and quality principles, and shipping to
  production. Triggers: "git", "merge vs rebase", "linux commands", "dev tools",
  "diagram as code", "code quality", "developer workflow".
---

# Developer Productivity

Faster feedback loops, fewer repeated mistakes.

## When to use
- Setting up or fixing Git workflows.
- Navigating/operating Linux servers.
- Producing architecture diagrams.
- Improving code quality and review.

## Git
- Model: working dir → staging → local repo → remote.
- **Merge vs rebase:** merge preserves history (extra merge commit); rebase
  rewrites history for a linear log. Never rebase shared branches.
- Branching: trunk-based + short-lived feature branches; protect main.
- Commit hygiene: small, focused, imperative messages; conventional commits.
- Useful ops: stash, cherry-pick, bisect, reflog, squash.

## Linux
- Filesystem hierarchy (`/etc`, `/var`, `/proc`, `/usr`...), permissions
  (rwx, owner/group/other, chmod/chown), processes and signals.
- Everyday commands: grep, sed, awk, find, xargs, ps/top, ss/netstat, df/du,
  journalctl, systemctl.
- File permissions model and why least privilege matters.

## Diagrams & docs
- **Diagram as code:** text-defined diagrams (Mermaid, PlantUML, D2) versioned
  in the repo; reproducible in reviews.
- Tools to turn code into diagrams; keep diagrams close to the design doc.

## Code quality
- 10 coding principles: readability, small functions, naming, single
  responsibility, DRY, KISS, YAGNI, tests, consistent style, review.
- Review for correctness, security, tests, and readability — not style nits a
  linter can catch.
- Automate formatting/linting; humans review intent.

## Checklist
- [ ] Git workflow agreed (merge vs rebase policy).
- [ ] Branch protection + required reviews/checks.
- [ ] Conventional commits / issue linking.
- [ ] Formatter + linter in CI.
- [ ] Diagrams as code where design changes.
- [ ] Review checklist focused on intent/security/tests.
- [ ] Secrets never committed; `.gitignore` sane.

## Common pitfalls
- Rebasing shared branches.
- Giant PRs unreviewable.
- Diagrams as binary images that drift from reality.
- Style debates instead of automated formatting.
- Committing secrets/large files.

## References
- `...\git-commands-cheat-sheet.md`, `...\how-does-git-work.md`, `...\git-workflow.md`, `...\git-merge-vs-git-rebate.md`, `...\git-vs-github.md`
- `...\most-used-linux-commands-map.md`, `...\linux-file-permission-illustrated.md`, `...\linux-file-system-explained.md`, `...\5-important-components-of-linux.md`
- `...\diagram-as-code.md`, `...\top-6-tools-to-turn-code-into-beautiful-diagrams.md`
- `...\10-good-coding-principles-to-improve-code-quality.md`
- `...\life-is-short-use-dev-tools.md`, `...\json-files.md`
- `...\how-do-companies-ship-code-to-production.md`
Base: `D:\Agent-Assets\system-design-101\data\guides\`

## Related skills
`computer-fundamentals`, `devops-and-platform`, `software-engineering-craft`.
