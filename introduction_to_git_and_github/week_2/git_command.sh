~$ cd scripts
~/scripts$ git log -p
commit 414772236c3f8c15c8afd630487d0235d09aa19e (HEAD -> maste
r)
Author: dibyanshushekhardey <dibyanshushekhardey@gmail.com>
Date:   Tue Jul 21 09:03:17 2020 +0000

    Call check_reboot from main, exit with 1 on error

diff --git a/all_checks.py b/all_checks.py
index ed0624f..216759a 100755
--- a/all_checks.py
+++ b/all_checks.py
@@ -1,12 +1,15 @@
 #!/usr/bin/env python3
 
 import os
+import sys
 
 def check_reboot():
   """Returns True if the computer has a pending reboot"""
   return os.path.exist("/run/reboot-required")
 def main():
-  pass
+  if check_reboot():
+    print("Pending Reboot.")
+    sys.exit(1)
 
 main()
 

commit afe1c0ded806d17154cb165ebc03b6552dd4b2ca
Author: dibyanshushekhardey <dibyanshushekhardey@gmail.com>
Date:   Mon Jul 20 13:41:16 2020 +0000

    Add a check_reboot function

diff --git a/all_checks.py b/all_checks.py
index 474560f..ed0624f 100755
--- a/all_checks.py
+++ b/all_checks.py
@@ -1,5 +1,10 @@
 #!/usr/bin/env python3
 
+import os
+
+def check_reboot():
+  """Returns True if the computer has a pending reboot"""
+  return os.path.exist("/run/reboot-required")
 def main():
   pass
commit 414772236c3f8c15c8afd630487d0235d09aa19e (HEAD -> maste
r)
Author: dibyanshushekhardey <dibyanshushekhardey@gmail.com>
Date:   Tue Jul 21 09:03:17 2020 +0000

    Call check_reboot from main, exit with 1 on error

diff --git a/all_checks.py b/all_checks.py
index ed0624f..216759a 100755
--- a/all_checks.py
+++ b/all_checks.py
@@ -1,12 +1,15 @@
 #!/usr/bin/env python3
 
 import os
+import sys
 
 def check_reboot():
   """Returns True if the computer has a pending reboot"""
   return os.path.exist("/run/reboot-required")
 def main():
-  pass
+  if check_reboot():
+    print("Pending Reboot.")
+    sys.exit(1)
 
 main()
 

commit afe1c0ded806d17154cb165ebc03b6552dd4b2ca
Author: dibyanshushekhardey <dibyanshushekhardey@gmail.com>
Date:   Mon Jul 20 13:41:16 2020 +0000

    Add a check_reboot function

diff --git a/all_checks.py b/all_checks.py
index 474560f..ed0624f 100755
--- a/all_checks.py
+++ b/all_checks.py
@@ -1,5 +1,10 @@
 #!/usr/bin/env python3
 
+import os
+
+def check_reboot():
+  """Returns True if the computer has a pending reboot"""
+  return os.path.exist("/run/reboot-required")
 def main():
   pass
 

commit 51a99b37cae287695c37446c4adccde48f250e14
Author: dibyanshushekhardey <dibyanshushekhardey@gmail.com>
Date:   Mon Jul 20 13:37:36 2020 +0000

    created empy all_checks.py

diff --git a/all_checks.py b/all_checks.py
new file mode 100755
index 0000000..474560f
--- /dev/null
+++ b/all_checks.py
@@ -0,0 +1,7 @@
+#!/usr/bin/env python3
+
+def main():
+  pass
+
+main()
+

~/scripts$ git log
commit 414772236c3f8c15c8afd630487d0235d09aa19e (HEAD -> master)
Author: dibyanshushekhardey <dibyanshushekhardey@gmail.com>
Date:   Tue Jul 21 09:03:17 2020 +0000

    Call check_reboot from main, exit with 1 on error

commit afe1c0ded806d17154cb165ebc03b6552dd4b2ca
Author: dibyanshushekhardey <dibyanshushekhardey@gmail.com>
Date:   Mon Jul 20 13:41:16 2020 +0000

    Add a check_reboot function

