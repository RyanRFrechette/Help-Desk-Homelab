# Screenshot Manifest

This file explains the screenshot folder structure and the workflow for sorting, naming, and publishing screenshots.

## Folder Structure

| Folder | Purpose |
|---|---|
| `screenshots/inbox` | Unsorted screenshots freshly imported from ShareX. Review and move these before committing. |
| `screenshots/setup` | General project setup screenshots (folder structure, tools installed, ISOs downloaded). |
| `screenshots/vm-setup` | VirtualBox and VM creation screenshots (hardware config, ISO attachment, disk setup). |

## Screenshot Workflow

### Step 1 — Import

Run the import script at the end of a session:

```powershell
.\scripts\import-latest-screenshots.ps1
```

This copies screenshots taken in the last 2 hours from ShareX into `screenshots/inbox`. Use `-Hours 4` if you worked a longer session.

### Step 2 — Review

Open `screenshots/inbox` and look at each file. Decide:

- **Keep** — the screenshot clearly shows a step, result, or error worth documenting.
- **Skip** — blurry, duplicate, or not relevant to the lab.

Delete skipped files from inbox. Do not commit them.

### Step 3 — Rename

Rename kept screenshots to match the numbered sequence in `README.md`:

```
NN-short-description.png
```

Examples:
- `08-server-vm-storage.png`
- `09-windows-server-install-start.png`

Use lowercase and hyphens. No spaces.

### Step 4 — Move

Move renamed files into the correct subfolder:

- General setup steps → `screenshots/setup/`
- VirtualBox and VM steps → `screenshots/vm-setup/`

### Step 5 — Update README

`README.md` is the source of truth for captions. Add an entry under `## Screenshots` for each new screenshot:

```markdown
### 8. Server VM Storage Setup

![Server VM storage setup](screenshots/vm-setup/08-server-vm-storage.png)

One sentence describing what this screenshot shows and why it matters.
```

The number in the heading, the filename, and the alt text should all stay consistent.

### Step 6 — Commit

```powershell
git add screenshots/ README.md
git commit -m "docs: add screenshots NN through NN"
```

## Notes

- Do not commit anything still in `screenshots/inbox`.
- `inbox` is listed in `.gitignore` — files there will not be tracked by git.
- Original ShareX screenshots are never deleted by the import script.
