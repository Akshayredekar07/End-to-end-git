## Git Aliases – Providing Our Own Convenient Names to Git Commands

An alias means a nickname, short name, or alternative name. In Git, we can create our own commands using the aliasing concept. This is similar to the alias command in Linux.

If a Git command is lengthy and frequently required, we can give it our own convenient alias name and use that alias name every time.

### Q1: Create an alias name 'one' for the following Git command:
```bash
git log --oneline
```

Output:
```
Admin@LAPTOP-5MJVV5PN MINGW64 /d/Version Control git (main)
$ git log --oneline
cd87a49 (HEAD -> main) updated git16.md
be20b69 (origin/main, origin/HEAD) updated git 15.md
cda1c03 completd undo commits at repository level
815d35b updated rm command
d90fde8 git reset utility completed
ae87c3b completed  master and head
b32cf93 git checkout added
93a3664 git rm command updated
6f14eda helix installation teps added
f1a90f5 Helix Visual Merge Tool installed
4628db8 git diff code updated
```

#### Test whether the alias name 'one' is already used or not:
First, we need to check whether the name 'one' is already in use.
```bash
$ git one
```
Output:
```
git: 'one' is not a git command. See 'git --help'.
```
Since 'one' is not a Git command, we can use it as an alias.

#### Creating the alias:
We can create an alias by using the `git config` command.
- Syntax: 
  ```bash
  git config --global alias.aliasname "original command without git"
  ```
- Example:
  ```bash
  git config --global alias.one "log --oneline"
  ```

#### Using the alias:
```bash
$ git one
```
Output:
```
Admin@LAPTOP-5MJVV5PN MINGW64 /d/Version Control git (main)
$ git one
cd87a49 (HEAD -> main) updated git16.md
be20b69 (origin/main, origin/HEAD) updated git 15.md
cda1c03 completd undo commits at repository level
815d35b updated rm command
d90fde8 git reset utility completed
ae87c3b completed  master and head
b32cf93 git checkout added
93a3664 git rm command updated
6f14eda helix installation teps added
f1a90f5 Helix Visual Merge Tool installed
4628db8 git diff code updated
fa034e2 git diff added
```

#### Note:
After creating the alias, we can use either the alias name or the original command.
```bash
$ git one      # uses the alias
$ git log --oneline  # uses the original command
```
