
## Complete postmortem of `git log`

- `git log` provide detail log infomation about all commits.

### How to see log information of particular file

```bash
git log filename.txt
```

```bash
git log z.txt
```

### 1. **_`git log --oneline`_**: To get short log information of all commits.

```bash
git log --oneline
```

output:
```
$ git log --oneline
a5d5c75 (HEAD -> master) Z.txt added
0f4f830 c.txt modified
d9829f2 abc.java added
8a716ad Added a.txt and b.txt
```

- This option is very helpful if we have lot of commits in our repository to identify the commit based on commit message.

`--oneline` 
- display commit ids first 7 characters.


### Option: `-n` To limit the number of commits

```bash
git log -n 2
```

output:
```$ git log -n 2
commit a5d5c75da8d50fd46cab9a0e2fa7122bf9bdb274 (HEAD -> master)
Author: Akshayredekar07 <akshayredekar1414@gmail.com>
Date:   Sun Sep 22 13:45:16 2024 +0530

    Z.txt added

commit 0f4f8304e94f8afee800bba82afd17e9790f9ecb
Author: Akshayredekar07 <akshayredekar1414@gmail.com>
Date:   Sun Sep 22 11:11:37 2024 +0530

    c.txt modified
(base)
```

```bash
git log -3

git log -n 3
```
- both commands are same.


```bash
git log -3 --oneline

git log --max-count=3
```


### Option : `--grep` option to search based on given pattern in the commit messge

- did some change sr-231
- did some change for defect number 123
- Struture format of commit message

```bash
git log --grep=Pattern
```

Option-3: --grep Option to search based on given Pattern in commit Message:
We can search based on given pattern in commit message.
```bash
git log --grep="pattern"
```
It shows all commits which has given pattern in the commit message.
```bash
git log --grep="added" --oneline
```
Output:
```$ git log --grep="added" --oneline
b7bd0cf (HEAD -> master) new file added
dcb4108 New files added
```
- **This option is very helpful if we follow a particular structure for the commit message. 
We can use this option to find all commits related to a particular request number or 
defect number etc.**

```bash
git log --grep="defect_number" --oneline
```
### Option-4: Show commits more recent than a specific Time

```bash
--since=<date>
--after=<date>
```
- Show commits more recent than a specific date
```bash
git log --since="5 minutes ago"
git log --since="1 year ago"
git log --after="2024-09-21"
```
### Option-5: Show commits Older than a specific Time

```bash
--until=<date>
--before=<date>
```

- Show commits older than a specific date.

```bash
git log --until="5 minutes ago"
git log --before="2020-05-17"
```
- display all commits on or before 17th.

### Option-6: Show commits based on Author

```bash
--author=<pattern>
```

```bash
git log --author=Akshay --oneline
```


### Option-7: --decorate Option to display extra Information

```bash
git log --decorate --oneline
```

```
Akshay@LAPTOP-5MJVV5PN MINGW64 ~/Documents/ALLFolders/Git DurgaSoft/project1/project2 (master)
$ git log --decorate --oneline
a5d5c75 (HEAD -> master) Z.txt added
0f4f830 c.txt modified
d9829f2 abc.java added
8a716ad Added a.txt and b.txt
(base)
```


**_Note_**: There are multiple options available for the `git log` command to see the history of all 
commits.
```bash
git log --help
```

**_Summary_**:

```bash
- `git log` #: To get detail log information of all commits.
- `git log --oneline` #: To get short log information of all commits.
- `git log filename.txt` #: To get log information of particular file.
- `git log -n 2` #: To limit the number of commits.
- `git log -3` #: To limit the number of commits.
- `git log --grep="pattern"` #: To search based on given pattern in the commit message.
- `git log --since="date"` #: To show commits more recent than a specific date.
- `git log --until="date"` #: To show commits older than a specific date.
- `git log --author="pattern"` #: To show commits based on Author.
- `git log --decorate --oneline` #: To display extra Information.
```