### `git cherry-pick` – Detailed Explanation with Case Study

---

## What is `git cherry-pick`?

`git cherry-pick` is a command used to **apply the changes introduced by one or more existing commits** onto your current working branch.

> It does **not merge** or **rebase** branches; instead, it takes one or more **specific commits** and **applies their changes** directly.

---

## When to Use `git cherry-pick`?

* You want to apply a **bug fix or a feature commit** from one branch to another without merging all other changes.
* You need to **hotfix production** by picking a commit from `develop` or another feature branch.
* You accidentally committed to the wrong branch and want to apply that commit to the right branch.

---

## Case Study: Hotfix in Production

* You have three branches:

  * `main` (production)
  * `develop` (ongoing development)
  * `feature/login-ui` (new feature development)

### Recent Commits:

Let’s say you committed a **bug fix** in `feature/login-ui` like this:

```bash
$ git log --oneline
a1b2c3d Fix: login crash on invalid input
```

But this bug **also exists in production**, and you need to fix it there **immediately**, without merging the entire feature branch.

---

## Solution: Cherry-pick the fix

### Step 1: Switch to `main` (production branch)

```bash
git checkout main
```

### Step 2: Cherry-pick the bug-fix commit

```bash
git cherry-pick a1b2c3d
```

Git will now:

* Apply the changes introduced in `a1b2c3d` to `main`
* Create a **new commit** on `main` with the same changes (but a different commit hash)

---

## Example in Action:

### Before:

```
main:         A -- B
develop:      A -- B -- C -- D
feature:      A -- B -- C -- D -- E (bug fix = E)
```

### After Cherry-pick:

```
main:         A -- B -- E'
develop:      A -- B -- C -- D
feature:      A -- B -- C -- D -- E
```

Note:

* `E'` is a new commit on `main` with the same content as `E`, but a different hash.

---

## Common Options

| Option                  | Description                                                                |
| ----------------------- | -------------------------------------------------------------------------- |
| `-x`                    | Appends a line like "(cherry picked from commit...)" in the commit message |
| `--edit`                | Opens editor to modify commit message                                      |
| `--no-commit`           | Applies the changes, but **doesn’t commit** automatically                  |
| `--continue`, `--abort` | Used if there are merge conflicts                                          |

---

## Conflict Scenario

If the cherry-picked commit **conflicts** with code in the target branch, Git will pause and let you resolve the conflict manually.

### Steps:

```bash
# Resolve conflicts in files
git add <resolved-files>

# Continue cherry-pick
git cherry-pick --continue
```

If you want to cancel:

```bash
git cherry-pick --abort
```

