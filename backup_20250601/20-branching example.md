## Various Commands Used in Branching

## 1) To View Branches:
To know all available branches in our local repository, we use the `git branch` command.

### Command:
```bash
$ git branch
```
- This will show all branches in our local repository.
- By default, we have only one branch: `master`.
- `master` is the default name provided by Git.

### Example Output:
```bash
$ git branch
* master
```
- The `*` indicates that `master` is the currently active branch.

### Note:
Another way to check which branch we are currently working on is by using the `git status` command.

### Command:
```bash
$ git status
```
### Example Output:
```bash
On branch master
nothing to commit, working tree clean
```

---

## 2) How to Create a New Branch:
We can create a new branch by using the `git branch` command.

### Syntax:
```bash
git branch branch_name
```

### Example:
```bash
$ git branch new1branch
```
This will create a new branch named `new1branch`.

### Verify:
```bash
$ git branch
* master
  new1branch
```

---

## 3) How to Switch from One Branch to Another Branch:
To switch between branches, we use the `git checkout` command.

### Syntax:
```bash
git checkout branch_name
```

### Example:
```bash
$ git checkout new1branch
```
### Output:
```bash
Switched to branch 'new1branch'
```

### Verify:
```bash
$ git branch
  master
* new1branch
```

### Checking Status:
```bash
$ git status
```
### Output:
```bash
On branch new1branch
nothing to commit, working tree clean.
```

---

## 4) Short-cut Way to Create a New Branch and Switch to That Branch:
We can use the `-b` option with the `checkout` command to create and switch to a new branch in one step.

### Command:
```bash
git checkout -b new2branch
```

### Example:
```bash
$ git checkout -b new2branch
```
### Output:
```bash
Switched to a new branch 'new2branch'
```

### Verify:
```bash
$ git branch
  master
  new1branch
* new2branch
```

This method saves time by eliminating the need to run separate commands for branch creation and switching.