commit 51a99b37cae287695c37446c4adccde48f250e14
Author: dibyanshushekhardey <dibyanshushekhardey@gmail.com>
Date:   Mon Jul 20 13:37:36 2020 +0000

    created empy all_checks.py
~/scripts$ git show
commit 414772236c3f8c15c8afd630487d0235d09aa19e (HEAD -> master)
Author: dibyanshushekhardey <dibyanshushekhardey@gmail.com>
Date:   Tue Jul 21 09:03:17 2020 +0000

    Call check_reboot from main, exit with 1 on error

diff --git a/all_checks.py b/all_checks.py
index ed0624f..216759a 100755
--- a/all_checks.py
+++ b/all_checks.py
@@ -1,12 +1,15 @@
 #!/usr/bin/env python3
 
 import os
+import sys
 
 def check_reboot():
   """Returns True if the computer has a pending reboot"""
   return os.path.exist("/run/reboot-required")
 def main():
~/scripts$ git log --stat
commit 414772236c3f8c15c8afd630487d0235d09aa19e (HEAD -> master)
Author: dibyanshushekhardey <dibyanshushekhardey@gmail.com>
Date:   Tue Jul 21 09:03:17 2020 +0000

    Call check_reboot from main, exit with 1 on error

 all_checks.py | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

commit afe1c0ded806d17154cb165ebc03b6552dd4b2ca
Author: dibyanshushekhardey <dibyanshushekhardey@gmail.com>
Date:   Mon Jul 20 13:41:16 2020 +0000

    Add a check_reboot function

 all_checks.py | 5 +++++
 1 file changed, 5 insertions(+)

commit 51a99b37cae287695c37446c4adccde48f250e14
Author: dibyanshushekhardey <dibyanshushekhardey@gmail.com>
~/scripts$ nano all_checks.py
~/scripts$ git diff
diff --git a/all_checks.py b/all_checks.py
index 216759a..5f78923 100755
--- a/all_checks.py
+++ b/all_checks.py
@@ -10,6 +10,8 @@ def main():
   if check_reboot():
     print("Pending Reboot.")
     sys.exit(1)
+  print("Everything OK.")
+  sys.exit(0)
 
 main()
 
~/scripts$ git add -p
diff --git a/all_checks.py b/all_checks.py
index 216759a..5f78923 100755
--- a/all_checks.py
+++ b/all_checks.py
@@ -10,6 +10,8 @@ def main():
   if check_reboot():
     print("Pending Reboot.")
     sys.exit(1)
+  print("Everything OK.")
+  sys.exit(0)
 
 main()
 
Stage this hunk [y,n,q,a,d,e,?]? y

~/scripts$ git commit -m "Add a message when everything is ok"[master 36bd458] Add a message when everything is ok
 1 file changed, 2 insertions(+)
~/scripts$ git status
On branch master
nothing to commit, working tree clean
~/scripts$ cd
~$ cd checks
~/checks$ ls -l
total 2
-rwxr-xr-x 1 user user 441 Jul 20 13:26 disk_usage.py
-rwxr-xr-x 1 user user  46 Jul 20 13:07 hello_world.py
~/checks$ git rm process.py
fatal: pathspec 'process.py' did not match any files
~/checks$ git rm hello_world.py
rm 'hello_world.py'
~/checks$ ls -l
total 1
-rwxr-xr-x 1 user user 441 Jul 20 13:26 disk_usage.py
~/checks$ git status
On branch master
Changes to be committed:
  (use "git reset HEAD <file>..." to unstage)

        deleted:    hello_world.py

~/checks$ git commit -m "deleted unneeded hello_world file"
[master 031f97b] deleted unneeded hello_world file
 1 file changed, 4 deletions(-)
 delete mode 100755 hello_world.py
~/checks$ git mv disk_usage.py check_free_space.py
~/checks$ git status
On branch master
Changes to be committed:
  (use "git reset HEAD <file>..." to unstage)

        renamed:    disk_usage.py -> check_free_space.py

