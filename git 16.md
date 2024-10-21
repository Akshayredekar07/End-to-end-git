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

### Q2: Create alias name 's' for the following Git command:
```bash
git status
```

#### Test whether the alias name 's' is already used or not:
```bash
$ git s
```
Output:
```
git: 's' is not a git command. See 'git --help'.
```
Since 's' is not a Git command, we can use it as an alias.

#### Creating the alias:
```bash
$ git config --global alias.s "status"
```

#### Using the alias:
```bash
$ git s
```
Output:
```
On branch master
nothing to commit, working tree clean
```

#### What happens if we include 'git' in the alias command?
If you use the `git` command in the alias itself:
```bash
$ git config --global alias.ss "git status"
```
Then trying to use it:
```bash
$ ss
```
Output:
```
bash: ss: command not found
```
The alias won't work outside Git, as it expects only the Git subcommand.

#### Where are aliases stored?
All alias names are stored in the `.gitconfig` file, located in the user's home directory. For Windows, it is available in:
```plaintext
C:\Users\lenovo\.gitconfig
```

Example `.gitconfig` file:
```ini
[user]
  name = Ravi
  email = durgasoftonlinetraining@gmail.com

[core]
  autocrlf = true

[diff]
  tool = p4merge

[difftool "p4merge"]
  path = C:\\Program Files\\Perforce\\p4merge.exe

[difftool]
  prompt = false

[merge]
  tool = p4merge

[mergetool "p4merge"]
  path = C:\\Program Files\\Perforce\\p4merge.exe

[mergetool]
  prompt = false

[alias]
  one = log --oneline
  s = status
```

#### Modifying an alias:
Aliases can be modified based on requirements. For example:
```bash
$ git config --global alias.one "log"
```
Now, using the alias:
```bash
$ git one
```
Output:
```
commit bb26af3c6875a480ee0f92883ba85af5048eec6f (HEAD -> master)
Author: Ravi <durgasoftonlinetraining@gmail.com>
Date: Tue May 26 19:40:13 2020 +0530
 two files we added

commit 257073dcecf4364b77e8c64dbd7386a71f4071a2
Author: Ravi <durgasoftonlinetraining@gmail.com>
Date: Tue May 26 12:38:38 2020 +0530
 file1 added
```
