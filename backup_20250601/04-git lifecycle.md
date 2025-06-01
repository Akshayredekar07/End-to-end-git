
## **_Life Cycle of File in GIT:_**

<!-- ![life cycle of file in git](/images/life-cycle-of-file-in-git.png) -->

1. **Untracked** → File is not tracked by git.
2. **Tracked** → File is tracked by git.
    - **Staged** → File is in staging area.
    - **Committed** → File is in local repository.
    
**_Every file in GIT is in one of the following states:_**

1. **Untracked**:
   The files which are newly created in the working directory and git does not aware of these files are said to be in untracked state.
   `git status` → to check the status of the file in all areas.

2. **Staged**:
   - The files which are added to the staging area are said to be in staged state.
   - These files are ready for commit.
   - `git add <file-name>` → to add the file to the staging area.
   - `git add .` → to add all the files to the staging area
   - Example: 
   - `git add a.txt`
   - `git add .`
   - `git add a.txt b.txt c.txt`
   - `git add *.txt`

3. **In Repository/ Committed**:
   Any file which is committed is said to be In Repository/Committed State.

4. **Modified**:
   Any file which is already tracked by git, but it is modified in the working directory is said to be in Modified State.



**Created a file in working directory with some content** → **Untracked**

**Once we add this file to staging area** → **Staged State**

`git add a.txt`

**We have to commit changes from staged area to local repository** → **In Repository/Committed state**

`git commit -m "commit message"`


**If the file is added to the staging area or committed, it is tracked by git.**

`ls`: It will list all files in the working directory. This is a Linux command.

`git ls-files`: It will list all files that are tracked by git, and it is a git command.



