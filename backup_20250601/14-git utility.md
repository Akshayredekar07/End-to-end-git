
### Utility-2: Undo Commits at the Repository Level

We can use `git reset` to undo commits at the repository level.

### Syntax:
```
git reset <mode> <commitid>
```
This moves the `HEAD` to the specified commit, and all subsequent commits will be removed. The mode will determine whether the changes are removed from the staging area and the working directory.

The allowed values for the mode are:
- `--mixed`
- `--soft`
- `--hard`
- `--keep`
- `--merge`

---

## 1 `--mixed` Mode:
This is the default mode.  
To discard commits in the local repository and discard changes in the staging area, use the `--mixed` option. It will not touch the working directory.

### Example:

```bash
vi file1.txt   # Add "First line in file1.txt"

git add file1.txt
git commit -m 'file1 added'

vi file2.txt   # Add "First line in file2.txt"

git add file2.txt
git commit -m 'file2 added'

vi file3.txt   # Add "First line in file3.txt"

git add file3.txt
git commit -m 'file3 added'
```

Now, view the commit history:
```bash
$ git log --oneline
6fcc300 (HEAD -> master) file3 added
86d0ca3 file2 added
9165d34 file1 added
```

### Discard Commit-3:
```bash
git reset --mixed 86d0ca3   # Reset to commit 2
git reset --mixed HEAD~1     # Alternative way
git reset HEAD~1             # Another alternative
```
Now, `HEAD` points to commit `86d0ca3`.

### After Undoing Commit-3:
The changes will still be in the working directory.

#### Option 1: To discard changes in the working directory:
```bash
git checkout -- <filename>
```
> Note: The file must already be tracked by Git and not a new file.

#### Option 2: To keep the changes in the local repository:
```bash
git add file3.txt
git commit -m 'file3 added again'
```

Now the commit history looks like this:
```bash
$ git log --oneline
59e6cd7 (HEAD -> master) file3 added again
86d0ca3 file2 added
9165d34 file1 added
```

### Discard Commit-2 and Commit-3:
```bash
git reset --mixed 9165d34  # Reset to commit 1
git reset --mixed HEAD~2    # Alternative way
git reset HEAD~2            # Another alternative
```

The commit history is now:
```bash
$ git log --oneline
9165d34 (HEAD -> master) file1 added
```

Checking files in the working directory:
```bash
$ git ls-files
file1.txt
```
```bash
$ ls
file1.txt  file2.txt  file3.txt
```

Git status:
```bash
$ git status
On branch master
Untracked files:
  (use "git add <file>..." to include in what will be committed)
    file2.txt
    file3.txt

nothing added to commit but untracked files present (use "git add" to track)
```

### Notes:
1. It is not possible to remove random commits; only sequential commits can be undone.
2. The `--mixed` mode works on the repository and staging area but not on the working directory.
3. When using `--mixed`, the changes can be reverted because they remain in the working directory.

