
## Git Workflow and Output

### 1. Attempt to Create a Branch Named `main`
```bash
$ git branch main
fatal: not a valid object name: 'master'
```
**Explanation**: The repository doesn't have a `master` branch at this point. It may still be uninitialized.

---

### 2. Create Files `a.txt`, `b.txt`, and `c.txt`
```bash
$ touch a.txt b.txt c.txt
```

---

### 3. Add and Commit `a.txt`
```bash
$ git add a.txt
$ git commit -m "a.txt added"
[master (root-commit) 4ebea62] a.txt added
 1 file changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 a.txt
```
**Explanation**: The first commit initializes the repository.

---

### 4. Add and Commit `b.txt`
```bash
$ git add b.txt
$ git commit -m "b.txt added"
[master 6436469] b.txt added
 1 file changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 b.txt
```

---

### 5. Add and Commit `c.txt`
```bash
$ git add c.txt
$ git commit -m "c.txt added"
[master f0cd378] c.txt added
 1 file changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 c.txt
```

---

### 6. Check Status
```bash
$ git status
On branch master
Untracked files:
  (use "git add <file>..." to include in what will be committed)
        file1.txt
        z.txt

nothing added to commit but untracked files present (use "git add" to track)
```

---

### 7. Remove `z.txt` and `file1.txt`
```bash
$ rm z.txt
$ rm file1.txt
$ git status
On branch master
nothing to commit, working tree clean
```

---

### 8. View Commit Log
```bash
$ git log
commit f0cd378acba89efa1ba0cd28cf0db6231d486f15 (HEAD -> master)
Author: Akshay redekar <akshayredekar1414@gmail.com>
Date:   Sat Nov 30 08:00:27 2024 +0530

    c.txt added

commit 643646948b9f6217e73bfa75beb449ec26fc2275
Author: Akshay redekar <akshayredekar1414@gmail.com>
Date:   Sat Nov 30 08:00:20 2024 +0530

    b.txt added

commit 4ebea6280df4b902ce39144d564b70c34ea71538
Author: Akshay redekar <akshayredekar1414@gmail.com>
Date:   Sat Nov 30 08:00:11 2024 +0530

    a.txt added
```

---

### 9. Create a New Branch `android`
```bash
$ git branch android
$ git checkout android
Switched to branch 'android'
```

---

### 10. Verify `android` Branch
```bash
$ ls
a.txt  b.txt  c.txt
$ git log --oneline
f0cd378 (HEAD -> android, master) c.txt added
6436469 b.txt added
4ebea62 a.txt added
```

---

### 11. Add `x.txt`, `y.txt`, and `z.txt`
```bash
$ touch x.txt y.txt z.txt
$ git add x.txt
$ git commit -m "x.txt added"
[android 31372ff] x.txt added

$ git add y.txt
$ git commit -m "y.txt added"
[android c3fe1b8] y.txt added

$ git add z.txt
$ git commit -m "z.txt added"
[android 3926b8a] z.txt added
```

---

### 12. View Log for `android` Branch
```bash
$ git log --oneline
3926b8a (HEAD -> android) z.txt added
c3fe1b8 y.txt added
31372ff x.txt added
f0cd378 (master) c.txt added
6436469 b.txt added
4ebea62 a.txt added
```

---

### 13. Switch to `master` Branch and Add `d.txt`
```bash
$ git checkout master
Switched to branch 'master'

$ touch d.txt
$ git add .
$ git commit -m "d.txt added"
[master db4c600] d.txt added
```

---

### 14. Verify `master` and `android` Branches
#### Master:
```bash
$ git log --oneline
db4c600 (HEAD -> master) d.txt added
f0cd378 c.txt added
6436469 b.txt added
4ebea62 a.txt added
```

#### Android:
```bash
$ git checkout android
Switched to branch 'android'
$ git log --oneline
3926b8a (HEAD -> android) z.txt added
c3fe1b8 y.txt added
31372ff x.txt added
f0cd378 c.txt added
6436469 b.txt added
4ebea62 a.txt added
```

---

### 15. Explore `.git` Directory
#### Branch References:
```bash
$ cd .git/refs/heads/
$ ls
android  master
```

#### HEAD File:
```bash
$ cat .git/HEAD
ref: refs/heads/android
```

