
## Git Reset Command

The `git reset` command is used to undo changes in a Git repository. It's similar to resetting settings on mobile devices, allowing you to undo staged changes or even undo commits at the repository level.

---

## Utilities of Git Reset:

1. **Remove Changes from Staging Area**
2. **Undo Commits at Repository Level**

---

### Utility 1: Remove Changes from Staging Area

You can use `git reset` to remove changes from the staging area. If you've added changes using `git add` but decide not to commit them, `git reset` will bring those changes back to the working directory. 

- **Opposite of**: `git add`, which stages changes.
  
#### Example:
```bash
git reset <file>
```

---

## Git Reset in Action

### Step 1: Create or Modify a File
Edit or create a file, like `file1.txt`, and make changes:
```bash
cat file1.txt
# add some content like
# first line added in file1.txt
```

### Step 2: Check Git Status
Check the status to see that `file1.txt` is untracked:
```bash
$ git status
On branch master
No commits yet
Untracked files:
  (use "git add <file>..." to include in what will be committed)
    file1.txt
```

### Step 3: Stage the File
Add `file1.txt` to the staging area:
```bash
$ git add file1.txt
```

Check the status again:
```bash
$ git status
On branch master
Changes to be committed:
  (use "git rm --cached <file>..." to unstage)
    new file: file1.txt
```

### Step 4: Use Git Reset to Remove File from Staging
Now, use `git reset` to remove `file1.txt` from the staging area:
```bash
$ git reset file1.txt
```

### Step 5: Confirm the Change
After `git reset`, the file is back to being untracked:
```bash
$ git status
On branch master
Untracked files:
  (use "git add <file>..." to include in what will be committed)
    file1.txt
```

---

## Summary of Git Reset:
- **Before `git reset`**: `file1.txt` was staged for commit.
- **After `git reset`**: `file1.txt` was unstaged and returned to the untracked state.

---

## Git `rm --cached` vs Git `reset`

| Command                      | Effect                                                                                         | Use Case                                                                                         |
|------------------------------|------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------|
| `git rm --cached file1.txt`   | Removes the file from the staging area, but keeps it in the working directory.                 | Use this if you want Git to stop tracking the file but want to keep it locally.                   |
| `git reset file1.txt`         | Unstages the file, but keeps the changes in both the working directory and the staging area.   | Use this if you added changes to staging but want to move them back to the working directory.      |

### Example:
```bash
$ git rm --cached file1.txt
# or
$ git reset file1.txt
```

---

### Viewing the Difference Between the Two:

1. **List files in the working directory:**
    ```bash
    $ ls
    file1.txt
    ```

2. **List files tracked by Git:**
    ```bash
    $ git ls-files
    file1.txt
    ```

---

## Scenario: Ignoring Changes in Both Staging Area and Working Directory

### Question:
You modified `file1.txt` and added it to the staging area but now want to discard those changes in both the staging area and the working directory.

### Required Commands:

1. **To remove changes from the staging area:**
   ```bash
   git reset file1.txt
   ```

2. **To discard changes in the working directory:**
   ```bash
   git checkout -- file1.txt
   ```

> **Note**: In newer versions of Git, `git checkout -- <file>` is deprecated. Use `git restore` instead:
```bash
git restore file1.txt
```

---

### Explanation:
- `git reset file1.txt`: Removes `file1.txt` from the staging area and brings the changes back to the working directory.
- `git restore file1.txt`: Reverts `file1.txt` to the last committed state, discarding any changes made in the working directory.