~/checks$ git commit -m "New name to disk_usage.py"
[master f75bb66] New name to disk_usage.py
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename disk_usage.py => check_free_space.py (100%)
~/checks$ echo .DS_STORE > .gitignore
~/checks$ ls -la
total 6
drwxr-xr-x  3 user user   5 Jul 21 09:37 .
drwxr-xr-x 10 user user  19 Jul 21 09:24 ..
drwxr-xr-x  8 user user  14 Jul 21 09:35 .git
-rw-r--r--  1 user user  10 Jul 21 09:37 .gitignore
-rwxr-xr-x  1 user user 441 Jul 20 13:26 check_free_space.py
~/checks$ gitadd .gitignore
bash: gitadd: command not found
~/checks$ git add .gitignore
The following paths are ignored by one of your .gitignore files:
.gitignore
Use -f if you really want to add them.
~/checks$ git add -f .gitignore
~/checks$ git commit -m "Add a gitignore file ignoring .DS_STORE"
[master 6806090] Add a gitignore file ignoring .DS_STORE
 1 file changed, 1 insertion(+)
 create mode 100644 .gitignore
~/checks$ cd
~$ cd scripts
~/scripts$ nano all_checks.py
~/scripts$ ./all_checks.py
Traceback (most recent call last):
  File "./all_checks.py", line 13, in <module>
    main()
  File "./all_checks.py", line 7, in main
    if check_reboot():
NameError: name 'check_reboot' is not defined
~/scripts$ git status
On branch master
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git checkout -- <file>..." to discard changes in working directory)

        modified:   all_checks.py

no changes added to commit (use "git add" and/or "git commit -a")
~/scripts$ git checkout all_checks.py
~/scripts$ ./all_checks.py
Traceback (most recent call last):
  File "./all_checks.py", line 16, in <module>
    main()
  File "./all_checks.py", line 10, in main
    if check_reboot():
  File "./all_checks.py", line 8, in check_reboot
    return os.path.exist("/run/reboot-required")
AttributeError: module 'posixpath' has no attribute 'exist'
~/scripts$ nano all_checks.py
~/scripts$ ./all_checks.py
Everything OK.
~/scripts$ git status
On branch master
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git checkout -- <file>..." to discard changes in working directory)

        modified:   all_checks.py

no changes added to commit (use "git add" and/or "git commit -a")
~/scripts$ ./all_checks.py > output.txt
~/scripts$ git add *
~/scripts$ git status
On branch master
Changes to be committed:
  (use "git reset HEAD <file>..." to unstage)

        modified:   all_checks.py
        new file:   output.txt

~/scripts$ git reset HEAD output.txt
~/scripts$ git status
On branch master
Changes to be committed:
  (use "git reset HEAD <file>..." to unstage)

        modified:   all_checks.py

Untracked files:
  (use "git add <file>..." to include in what will be committed)

        output.txt

~/scripts$ git commit -m "it should be os.path.exists"
[master 564e1da] it should be os.path.exists
 1 file changed, 1 insertion(+), 1 deletion(-)
~/scripts$ #amending commits
~/scripts$ touch auto-update.py
~/scripts$ touch gather-information.sh
~/scripts$ ls -l
total 3
-rwxr-xr-x 1 user user 299 Jul 21 10:06 all_checks.py
-rw-r--r-- 1 user user   0 Jul 21 10:16 auto-update.py
-rw-r--r-- 1 user user   0 Jul 21 10:16 gather-information.sh
-rw-r--r-- 1 user user  15 Jul 21 10:08 output.txt
~/scripts$ git add auto-update.py
~/scripts$ git commit -m "Add two new scripts"
[master e89b4c1] Add two new scripts
 1 file changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 auto-update.py
