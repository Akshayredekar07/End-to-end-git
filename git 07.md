## The Basic Git Commands With Example:

`init`, `status`, `add`, `commit`, `log` and `config`


### 1. `git init` - Initialize a new Git repository in the current directory.

Once we create a workspace, if we want version control, then we require a local repository. To create that local repository, we have to use the `git init` command.
```bash
$ git init
Initialized empty Git repository in Akshay@LAPTOP-5MJVV5PN MINGW64 ~/Documents/ALLFolders/Git DurgaSoft/project1/project2/.git/
```
`.git` is an empty repository, which is a hidden directory.


### 2. `git status` - Show the working tree status.

It shows the current status of all files in each area, like 
- untracked files
- modified files
- staged files
- committed files

```bash
$ git status
On branch master
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
  modified:   a.txt
  modified:   b.txt
no changes added to commit (use "git add" and/or "git commit -a")
Note: We can get concise information by using -s option.

**To get concise information:**
```bash
$ git status -s
M  a.txt
M  b.txt
A  c.txt
```

```bash
Akshay@LAPTOP-5MJVV5PN MINGW64 ~/Documents/ALLFolders/Git DurgaSoft/project1/project2 (master)
$ touch c.txt
(base)
Akshay@LAPTOP-5MJVV5PN MINGW64 ~/Documents/ALLFolders/Git DurgaSoft/project1/project2 (master)
$ touch abc.java
(base)
Akshay@LAPTOP-5MJVV5PN MINGW64 ~/Documents/ALLFolders/Git DurgaSoft/project1/project2 (master)
$ ls
a.txt  abc.java  b.txt  c.txt
(base)
Akshay@LAPTOP-5MJVV5PN MINGW64 ~/Documents/ALLFolders/Git DurgaSoft/project1/project2 (master)
$ git status
On branch master
Untracked files:
  (use "git add <file>..." to include in what will be committed)
        abc.java
        c.txt

nothing added to commit but untracked files present (use "git add" to track)
(base)
Akshay@LAPTOP-5MJVV5PN MINGW64 ~/Documents/ALLFolders/Git DurgaSoft/project1/project2 (master)
$ git status -s
?? abc.java
?? c.txt
(base)

```

### 3. `git add` - Add file contents to the index.

- To add files from the working directory to the staging area for tracking/committing purposes, we 
have to use the `git add` command.

**Adding Files to the Staging Area**

To add all files in the current working directory:
```bash
git add .
git add *
git add -A
```
To add specific files:
```bash
git add a.txt
git add a.txt b.txt
git add file1.txt file2.txt
```
To use regular expression patterns:
```bash
git add *.txt
git add *.java
git add *.txt *.java
```  


**Note:**
- staging area: --> index ar  ea or chche area
- It is logical/virtual area but not a physical area.


 

 ### 4. `git commit` 
 - If we want to stage changes and commit them in one command, then we can use `git commit -a` command.


For every commit, a unique commit ID will be generated. It is a 40-character hexadecimal string. 


```bash
Akshay@LAPTOP-5MJVV5PN MINGW64 ~/Documents/ALLFolders/Git DurgaSoft/project1/project2 (master)
$ git add .
(base)
Akshay@LAPTOP-5MJVV5PN MINGW64 ~/Documents/ALLFolders/Git DurgaSoft/project1/project2 (master)
$ git commit -m "abc.java added"
[master d9829f2] abc.java added
 2 files changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 abc.java
 create mode 100644 c.txt
(base)
```

```bash
Akshay@LAPTOP-5MJVV5PN MINGW64 ~/Documents/ALLFolders/Git DurgaSoft/project1/project2 (master)
$ git log
commit d9829f2591ac9f2d0081aa457ee9372838ecdbaa (HEAD -> master)
Author: Akshayredekar07 <akshayredekar1414@gmail.com>
Date:   Sun Sep 22 11:05:00 2024 +0530

    abc.java added

commit 8a716ad2832d2d63608585f5ca1176ecdca42435
Author: Akshayredekar07 <akshayredekar1414@gmail.com>
Date:   Sun Sep 22 10:12:55 2024 +0530

    Added a.txt and b.txt
(base)

```

```bash
echo -n "8a716ad2832d2d63608585f5ca1176ecdca42435" | wc -c

