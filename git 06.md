## Git Installation On Windows

1. Download and install Git from the [official website](https://git-scm.com/download/win).
2. During installation, choose the option to add Git to the system PATH.
3. Open Git Bash and verify the installation by running:
   ```bash
   git --version
   ```  

## Setting Up Git

1. **Configure Git Username and Email:**
   - Set your name:
     ```bash
     git config --global user.name "Your Name"
     ```
   - Set your email:
     ```bash
     git config --global user.email "your.email@example.com"    

2. **Configure Git Editor:**
   - Set your preferred editor (e.g., nano):
     ```bash
     git config --global core.editor nano
     ```


```bash
Akshay@LAPTOP-5MJVV5PN MINGW64 ~/Documents/ALLFolders/Git DurgaSoft (main)
$ cd project1/
(base)
Akshay@LAPTOP-5MJVV5PN MINGW64 ~/Documents/ALLFolders/Git DurgaSoft/project1 (main)
$ git init
Initialized empty Git repository in C:/Users/Akshay/Documents/ALLFolders/Git DurgaSoft/project1/.git/
(base)
Akshay@LAPTOP-5MJVV5PN MINGW64 ~/Documents/ALLFolders/Git DurgaSoft/project1 (master)
```

`git init`: It initializes a new Git repository in the current directory.


```bash
Akshay@LAPTOP-5MJVV5PN MINGW64 ~/Documents/ALLFolders/Git DurgaSoft/project1 (master)
$ git
usage: git [-v | --version] [-h | --help] [-C <path>] [-c <name>=<value>]
           [--exec-path[=<path>]] [--html-path] [--man-path] [--info-path]
           [-p | --paginate | -P | --no-pager] [--no-replace-objects] [--bare]
           [--git-dir=<path>] [--work-tree=<path>] [--namespace=<name>]
           [--super-prefix=<path>] [--config-env=<name>=<envvar>]
           <command> [<args>]

These are common Git commands used in various situations:

start a working area (see also: git help tutorial)
   clone     Clone a repository into a new directory
   init      Create an empty Git repository or reinitialize an existing one

work on the current change (see also: git help everyday)
   add       Add file contents to the index
   mv        Move or rename a file, a directory, or a symlink
   restore   Restore working tree files
   rm        Remove files from the working tree and from the index

examine the history and state (see also: git help revisions)
   bisect    Use binary search to find the commit that introduced a bug
   diff      Show changes between commits, commit and working tree, etc
   grep      Print lines matching a pattern
   log       Show commit logs
   show      Show various types of objects
   status    Show the working tree status

grow, mark and tweak your common history
   branch    List, create, or delete branches
   commit    Record changes to the repository
   merge     Join two or more development histories together
   rebase    Reapply commits on top of another base tip
   reset     Reset current HEAD to the specified state
   switch    Switch branches
   tag       Create, list, delete or verify a tag object signed with GPG

collaborate (see also: git help workflows)
   fetch     Download objects and refs from another repository
   pull      Fetch from and integrate with another repository or a local branch
   push      Update remote refs along with associated objects

'git help -a' and 'git help -g' list available subcommands and some
concept guides. See 'git help <command>' or 'git help <concept>'
to read about a specific subcommand or concept.
See 'git help git' for an overview of the system.
(base)
```

```bash
Akshay@LAPTOP-5MJVV5PN MINGW64 ~/Documents/ALLFolders/Git DurgaSoft/project1 (master)
$ git status
On branch master

No commits yet

nothing to commit (create/copy files and use "git add" to track)
(base)
```


```bash
Akshay@LAPTOP-5MJVV5PN MINGW64 ~/Documents/ALLFolders/Git DurgaSoft/project1/project2 (master)
$ ls
a.txt  b.txt
(base)
Akshay@LAPTOP-5MJVV5PN MINGW64 ~/Documents/ALLFolders/Git DurgaSoft/project1/project2 (master)
$ git ls-files
(base)
```

```bash
Akshay@LAPTOP-5MJVV5PN MINGW64 ~/Documents/ALLFolders/Git DurgaSoft/project1/project2 (master)
$ git status
On branch master

No commits yet

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        a.txt
        b.txt

nothing added to commit but untracked files present (use "git add" to track)
(base)
Akshay@LAPTOP-5MJVV5PN MINGW64 ~/Documents/ALLFolders/Git DurgaSoft/project1/project2 (master)
$ git add .
(base)
Akshay@LAPTOP-5MJVV5PN MINGW64 ~/Documents/ALLFolders/Git DurgaSoft/project1/project2 (master)
$ git status
On branch master

No commits yet

Changes to be committed:
  (use "git rm --cached <file>..." to unstage)
        new file:   a.txt
        new file:   b.txt

(base)
```


```bash
Akshay@LAPTOP-5MJVV5PN MINGW64 ~/Documents/ALLFolders/Git DurgaSoft/project1/project2 (master)
$ git log
fatal: your current branch 'master' does not have any commits yet
(base)
Akshay@LAPTOP-5MJVV5PN MINGW64 ~/Documents/ALLFolders/Git DurgaSoft/project1/project2 (master)
$ git commit -m "Added a.txt and b.txt"
[master (root-commit) 8a716ad] Added a.txt and b.txt
 2 files changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 a.txt
 create mode 100644 b.txt
(base)
Akshay@LAPTOP-5MJVV5PN MINGW64 ~/Documents/ALLFolders/Git DurgaSoft/project1/project2 (master)
$ git ls-files
a.txt
b.txt
(base)
Akshay@LAPTOP-5MJVV5PN MINGW64 ~/Documents/ALLFolders/Git DurgaSoft/project1/project2 (master)
$ git log
commit 8a716ad2832d2d63608585f5ca1176ecdca42435 (HEAD -> master)
Author: Akshayredekar07 <akshayredekar1414@gmail.com>
Date:   Sun Sep 22 10:12:55 2024 +0530

    Added a.txt and b.txt
(base)
Akshay@LAPTOP-5MJVV5PN MINGW64 ~/Documents/ALLFolders/Git DurgaSoft/project1/project2 (master)
$ git status
On branch master
nothing to commit, working tree clean
(base)
```

```bash
Akshay@LAPTOP-5MJVV5PN MINGW64 ~/Documents/ALLFolders/Git DurgaSoft/project1/project2 (master)
$ git init
Reinitialized existing Git repository in C:/Users/Akshay/Documents/ALLFolders/Git DurgaSoft/project1/project2/.git/
(base)
```


```
git init
git add a.txt b.txt
git commit -m 'commit message'

git add a.txt b.txt
git commit -m 'commit message'
```
```shell
git commit -a -m 'commit message'
```
