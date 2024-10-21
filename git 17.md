## Ignoring unwanted Files And Directories by using .gitignore File

It is a common requirement that we don't need to store everything in the repository. For example, only source code files like `.java` files should be stored, while files like `README.txt`, log files, and others are unnecessary.

### Excluding files and directories using `.gitignore`:
We can instruct Git not to track specific files or directories by specifying them in a special file called `.gitignore`.

#### Example `.gitignore` File:
This file should be created in the working directory.

```plaintext
# Don't track abc.txt file
abc.txt

# Don't track all .txt files
*.txt

# Don't track logs directory
logs/

# Don't track any hidden files
.*
```

#### Example Git Workflow:
1. Create some files and directories:
   ```bash
   $ touch a.txt b.txt Customer.java
   $ mkdir logs
   $ touch logs/server.log logs/access.log
   ```

2. Check the Git status:
   ```bash
   $ git status
   ```
   Output:
   ```plaintext
   On branch master
   Untracked files:
     (use "git add <file>..." to include in what will be committed)
       Customer.java
       a.txt
       b.txt
       logs/
   nothing added to commit but untracked files present (use "git add" to track)
   ```

3. Create and configure the `.gitignore` file:
   ```plaintext
   # Don't track a.txt
   a.txt

   # Don't track all .txt files
   *.txt

   # Don't track log files
   logs/

   # Don't track any hidden files
   .*
   ```

After adding the `.gitignore` file, Git will stop tracking the specified files and directories, so they won't appear in future commits or status checks.
