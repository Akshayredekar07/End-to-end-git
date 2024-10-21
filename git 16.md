## Git Aliases – Providing Our Own Convenient Names to Git Commands

An alias means a nickname, short name, or alternative name. In Git, we can create our own commands using the aliasing concept. This is similar to the alias command in Linux.

If a Git command is lengthy and frequently required, we can give it our own convenient alias name and use that alias name every time.

### Q1: Create an alias name 'one' for the following Git command:
 git log --oneline
Test whether alias Name already used OR not?
First we have to check whether the name 'one' is already used or not.
$ git one
git: 'one' is not a git command. See 'git --help'.
We can use 'one' as alias name.
Creating alias Name:
We can create alias name by using git config command.
Syntax: git config --global alias.aliasname "original command without git"
Eg: git config --global alias.one "log --oneline"
Using alias Name:
$ git one
bb26af3 (HEAD -> master) two files we added
257073d file1 added
Note: After creating alias name, we can use either alias name or original name.