Akshay@LAPTOP-5MJVV5PN MINGW64 ~/Documents/ALLFolders/Git DurgaSoft/project1/project2 (master)
$ echo -n "8a716ad2832d2d63608585f5ca1176ecdca42435" | wc -c
40
```
- The first 7 characters are also unique, and we can identify a commit using them. This unique ID is considered a hash, which is generated based on the content of files.

**_The advantages of this hash are:_**

1. Data inside our local repository is more secure.
2. Git requires less space to store the contents of files. (For example, if an SVN repository required 12GB, but for the same content, Git requires 420MB)

When using the `git commit` command, a commit message is mandatory.

```bash
git commit -m "commit message"
```

```bash
git add file1.txt
git commit -m "file1.txt got modified"

git commit -m 'commit message'
git commit -a -m "file1.txt got modified"
```

```bash
Akshay@LAPTOP-5MJVV5PN MINGW64 ~/Documents/ALLFolders/Git DurgaSoft/project1/project2 (master)
$ cat >> c.txt
This is extra content added in file.
(base)
Akshay@LAPTOP-5MJVV5PN MINGW64 ~/Documents/ALLFolders/Git DurgaSoft/project1/project2 (master)
$ git status
On branch master
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   c.txt

no changes added to commit (use "git add" and/or "git commit -a")
(base)

Akshay@LAPTOP-5MJVV5PN MINGW64 ~/Documents/ALLFolders/Git DurgaSoft/project1/project2 (master)
$ git commit -m "c.txt modified"
[master 0f4f830] c.txt modified
 1 file changed, 1 insertion(+)
(base)

```


create mode 100644 file1.txt<br>
create mode 100644 file2.txt

The 100644 mode indicates the following permissions:

```plaintext
644 --> file permissions: rw-r--r--
- r --> read(4)
- w --> write(2)
- x --> execute(1)

- Owner: Read (r) and write (w) permissions.
- Group: Read (r) permissions.
- Others: Read (r) permissions.
```

For every commit, Git records the author's name, email ID, timestamp, and commit message. We can add files to the staging area and commit changes using a single command: `git commit -a -m "commit message"`.

Here's what the options mean:
- `-a` adds files to the staging area.
- `-m` specifies the commit message.

However, this command only works for tracked files, not for new files. The order of options is important, as `git commit -am "commit message"` is valid, but `git commit -ma "commit message"` will not work.


### 5. **_git log:_**
- It shows the history of all commits.
- It provides the commit ID, author name, email, timestamp, and commit message.

Example:
```bash
Akshay@LAPTOP-5MJVV5PN MINGW64 ~/Documents/ALLFolders/Git DurgaSoft/project1/project2 (master)
$ git log
commit 0f4f8304e94f8afee800bba82afd17e9790f9ecb (HEAD -> master)
Author: Akshayredekar07 <akshayredekar1414@gmail.com>
Date:   Sun Sep 22 11:11:37 2024 +0530

    c.txt modified

commit d9829f2591ac9f2d0081aa457ee9372838ecdbaa
Author: Akshayredekar07 <akshayredekar1414@gmail.com>
Date:   Sun Sep 22 11:05:00 2024 +0530

    abc.java added

commit 8a716ad2832d2d63608585f5ca1176ecdca42435
Author: Akshayredekar07 <akshayredekar1414@gmail.com>
Date:   Sun Sep 22 10:12:55 2024 +0530

    Added a.txt and b.txt
(base)

```
There are multiple options available with the `git log` command.
```bash
git log --help
```

### 6. **_`git config`:_**
We can use this command to configure Git settings such as user name and email address:
```bash
git config --global user.email "yourname@gmail.com"
git config --global user.name "yourname"
```
***Note:***
The `--global` option means these configurations apply to all repositories created by Git. If we do not use `--global`, the configurations are only applicable to the current repository.

To list out all Git configurations, use:
```bash
git config --list
```

To display the user name, use:
```bash
git config user.name
```

To display the user email, use:
```bash
git config user.email
```

```bash
git ls-files
```
This command will list out all files which are tracked by Git.

```bash
ls
```
This command will list out all files present in the workspace.

Q. What is create mode 100644?
- The first 3 digits describe the type of file.
- The next 3 digits describe the file permissions.
- 100 → Means it is an ASCII text file.
- 644 → File permissions (rw-r--r--)

