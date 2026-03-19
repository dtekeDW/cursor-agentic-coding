---
name: create-changeset-from-main-diff
description: Create and update `.changeset/*.md` files by comparing the current branch against `origin/main` and summarizing only relevant package changes. Use when a user asks for a Changeset entry (patch/minor/major) without relying on interactive `changeset` prompts.
---

# Create Changeset From Main Diff

Use this workflow to create a non-interactive Changeset file based on branch changes versus `main`.

## Workflow

1. Sync and compare with main.
- Run `git fetch origin main`.
- Use `git diff --name-only origin/main...HEAD` for changed files.
- Use `git log --oneline origin/main..HEAD` for commit intent.

2. Determine affected packages.
- For each changed file, resolve the owning package by walking up to the nearest `package.json`.
- Read package `name` from that `package.json`.
- Keep only packages that should be released via Changesets.

3. Confirm bump type from the user.
- Default to `patch` only if user explicitly asked for patch.
- Otherwise ask for `patch|minor|major` per package.

4. Draft concise release notes.
- Summarize user-visible behavior changes, not implementation details.
- Group bullets by feature/fix area.
- Do not include internal refactors unless externally visible.

5. Create the file directly (no interactive command).
- Filename: short kebab-case phrase (for example `oci-key-variants.md`).
- Format:

```md
---
"@one/webapp": patch
---

- Brief, user-facing change summary.
- Second relevant change summary.
```

6. Validate quickly.
- Ensure package names exist in workspace and are spelled exactly.
- Ensure bump values are only `patch`, `minor`, or `major`.
- Ensure markdown frontmatter is valid YAML.

7. Merge into existing Changeset when package already exists.
- Scan `.changeset/*.md` for the target package key (for example `"@one/webapp": patch`).
- If found, update that existing file instead of creating a new one:
  - Keep existing frontmatter entries.
  - Append or refine bullet points in the body.
  - Avoid duplicate bullets.
- Create a new changeset file only when no existing changeset includes that package.

## Rules

- Always compare against `origin/main`, regardless of current branch ancestry.
- Prefer direct file creation/edit (`.changeset/*.md`) over `pnpm changeset` interactive prompts.
- Keep output short and release-note friendly.
- If multiple packages changed, include all of them in one frontmatter block unless user asks to split.
- If the target package is already present in a changeset file, merge content into that file and do not create a second file for the same package/bump.
- If no releasable package changed, state that explicitly and do not create a Changeset file.

## Useful Commands

```bash
git fetch origin main
git diff --name-only origin/main...HEAD
git log --oneline origin/main..HEAD
```

Find nearest package root for a file:

```bash
f="apps/webapp/components/checkin/page.vue"
d="$f"
while [ "$d" != "." ] && [ "$d" != "/" ]; do
  d="$(dirname "$d")"
  if [ -f "$d/package.json" ]; then
    cat "$d/package.json"
    break
  fi
done
```
