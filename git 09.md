
# `git diff` command

It allows developers to compare changes across various states of a repository. It can be used to view differences between files, commits, branches, and the working directory.

### Overview of `git diff`

The primary purpose of `git diff` is to **show changes** between different states in a Git repository. This includes:

- **Working Directory vs. Staging Area**: Displays changes that have been made but not yet staged for commit.
- **Staging Area vs. Last Commit**: Shows what changes are staged for the next commit compared to the last commit.
- **Between Commits**: Allows comparison between two specific commits to see what has changed.
- **Between Branches**: Compares changes across branches to identify differences before merging.

### Common Usages

### Basic Syntax

The basic command structure for `git diff` is as follows:

```bash
git diff [options] [<commit> <commit> | <branch> <branch>]
```

### Viewing Changes

1. **Unstaged Changes**:
   To see changes in the working directory that are not staged:
   ```bash
   git diff
   ```

2. **Staged Changes**:
   To view changes that are staged but not yet committed:
   ```bash
   git diff --staged
   ```
   Alternatively, you can use:
   ```bash
   git diff --cached
   ```

3. **Differences Between Commits**:
   To compare two specific commits:
   ```bash
   git diff <commit-id1> <commit-id2>
   ```

4. **Comparing Branches**:
   To compare differences between two branches:
   ```bash
   git diff branch1..branch2
   ```
   Using three dots (`...`) instead of two will compare the tip of one branch with the common ancestor of both branches:
   ```bash
   git diff branch1...branch2
   ```

### Advanced Options

- **Highlighting Changes**: Use `--color-words` to show changes at the word level rather than line level:
  ```bash
  git diff --color-words
  ```

- **Using Regular Expressions**: To highlight specific changes that match a regex pattern:
  ```bash
  git diff --word-diff-regex=<regex>
  ```

## Practical Examples

Here are some practical examples illustrating how to use `git diff`:

- To view all unstaged changes in your working directory:
  ```bash
  git diff
  ```

- To see what will be committed (staged changes):
  ```bash
  git diff --staged
  ```

- To compare two commits by their IDs:
  ```bash
  git diff abc123 def456
  ```

- To check differences between two branches before merging:
  ```bash
  git diff feature-branch..main
  ```

It is very common to find differences between the content of a particular file or all files in the following scenarios:

1. Between the working directory and the staging area.
2. Between the working directory and the last commit.
3. Between the staged area and the last commit.
4. Between the working directory and a particular commit.
5. Between the staged area and a particular commit.
6. Between two specified commits.

To achieve this, we use the `git diff` command. The term "diff" means "difference".


### Demo Example

**Initial State**

file1.txt
```
First line in file1.txt
Second line in file1.txt
```

file2.txt
```
First line in file2.txt
Second line in file2.txt
```

**First Commit**

2 files and each file contains 2 lines

file1.txt
```
First line in file1.txt
Second line in file1.txt
Third line in file1.txt
Fourth line in file1.txt
```

file2.txt
```
First line in file2.txt
Second line in file2.txt
Third line in file2.txt
Fourth line in file2.txt
```

**Second Commit**

2 files and each file contains 4 lines.

**Changes in Working Directory**

Now we are adding a new line in file1.txt in the working directory

file1.txt
```
First line in file1.txt
Second line in file1.txt
Third line in file1.txt
Fourth line in file1.txt
Fifth line in file1.txt
```

**Staging Changes**

We are adding file1.txt to the staging area

```bash
git add file1.txt
```

**Additional Changes in Working Directory**

Again, we are adding a new line in file1.txt of the working directory

file1.txt
```
First line in file1.txt
Second line in file1.txt
Third line in file1.txt
Fourth line in file1.txt
Fifth line in file1.txt
sixth line in file1.txt
```

### Case-1: To see the difference in File Content between Working Directory and staging Area

```bash
$ git diff file1.txt

diff --git a/file1.txt b/file1.txt
index 97c6207..a27d8e1 100644
--- a/file1.txt
+++ b/file1.txt
@@ -2,4 +2,5 @@ This is First line in file1.txt
 This is Second line in file1.txt
 Third line in file1.txt
 Fourth line in file1.txt
-Fifth line in file1.txt
\ No newline at end of file
+Fifth line in file1.txt
+sixth line in file1.txt
\ No newline at end of file
```
Output explanation:

1. `diff --git a/file1.txt b/file1.txt`
   - `a/file1.txt` → source copy which means staging area
   - `b/file1.txt` → destination copy which means working directory copy

2. `index 0e17c9d..e3e329f 100644`
   - `0e17c9d` → hash of source file content
   - `e3e329f` → hash of destination file content
  
3. `100644` → Git file mode
    - fiest 3 digits(100) → represent the type of file ASCII text
    - last 3 digits(644) → represent the file permissions

4. `--- a/file1.txt`
   - source file missing some lines(Staging Area)

5. `+++ b/file1.txt`
   - destination file has additional lines(Working Directory)


6. `@@ -2,4 +2,5 @@`
    - `-` → represent the source file
    - `+` → represent the destination file
    - `2` → represent the starting line number
    - `4` → represent the number of lines
    - `5` → represent the number of lines in the destination file


- If any line prefixed with a space means it is unchanged.
- If any line prefixed with a + means it is added in the destination copy.
- If any line prefixed with a - means it is removed in the destination copy.


### Case-2: To see the difference in File Content between Working Directory and Last Commit
- The last commit can be referenced by HEAD.

```bash
git diff HEAD file1.txt
```