~/scripts$ git add gathet-information.sh
fatal: pathspec 'gathet-information.sh' did not match any files
~/scripts$ git add gather-information.sh
~/scripts$ git commit --amend
    I    ~/scripts/.git/COMMIT_EDITMSG (Mod  Row 4    Col 68  
new scripts.

nformation.sh will be used to collect information in case of e
ate.py will be run daily to update computers automatically.

 enter the commit message for your changes. Lines starting
#' will be ignored, and an empty message aborts the commit.

     Tue Jul 21 10:17:00 2020 +0000

nch master
s to be committed:
new file:   auto-update.py
new file:   gather-information.sh

ked files:
output.txt


File /home/user/scripts/.git/COMMIT_EDITMSG has been
modified.  Save it (y,n,^C)?
All modified files have been saved.
[master 43d4227] Add two new scripts.
 Date: Tue Jul 21 10:17:00 2020 +0000
 2 files changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 auto-update.py
 create mode 100644 gather-information.sh
~$ #Roll back 
~$ cd scripts
~/scripts$ nano all_checks.py
~/scripts$ git commit -a -m "Add call to disk_full function"
[master 8c65d63] Add call to disk_full function
 1 file changed, 3 insertions(+)
~/scripts$ ./all_checks.py
Traceback (most recent call last):
  File "./all_checks.py", line 19, in <module>
    main()
  File "./all_checks.py", line 13, in main
    if disk_full():
NameError: name 'disk_full' is not defined
~/scripts$ git revert HEAD
    I    ~/scripts/.git/COMMIT_EDITMSG (Mod  Row 2    Col 58  
Revert "Add call to disk_full function"
Reason for rollback: the disk_full function is undefined.

This reverts commit 8c65d639994fdec11b8316c53d40438c219731fd.

# Please enter the commit message for your changes. Lines star
# with '#' will be ignored, and an empty message aborts the co
#
# On branch master
# Changes to be committed:
#       modified:   all_checks.py
#
# Untracked files:
#       output.txt
#




File /home/user/scripts/.git/COMMIT_EDITMSG has been
modified.  Save it (y,n,^C)?
All modified files have been saved.
[master 61cafc3] Revert "Add call to disk_full function" Reason for rollback: the disk_full function is undefined.
 1 file changed, 3 deletions(-)
~/scripts$ 
~/scripts$ git log -p -2
commit 61cafc319bf52a72c364d959ef1bf12f3376ea0c (HEAD -> master)
Author: dibyanshushekhardey <dibyanshushekhardey@gmail.com>
Date:   Tue Jul 21 11:27:02 2020 +0000

    Revert "Add call to disk_full function"
    Reason for rollback: the disk_full function is undefined.
    
    This reverts commit 8c65d639994fdec11b8316c53d40438c219731fd.

diff --git a/all_checks.py b/all_checks.py
index 3cc5d51..85a9e8f 100755
--- a/all_checks.py
+++ b/all_checks.py
@@ -10,9 +10,6 @@ def main():
   if check_reboot():
     print("Pending Reboot.")
     sys.exit(1)
-  if disk_full():
-    print("Disk Full.")
-    sys.exit(1)
   print("Everything OK.")
   sys.exit(0)
 

commit 8c65d639994fdec11b8316c53d40438c219731fd
Author: dibyanshushekhardey <dibyanshushekhardey@gmail.com>
Date:   Tue Jul 21 11:26:37 2020 +0000

    Add call to disk_full function

diff --git a/all_checks.py b/all_checks.py
index 85a9e8f..3cc5d51 100755
--- a/all_checks.py
+++ b/all_checks.py
@@ -10,6 +10,9 @@ def main():
   if check_reboot():
     print("Pending Reboot.")
     sys.exit(1)
+  if disk_full():
+    print("Disk Full.")
+    sys.exit(1)
   print("Everything OK.")
   sys.exit(0)
 
~
~
~
~
~
~
~
~

~/scripts$ cd checks 
bash: cd: checks: No such file or directory
~/scripts$ cd
~$ cd checks
~/checks$ git log -p
commit 6806090b218b9ec347d6683c058e07c33b276963 (HEAD -> master)
Author: dibyanshushekhardey <dibyanshushekhardey@gmail.com>
Date:   Tue Jul 21 09:39:03 2020 +0000

    Add a gitignore file ignoring .DS_STORE

diff --git a/.gitignore b/.gitignore
new file mode 100644
index 0000000..fd5106f
--- /dev/null
+++ b/.gitignore
@@ -0,0 +1 @@
+.DS_STORE

commit f75bb66d9c53c9fd4895e624d6bbd79d8d29d0b2
Author: dibyanshushekhardey <dibyanshushekhardey@gmail.com>
Date:   Tue Jul 21 09:35:59 2020 +0000

    New name to disk_usage.py

~/checks$ git show f75bb66d9c53c9fd4895e624d6bbd79d8d29d0b2
commit f75bb66d9c53c9fd4895e624d6bbd79d8d29d0b2
Author: dibyanshushekhardey <dibyanshushekhardey@gmail.com>
Date:   Tue Jul 21 09:35:59 2020 +0000

    New name to disk_usage.py

diff --git a/disk_usage.py b/check_free_space.py
similarity index 100%
rename from disk_usage.py
rename to check_free_space.py
~/checks$ git show
commit 6806090b218b9ec347d6683c058e07c33b276963 (HEAD -> master)
Author: dibyanshushekhardey <dibyanshushekhardey@gmail.com>
Date:   Tue Jul 21 09:39:03 2020 +0000

    Add a gitignore file ignoring .DS_STORE

diff --git a/.gitignore b/.gitignore
new file mode 100644
index 0000000..fd5106f
--- /dev/null
+++ b/.gitignore
@@ -0,0 +1 @@
+.DS_STORE
~/checks$ git show f
fatal: ambiguous argument 'f': unknown revision or path not in the working tree.
Use '--' to separate paths from revisions, like this:
'git <command> [<revision>...] -- [<file>...]'
~/checks$ git show f75bb6
commit f75bb66d9c53c9fd4895e624d6bbd79d8d29d0b2
Author: dibyanshushekhardey <dibyanshushekhardey@gmail.com>
Date:   Tue Jul 21 09:35:59 2020 +0000

    New name to disk_usage.py

diff --git a/disk_usage.py b/check_free_space.py
similarity index 100%
rename from disk_usage.py
rename to check_free_space.py
~/checks$ git revert f75bb6
    I    ~/checks/.git/COMMIT_EDITMSG (Modi  Row 4    Col 1   
Revert "New name to disk_usage.py"

Roll back reason: The prevois name was actually better

This reverts commit f75bb66d9c53c9fd4895e624d6bbd79d8d29d0b2.

# Please enter the commit message for your changes. Lines star
# with '#' will be ignored, and an empty message aborts the co
#
# On branch master
# Changes to be committed:
#       renamed:    check_free_space.py -> disk_usage.py
#






File /home/user/checks/.git/COMMIT_EDITMSG has been modified.
Save it (y,n,^C)?
All modified files have been saved.
[master 7bc476f] Revert "New name to disk_usage.py"
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename check_free_space.py => disk_usage.py (100%)
~/checks$ git show
commit 7bc476faad4aad7b7f9a46546d4ca4fc25076ab8 (HEAD -> master)
Author: dibyanshushekhardey <dibyanshushekhardey@gmail.com>
Date:   Tue Jul 21 11:51:36 2020 +0000

    Revert "New name to disk_usage.py"
    
    Roll back reason: The prevois name was actually better
    
    This reverts commit f75bb66d9c53c9fd4895e624d6bbd79d8d29d0b2.

diff --git a/check_free_space.py b/disk_usage.py
similarity index 100%
rename from check_free_space.py
rename to disk_usage.py
~/checks$ ~$ cd
~$ cd checks
~/checks$ git branch
* master
~/checks$ git branch new-feature
~/checks$ git branch
* master
  new-feature
~/checks$ git checkout new-feature
Switched to branch 'new-feature'
~/checks$ git branch
  master
* new-feature
~/checks$ git checkout -b even-better-feature
Switched to a new branch 'even-better-feature'
~/checks$ nano free_memory.py
~/checks$ git add free_memory.py
~/checks$ git commit -m "Add an empty free_memory.py"
[even-better-feature abeaa2d] Add an empty free_memory.py
 1 file changed, 7 insertions(+)
 create mode 100644 free_memory.py
~/checks$ git log -2
commit abeaa2d7c383168c917bf9d3744a7dab165244f3 (HEAD -> even-better-feature)
Author: dibyanshushekhardey <dibyanshushekhardey@gmail.com>
Date:   Tue Jul 21 12:32:19 2020 +0000

    Add an empty free_memory.py

commit 7bc476faad4aad7b7f9a46546d4ca4fc25076ab8 (new-feature, master)
Author: dibyanshushekhardey <dibyanshushekhardey@gmail.com>
Date:   Tue Jul 21 11:51:36 2020 +0000

    Revert "New name to disk_usage.py"
    
    Roll back reason: The prevois name was actually better
    
    This reverts commit f75bb66d9c53c9fd4895e624d6bbd79d8d29d0b2.
~/checks$ git status
On branch even-better-feature
nothing to commit, working tree clean
~/checks$ ls -l
total 2
-rwxr-xr-x 1 user user 441 Jul 21 11:51 disk_usage.py
-rw-r--r-- 1 user user  51 Jul 21 12:31 free_memory.py
~/checks$ git checkout master
Switched to branch 'master'
~/checks$ git log -2
commit 7bc476faad4aad7b7f9a46546d4ca4fc25076ab8 (HEAD -> master, new-feature)
Author: dibyanshushekhardey <dibyanshushekhardey@gmail.com>
Date:   Tue Jul 21 11:51:36 2020 +0000

    Revert "New name to disk_usage.py"
    
    Roll back reason: The prevois name was actually better
    
    This reverts commit f75bb66d9c53c9fd4895e624d6bbd79d8d29d0b2.

commit 6806090b218b9ec347d6683c058e07c33b276963
Author: dibyanshushekhardey <dibyanshushekhardey@gmail.com>
Date:   Tue Jul 21 09:39:03 2020 +0000

    Add a gitignore file ignoring .DS_STORE
~/checks$ ls -l
total 1
-rwxr-xr-x 1 user user 441 Jul 21 11:51 disk_usage.py
~/checks$ git branch
  even-better-feature
* master
  new-feature
~/checks$ git branch -d new-feature
Deleted branch new-feature (was 7bc476f).
~/checks$ git branch
  even-better-feature
* master
~/checks$ git branch -d even-better-feature
error: The branch 'even-better-feature' is not fully merged.
If you are sure you want to delete it, run 'git branch -D even-better-feature'.
~/checks$ git branch
  even-better-feature
* master
~/checks$ git merge even-better-feature
Updating 7bc476f..abeaa2d
Fast-forward
 free_memory.py | 7 +++++++
 1 file changed, 7 insertions(+)
 create mode 100644 free_memory.py
~/checks$ git log
commit abeaa2d7c383168c917bf9d3744a7dab165244f3 (HEAD -> master, even-better-feature)
Author: dibyanshushekhardey <dibyanshushekhardey@gmail.com>
Date:   Tue Jul 21 12:32:19 2020 +0000

    Add an empty free_memory.py

commit 7bc476faad4aad7b7f9a46546d4ca4fc25076ab8
Author: dibyanshushekhardey <dibyanshushekhardey@gmail.com>
Date:   Tue Jul 21 11:51:36 2020 +0000

    Revert "New name to disk_usage.py"
    
    Roll back reason: The prevois name was actually better
    
    This reverts commit f75bb66d9c53c9fd4895e624d6bbd79d8d29d0b2.

commit 6806090b218b9ec347d6683c058e07c33b276963
Author: dibyanshushekhardey <dibyanshushekhardey@gmail.com>
Date:   Tue Jul 21 09:39:03 2020 +0000

    Add a gitignore file ignoring .DS_STORE

commit f75bb66d9c53c9fd4895e624d6bbd79d8d29d0b2
Author: dibyanshushekhardey <dibyanshushekhardey@gmail.com>
Date:   Tue Jul 21 09:35:59 2020 +0000

    New name to disk_usage.py

commit 031f97b2b6030b627113ebcd72f298f5965d7f48
Author: dibyanshushekhardey <dibyanshushekhardey@gmail.com>
Date:   Tue Jul 21 09:34:52 2020 +0000

    deleted unneeded hello_world file

commit f5d746d358372e7318269b53a9429d3b33ee1792
Author: dibyanshushekhardey <dibyanshushekhardey@gmail.com>
Date:   Mon Jul 20 13:28:45 2020 +0000

    Add periods to the end of the sentences.

commit c534a0e0296b6a00fc5fa2ac80270b9a74e26b76
Author: dibyanshushekhardey <dibyanshushekhardey@gmail.com>
Date:   Mon Jul 20 13:09:01 2020 +0000

    Added hello_world py file
~/checks$ nano free_memory.py
~/checks$ git commit -a -m "Add comment to main()"
[master 4dfcf2d] Add comment to main()
 1 file changed, 2 insertions(+), 1 deletion(-)
~/checks$ git checkout even-better-feature
Switched to branch 'even-better-feature'
~/checks$ nano free_memory.py
~/checks$ git commit -a -m "Print everything is ok"
[even-better-feature 2fc1a45] Print everything is ok
 1 file changed, 2 insertions(+), 1 deletion(-)
~/checks$ git checkout master
Switched to branch 'master'
~/checks$ git merge even-better-feature
Auto-merging free_memory.py
CONFLICT (content): Merge conflict in free_memory.py
Automatic merge failed; fix conflicts and then commit the result.
~/checks$ git status
On branch master
You have unmerged paths.
  (fix conflicts and run "git commit")
  (use "git merge --abort" to abort the merge)

Unmerged paths:
  (use "git add <file>..." to mark resolution)

        both modified:   free_memory.py

no changes added to commit (use "git add" and/or "git commit -a")
~/checks$ nano free_memory.py
~/checks$ git add free_memory.py
~/checks$ git status
On branch master
All conflicts fixed but you are still merging.
  (use "git commit" to conclude merge)

Changes to be committed:

        modified:   free_memory.py

~/checks$ git commit 
hint: Waiting for your editor to close the file... 

    I    ~/checks/.git/COMMIT_EDITMSG (git-commit)            
 Row 4    Col 1   



#       free_memory.py
    I    ~/checks/.git/COMMIT_EDITMSG (Modified)(git-commit)                                                                                                 Row 5    Col 1   

Merge branch 'even-better-feature'

Kept lines from both branches.

# Conflicts:
#       free_memory.py
#
# It looks like you may be committing a merge.
# If this is not correct, please remove the file
#       .git/MERGE_HEAD
# and try again.


# Please enter the commit message for your changes. Lines starting
# with '#' will be ignored, and an empty message aborts the commit.
#
# On branch master
# All conflicts fixed but you are still merging.
#
# Changes to be committed:
#       modified:   free_memory.py
#





File /home/user/checks/.git/COMMIT_EDITMSG has been modified.  Save it (y,n,^C)?
All modified files have been saved.
[master 86c33e4] Merge branch 'even-better-feature'
~/checks$ 
~/checks$ git log --graph --oneline
*   86c33e4 (HEAD -> master) Merge branch 'even-better-feature'
|\  
| * 2fc1a45 (even-better-feature) Print everything is ok
* | 4dfcf2d Add comment to main()
|/  
* abeaa2d Add an empty free_memory.py
* 7bc476f Revert "New name to disk_usage.py"
* 6806090 Add a gitignore file ignoring .DS_STORE
* f75bb66 New name to disk_usage.py
* 031f97b deleted unneeded hello_world file
* f5d746d Add periods to the end of the sentences.
* c534a0e Added hello_world py file
~/checks$ ./free_memory.py
bash: ./free_memory.py: Permission denied
~/checks$ chmod +x free_memory.py
~/checks$ ./free_memory.py
  File "./free_memory.py", line 3
    def main()
             ^
SyntaxError: invalid syntax
~/checks$ nano free_memory.py
~/checks$ git add free_memory.py
~/checks$ cat free_memory.py
#!/usr/bin/env python3

def main():

  """Checks if there is enough free memory in the computer"""
  print("Everything is ok.")


main()

~/checks$ git commit 
    I    ~/checks/.git/COMMIT_EDITMSG (Modi  Row 1    Col 25  
Resolved the error issue
# Please enter the commit message for your changes. Lines star
# with '#' will be ignored, and an empty message aborts the co
#
# On branch master
# Changes to be committed:
#       modified:   free_memory.py
#
File /home/user/checks/.git/COMMIT_EDITMSG has been modified.
Save it (y,n,^C)?
All modified files have been saved.
[master c6c87ee] Resolved the error issue
 1 file changed, 1 insertion(+), 1 deletion(-)
 mode change 100644 => 100755 free_memory.py
~/checks$ ./free_memory.py
Everything is ok.
-------------------------------------------------------
