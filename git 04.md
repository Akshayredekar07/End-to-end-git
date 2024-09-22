# Features and Architecture of GIT

### _What is GIT?_

- Git is a Distributed Version Control System Tool.
- Git is not an acronym, but most people abbreviate it as "Global Information Tracker".
- GIT was developed by Linus Torvalds, a Finnish software engineer, who also developed the Linux Kernel.
- Many companies, including Microsoft, Facebook, Yahoo, LinkedIn, and Intel, use Git as their Version Control System Tool.

### _Features of GIT_

Git is very popular due to the following features:

### **_Distributed_**

Git is developed based on Distributed Version Control System Architecture. This architecture offers several advantages:

1. Every Developer has their own local repository, allowing all operations to be performed locally without needing a constant connection to the remote repository.
2. Performing all operations locally results in high performance when compared with other VCSs, making it very fast.
3. Most operations are local, enabling offline work most of the time.
4. The presence of every Developer's own local repository ensures there is no single point of failure.
5. This feature enables parallel development and automatic backups, allowing multiple developers to work on different aspects of a project simultaneously and ensuring all changes are automatically backed up.


### 2. _Staging Area_

- The staging area is also known as the index area. It is a logical layer or virtual layer in Git between the working directory and the local repository. The workflow is as follows:

1. Working Directory → Staging Area → Local Repository

- We cannot commit files directly from the working directory. First, we need to add them to the staging area and then commit them. This staging area is helpful for double-checking or cross-checking our changes before committing them. This type of layer is not available in other Version Control System Tools like CVS, SVN, etc.

- Git stores files in the repository in a hashed form, which saves space. Git uses an internal snapshot mechanism for this. All these conversions and snapshots of our data happen in the staging area before committing.

- For example, if a sample repository takes around 12 GB of space in SVN, it takes hardly 420 MB in Git.

- Hence, the Staging Area is one of the most important strengths of Git.

### 3. _Branching and Merging_

We can create and work on multiple branches simultaneously, and all these branches are isolated from each other. This enables multiple workflows. We can merge multiple branches into a single branch. We can also commit branch-wise.

### 4. _Moving Files_

Moving files in Git is very easy as Git automatically tracks the moves. In contrast, in other VCS, we need to create a new file and then delete the old one.

### 5. _Freeware and Open Source_

Git is freeware and open source.

### 6. _Multi-Platform Support_

Git provides support for multiple platforms.

## _Architecture of GIT_

![git architecture](/images/git-architecture.png)

**_Git contains 2 types of repositories:_**
1. *Local Repository* 
2. *Remote Repository*
   
- For every developer, a separate local repository is available. Developer can perform all 
checkout and commit operations wrt local repository only.

- To perform commit operation, first he has to add files to staging area by using `git add`
command, and then he has to commit those changes to the local repository by using `git commit`
command. Hence commit in GIT is a 2-step process.

- Commit is applicable only for staging area files but not for working directory files.
- If the developer wants to share his work to the peer developers then he has to push his 
local repository to the remote repository by using `git push` command.

- Remote repository contains total project code, which can be accessible by all developers.
- New developer can get local repository by cloning remote repository. For this we have to 
use `git clone` command.

- A developer can get updates from the remote repository to the local repository by using 
`git pull` command.


- `git add` → To add files from working directory to staging area.
- `git commit` → To commit changes from staging area to local repository.
- `git push` → To move files from local repository to remote repository.
- `git clone` → To create a new local repository from the remote repository.
- `git pull` → To get updated files from remote repository to local repository.
