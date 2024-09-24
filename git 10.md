# Helix Visual Merge Tool (p4merge) For Checking Differences

- There are multiple tools are available like Helix Visual Merge Tool (P4Merge), meld etc.

### How to install Helix Visual Merge Tool (P4Merge)
![img](/images/helix-installation.png)

We can use P4Merge tool for both comparison and merging purposes.

To install, follow these steps:

1. Visit [https://www.perforce.com/downloads](https://www.perforce.com/downloads).
2. Select the Helix Visual Merge Tool (P4Merge) for your required platform.
3. For Windows, choose the 64-bit version.
4. Skip registration to proceed.
5. You will receive the `p4vinst64.exe` file.

P4Merge offers multiple utilities, but for our purposes, we only need the Merge and Diff Tools.

Select only Merge and Diff Tool.

$ p4merge
bash: p4merge: command not found

We have to set path explicitly.
C:\Program Files\Perforce
This location contains our required p4merge application: p4merge.exe

### How to Connect p4merge with git

To connect p4merge with git, follow these steps for difftool configurations:

1. Set the diff tool to p4merge:
```bash
git config --global diff.tool p4merge
```
2. Specify the path to the p4merge executable:
```bash
git config --global difftool.p4merge.path "C:\Program Files\Perforce\p4merge.exe"
```
3. Disable the prompt for difftool:
```bash
git config --global difftool.prompt false
```


Mergetool Configurations:
```bash
git config --global merge.tool p4merge
git config --global mergetool.p4merge.path "C:\Program Files\Perforce\p4merge.exe"
git config --global mergetool.prompt false
```
Check the configurations:

```bash
$ git config --global --list
user.email=akshayredekar1414@gmail.com
user.name=Akshayredekar07
filter.lfs.required=true
filter.lfs.clean=git-lfs clean -- %f
filter.lfs.smudge=git-lfs smudge -- %f
filter.lfs.process=git-lfs filter-process
core.autocrlf=true
diff.tool=p4merge
difftool.p4merge.path=C:\Program Files\Perforce\p4merge.exe
difftool.prompt=false
merge.tool=p4merge
mergetool.p4merge.path=C:\Program Files\Perforce\p4merge.exe
mergetool.prompt=false

```

**_Continuation of Our Previous Example:_**
```
file1.txt -> 7th line added and staged
file1.txt -> 8th line added in working directory
```
**_Example 1: Working Directory vs Staging Area_**
```bash
git diff file1.txt
git difftool file1.txt
```

![img](/images/diff-tool-output.png)