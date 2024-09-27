
## Undo Changes with git Checkout Command

- We can use the checkout command to discard unstaged changes in the tracked files of the working directory.

**_Unstaged changes_**
  - The changes which are not added to staging area.

**_Tracked files_**
  - The files which are already added to staging area or committed.

- Here are the key points to remember:
  1. This command only affects the working directory.
  2. It discards unstaged changes, which are changes that have not been added to the staging area.
  3. It only applies to tracked files, which are files that have already been added to the staging area or committed.
  4. This command is similar to an undo operation. It copies the contents of the file from the index (staging area) to the working directory.

- The syntax for this command is:
```bash
git checkout -- filename
```

Eg:
```bash
git checkout -- file1.txt
```
- It will discard any unstaged changes made in file1.txt.
- After executing this command, the staged copy content and working directory content are the same.

**Note:** `git checkout` is applicable only for the files which are already tracked by Git. It is not applicable for new files.

**Example Error:**
```bash
PS C:\Users\Akshay\Documents\ALLFolders\Git DurgaSoft\project6> git checkout -- file3.txt
error: pathspec 'file3.txt' did not match any file(s) known to git
```

**Summary:**

* `git checkout -- file.txt`: To discard changes in the working directory copy.
* `git checkout`: To discard changes in all tracked files of the working directory.
* `git checkout` (without arguments): If we are not passing any argument, then this command will show the list of eligible files for checkout.
* **Note:** The `git checkout` command can be used in branching also.
