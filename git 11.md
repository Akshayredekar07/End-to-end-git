
## `rm` command 
- Removing Files by using git rm Command

- It is very common requirement to remove files from working directory and staging area. 
- For these removals we can use the following commands

```bash
git rm file1.txt
git rm --cached file1.txt
# General Linux rm command
```

### Case 1: Removing Files from Working Directory and Staging Area (git rm)

If you want to remove a file from both the working directory and the staging area, you should use the `git rm` command.

Example:
```bash
git rm file1.txt
```
This will remove `file1.txt` from both the staging area and the working directory.

**Important Note:** The `git rm` command requires an argument. If you run `git rm` without specifying a file or directory, you will get an error message:
```bash
$ git rm
fatal: No pathspec was given. Which files should I remove?
```
Similarly, if you try to remove the current directory recursively without using the `-r` option, you will get another error message:
```bash
$ git rm .
fatal: not removing '.' recursively without -r
```
To remove all files recursively, you need to use the `-r` option:
```bash
$ git rm -r .
```
This will remove all files in the current directory and its subdirectories.


### Case 2: Removing Files Only from Staging Area (git rm --cached)

If you want to remove a file only from the staging area but not from the working directory, you should use the `git rm --cached` command.

Example:
```bash
git rm --cached file4.txt
```
`file4.txt` will be removed only from the staging area but not from the working directory.

**Before:**
```bash
$ ls
file4.txt file5.txt
lenovo@DESKTOP-ECE8V3R MINGW64 /d/gitprojects/project5 (master)
$ git ls-files
file4.txt
file5.txt
```
**After:**
```bash
$ git rm --cached file4.txt
rm 'file4.txt'
lenovo@DESKTOP-ECE8V3R MINGW64 /d/gitprojects/project5 (master)
$ ls
file4.txt file5.txt
lenovo@DESKTOP-ECE8V3R MINGW64 /d/gitprojects/project5 (master)
$ git ls-files
file5.txt
```
**Important Note:** If you run `git rm --cached` without specifying a file or directory, you will get an error message:
```bash
$ git rm --cached
fatal: No pathspec was given. Which files should I remove?
```


### Case 3: Removing Files Only from Working Directory (rm Command)

We can use the general Linux command `rm` to remove files from the working directory.

**Before:**
```bash
$ ls
file1.txt file2.txt
lenovo@DESKTOP-ECE8V3R MINGW64 /d/gitprojects/project5 (master)
$ git ls-files
file1.txt
file2.txt
```
**Removing a file:**
```bash
$ rm file1.txt
lenovo@DESKTOP-ECE8V3R MINGW64 /d/gitprojects/project5 (master)
```
**After:**
```bash
$ ls
file2.txt
lenovo@DESKTOP-ECE8V3R MINGW64 /d/gitprojects/project5 (master)
$ git ls-files
file1.txt
file2.txt
```
**Important Notes:**

1. `git rm file1.txt` will remove the file from both the working directory and the staging area.
2. `git rm --cached file1.txt` will remove the file only from the staging area but not from the working directory.
3. `rm file1.txt` will remove the file only from the working directory but not from the staging area.
