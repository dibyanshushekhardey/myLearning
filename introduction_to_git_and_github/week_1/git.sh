~$ git config --global user.email "userid@gmail.com"
~$ git config --global user.name "username"
~$ mkdir checks
~$ cd checks
~/checks$ cp ../rearrange1.py .
cp: cannot stat '../rearrange1.py': No such file or directory
~/checks$ nano hello_world.py
~/checks$ chmod +x hello_world.py
~/checks$ ./hello_world.py
bash: ./hello_world.py: usr/bin/env: bad interpreter: No such file or directory
~/checks$ nano hello_world.py
~/checks$ ./hello_world.py
bash: ./hello_world.py: usr/bin/env: bad interpreter: No such file or directory
~/checks$ nano hello_world.py
~/checks$ ./hello_world.py
Hello_world
~/checks$ git add hello_world.py
fatal: not a git repository (or any parent up to mount point /home)
Stopping at filesystem boundary (GIT_DISCOVERY_ACROSS_FILESYSTEM not set).
~/checks$ git init
Initialized empty Git repository in /home/user/checks/.git/
~/checks$ git add hello_world.py
~/checks$ git status
On branch master

No commits yet

Changes to be committed:
  (use "git rm --cached <file>..." to unstage)

        new file:   hello_world.py

~/checks$ git commit 
    I    ~/checks/.git/COMMIT_EDITMSG (Modified)(git-commit)                                ^[  I    ~/checks/.git/COMMIT_EDITMSG (Modified)(git-commit)               Row 1      I    ~/checks/.git/COMMIT_EDITMSG (git-commit)                                                                                                           Row 3    Col 3   
Added hello_world py file

# with '#' will be ignored, and an empty message aborts the commit.
#
# On branch master
#
# Initial commit
#
# Changes to be committed:
#       new file:   hello_world.py
#


















File /home/user/checks/.git/COMMIT_EDITMSG not changed so no update needed
[master (root-commit) c534a0e] Added hello_world py file
 1 file changed, 4 insertions(+)
 create mode 100755 hello_world.py
~/checks$ ls -ll
total 1
-rwxr-xr-x 1 user user 46 Jul 20 13:07 hello_world.py
~/checks$ ls -l
total 1
-rwxr-xr-x 1 user user 46 Jul 20 13:07 hello_world.py
~/checks$ git status
On branch master
nothing to commit, working tree clean
~/checks$ atom disk_usage.py
~/checks$ 
(atom:754): Gtk-WARNING **: 13:20:03.538: cannot open display: :0
^C
~/checks$ jupyter disk_usage.py
Traceback (most recent call last):
  File "/usr/local/bin/jupyter", line 8, in <module>
    sys.exit(main())
  File "/usr/local/lib/python3.6/dist-packages/jupyter_core/command.py", line 247, in main
    command = _jupyter_abspath(subcommand)
  File "/usr/local/lib/python3.6/dist-packages/jupyter_core/command.py", line 134, in _jupyter_abspath
    'Jupyter command `{}` not found.'.format(jupyter_subcommand)
Exception: Jupyter command `jupyter-disk_usage.py` not found.
~/checks$ nano disk_usage.py
~/checks$ chmod +x disk_usage.py
~/checks$ ./disk_usage.py
Everything OK.
~/checks$ git status
On branch master
Untracked files:
  (use "git add <file>..." to include in what will be committed)

        disk_usage.py

nothing added to commit but untracked files present (use "git add" to track)
~/checks$ git add disk_usage.py
~/checks$ git status
On branch master
Changes to be committed:
  (use "git reset HEAD <file>..." to unstage)

        new file:   disk_usage.py

~/checks$ git commit -m 'Add periods to the end of the sentences.'
[master f5d746d] Add periods to the end of the sentences.
 1 file changed, 20 insertions(+)
 create mode 100755 disk_usage.py
~/checks$ git status
On branch master
nothing to commit, working tree clean
~/checks$ ls -l
total 2
-rwxr-xr-x 1 user user 441 Jul 20 13:26 disk_usage.py
-rwxr-xr-x 1 user user  46 Jul 20 13:07 hello_world.py
~/checks$ cd
~$ mkdir scripts
~$ cd scripts
~/scripts$ git init
Initialized empty Git repository in /home/user/scripts/.git/
~/scripts$ git config -l
filter.lfs.clean=git-lfs clean -- %f
filter.lfs.smudge=git-lfs smudge -- %f
filter.lfs.process=git-lfs filter-process
filter.lfs.required=true
core.excludesfile=/home/user/.gitexcludes
user.email=userid@gmail.com
user.name=username
core.repositoryformatversion=0
core.filemode=true
core.bare=false
core.logallrefupdates=true
~/scripts$ nano all_checks.py
~/scripts$ chmod +x all_checks.py
~/scripts$ git status
On branch master

No commits yet

Untracked files:
  (use "git add <file>..." to include in what will be committed)

        all_checks.py

nothing added to commit but untracked files present (use "git add" to track)
~/scripts$ git add all_checks.py
~/scripts$ git commit 
    I    ~/scripts/.git/COMMIT_EDITMSG (Modified)(git-commit)                                                                                                Row 2    Col 3   
create an empty all_checks.py file
#  enter the commit message for your changes. Lines starting
# with '#' will be ignored, and an empty message aborts the commit.
#
# On branch master
#
# Initial commit
#
# Changes to be committed:
#       new file:   all_checks.py
#

















Lose changes to this file (y,n,^C)? 
File /home/user/scripts/.git/COMMIT_EDITMSG not saved
Aborting commit due to empty commit message.
~/scripts$ git commit -m "created empy all_checks.py"
[master (root-commit) 51a99b3] created empy all_checks.py
 1 file changed, 7 insertions(+)
 create mode 100755 all_checks.py
~/scripts$ git status
On branch master
nothing to commit, working tree clean
~/scripts$ ls -l 
total 1
-rwxr-xr-x 1 user user 52 Jul 20 13:32 all_checks.py
~/scripts$ nano all_checks.py
~/scripts$ git status
On branch master
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git checkout -- <file>..." to discard changes in working directory)

        modified:   all_checks.py

no changes added to commit (use "git add" and/or "git commit -a")
~/scripts$ git add all_checks.py
~/scripts$ git status
On branch master
Changes to be committed:
  (use "git reset HEAD <file>..." to unstage)

        modified:   all_checks.py

~/scripts$ git commit -m "Add a check_reboot function"
[master afe1c0d] Add a check_reboot function
 1 file changed, 5 insertions(+)
~/scripts$ git status
On branch master
nothing to commit, working tree clean
~/scripts$ cd 
~$ ls -l
total 2
-rw-r--r-- 1 user user 0 Jul 20 13:03 2020-07-20-183259.term
drwxr-xr-x 3 user user 5 Jul 20 13:26 checks
drwxr-xr-x 3 user user 4 Jul 20 13:40 scripts
~$ cd scripts
~/scripts$ git log
commit afe1c0ded806d17154cb165ebc03b6552dd4b2ca (HEAD -> master)
Author: username <userid@gmail.com>
Date:   Mon Jul 20 13:41:16 2020 +0000

    Add a check_reboot function

commit 51a99b37cae287695c37446c4adccde48f250e14
Author: username <userid@gmail.com>
Date:   Mon Jul 20 13:37:36 2020 +0000

    created empy all_checks.py
~/scripts$ cd
~$ 
