
Get:1 http://security.debian.org stretch/updates InRelease [53.0 kB]
Ign:2 http://deb.debian.org/debian stretch InRelease
Get:3 http://deb.debian.org/debian stretch-updates InRelease [93.6 kB]
Get:4 http://packages.cloud.google.com/apt cloud-sdk-stretch InRelease [6,389 B]
Get:5 http://deb.debian.org/debian stretch-backports InRelease [91.8 kB]
Get:6 http://deb.debian.org/debian stretch Release [118 kB]
Get:7 http://packages.cloud.google.com/apt google-compute-engine-stretch-stable InRelease [3,843 B]
Get:8 http://deb.debian.org/debian stretch Release.gpg [2,410 B]
Get:9 http://packages.cloud.google.com/apt google-cloud-packages-archive-keyring-stretch InRelease [3,876 B]
Get:10 http://security.debian.org stretch/updates/main Sources [219 kB]
Get:11 http://security.debian.org stretch/updates/main amd64 Packages [535 kB]
Get:12 http://security.debian.org stretch/updates/main Translation-en [235 kB]
Get:13 http://deb.debian.org/debian stretch-updates/main Sources.diff/Index [14.5 kB]
Get:14 http://deb.debian.org/debian stretch-updates/main amd64 Packages.diff/Index [14.5 kB]
Get:15 http://deb.debian.org/debian stretch-updates/main Translation-en.diff/Index [8,116 B]
Get:16 http://deb.debian.org/debian stretch-updates/main Sources 2020-07-16-2008.14.pdiff [28 B]
Get:17 http://deb.debian.org/debian stretch-updates/main amd64 Packages 2020-07-16-2008.14.pdiff [30 B]
Get:16 http://deb.debian.org/debian stretch-updates/main Sources 2020-07-16-2008.14.pdiff [28 B]
Get:17 http://deb.debian.org/debian stretch-updates/main amd64 Packages 2020-07-16-2008.14.pdiff [30 B]
Get:18 http://deb.debian.org/debian stretch-updates/main Translation-en 2020-07-16-2008.14.pdiff [30 B]
Get:18 http://deb.debian.org/debian stretch-updates/main Translation-en 2020-07-16-2008.14.pdiff [30 B]
Get:19 http://deb.debian.org/debian stretch/main Sources [6,736 kB]
Get:20 http://deb.debian.org/debian stretch/main amd64 Packages [7,080 kB]
Get:21 http://deb.debian.org/debian stretch/main Translation-en [5,377 kB]
Fetched 20.6 MB in 4s (4,475 kB/s)
Reading package lists... Done
Building dependency tree
Reading state information... Done
9 packages can be upgraded. Run 'apt list --upgradable' to see them.
student-01-3ef484e4e1e6@linux-instance:~$ sudo apt install git
Reading package lists... Done
Building dependency tree
Reading state information... Done
The following additional packages will be installed:
  git-man less libcurl3-gnutls liberror-perl libperl5.24 patch perl perl-base perl-modules-5.24 rename rsync
Suggested packages:
  git-daemon-run | git-daemon-sysvinit git-doc git-el git-email git-gui gitk gitweb git-arch git-cvs git-mediawiki git-svn ed diffutils-doc perl-doc
  libterm-readline-gnu-perl | libterm-readline-perl-perl make
The following NEW packages will be installed:
  git git-man less libcurl3-gnutls liberror-perl libperl5.24 patch perl perl-modules-5.24 rename rsync
The following packages will be upgraded:
  perl-base
1 upgraded, 11 newly installed, 0 to remove and 8 not upgraded.
Need to get 14.4 MB of archives.
After this operation, 73.2 MB of additional disk space will be used.
Do you want to continue? [Y/n] Y
Get:1 http://deb.debian.org/debian stretch/main amd64 perl-base amd64 5.24.1-3+deb9u7 [1,346 kB]
Get:2 http://deb.debian.org/debian stretch/main amd64 perl-modules-5.24 all 5.24.1-3+deb9u7 [2,723 kB]
Get:3 http://deb.debian.org/debian stretch/main amd64 libperl5.24 amd64 5.24.1-3+deb9u7 [3,527 kB]
Get:4 http://deb.debian.org/debian stretch/main amd64 perl amd64 5.24.1-3+deb9u7 [218 kB]
Get:5 http://deb.debian.org/debian stretch/main amd64 libcurl3-gnutls amd64 7.52.1-5+deb9u10 [290 kB]
Get:6 http://deb.debian.org/debian stretch/main amd64 liberror-perl all 0.17024-1 [26.9 kB]
Get:7 http://deb.debian.org/debian stretch/main amd64 git-man all 1:2.11.0-3+deb9u7 [1,436 kB]
Get:8 http://deb.debian.org/debian stretch/main amd64 git amd64 1:2.11.0-3+deb9u7 [4,170 kB]
Get:9 http://deb.debian.org/debian stretch/main amd64 less amd64 481-2.1 [126 kB]
Get:10 http://deb.debian.org/debian stretch/main amd64 patch amd64 2.7.5-1+deb9u2 [112 kB]
Get:11 http://deb.debian.org/debian stretch/main amd64 rename all 0.20-4 [12.5 kB]
Get:12 http://deb.debian.org/debian stretch/main amd64 rsync amd64 3.1.2-1+deb9u2 [393 kB]
Fetched 14.4 MB in 0s (46.1 MB/s)
(Reading database ... 39554 files and directories currently installed.)
Preparing to unpack .../perl-base_5.24.1-3+deb9u7_amd64.deb ...
Unpacking perl-base (5.24.1-3+deb9u7) over (5.24.1-3+deb9u6) ...
Setting up perl-base (5.24.1-3+deb9u7) ...
Selecting previously unselected package perl-modules-5.24.
(Reading database ... 39554 files and directories currently installed.)
Preparing to unpack .../00-perl-modules-5.24_5.24.1-3+deb9u7_all.deb ...
Unpacking perl-modules-5.24 (5.24.1-3+deb9u7) ...
Selecting previously unselected package libperl5.24:amd64.
Preparing to unpack .../01-libperl5.24_5.24.1-3+deb9u7_amd64.deb ...
Unpacking libperl5.24:amd64 (5.24.1-3+deb9u7) ...
Selecting previously unselected package perl.
Preparing to unpack .../02-perl_5.24.1-3+deb9u7_amd64.deb ...
Unpacking perl (5.24.1-3+deb9u7) ...
Selecting previously unselected package libcurl3-gnutls:amd64.
Preparing to unpack .../03-libcurl3-gnutls_7.52.1-5+deb9u10_amd64.deb ...
Unpacking libcurl3-gnutls:amd64 (7.52.1-5+deb9u10) ...
Selecting previously unselected package liberror-perl.
Preparing to unpack .../04-liberror-perl_0.17024-1_all.deb ...
Unpacking liberror-perl (0.17024-1) ...
Selecting previously unselected package git-man.
Preparing to unpack .../05-git-man_1%3a2.11.0-3+deb9u7_all.deb ...
Unpacking git-man (1:2.11.0-3+deb9u7) ...
Selecting previously unselected package git.
Preparing to unpack .../06-git_1%3a2.11.0-3+deb9u7_amd64.deb ...
Unpacking git (1:2.11.0-3+deb9u7) ...
Selecting previously unselected package less.
Preparing to unpack .../07-less_481-2.1_amd64.deb ...
Unpacking less (481-2.1) ...
Selecting previously unselected package patch.
Preparing to unpack .../08-patch_2.7.5-1+deb9u2_amd64.deb ...
Unpacking patch (2.7.5-1+deb9u2) ...
Selecting previously unselected package rename.
Preparing to unpack .../09-rename_0.20-4_all.deb ...
Unpacking rename (0.20-4) ...
Selecting previously unselected package rsync.
Preparing to unpack .../10-rsync_3.1.2-1+deb9u2_amd64.deb ...
Unpacking rsync (3.1.2-1+deb9u2) ...
Setting up perl-modules-5.24 (5.24.1-3+deb9u7) ...
Setting up libperl5.24:amd64 (5.24.1-3+deb9u7) ...
Setting up git-man (1:2.11.0-3+deb9u7) ...
Setting up less (481-2.1) ...
Processing triggers for mime-support (3.60) ...
Setting up libcurl3-gnutls:amd64 (7.52.1-5+deb9u10) ...
Setting up rsync (3.1.2-1+deb9u2) ...
Created symlink /etc/systemd/system/multi-user.target.wants/rsync.service → /lib/systemd/system/rsync.service.
Setting up perl (5.24.1-3+deb9u7) ...
update-alternatives: using /usr/bin/prename to provide /usr/bin/rename (rename) in auto mode
Setting up patch (2.7.5-1+deb9u2) ...
Processing triggers for libc-bin (2.24-11+deb9u4) ...
Processing triggers for systemd (232-25+deb9u12) ...
Processing triggers for man-db (2.7.6.1-2) ...
Setting up liberror-perl (0.17024-1) ...
Setting up rename (0.20-4) ...
update-alternatives: using /usr/bin/file-rename to provide /usr/bin/rename (rename) in auto mode
Setting up git (1:2.11.0-3+deb9u7) ...
student-01-3ef484e4e1e6@linux-instance:~$ git --version
git version 2.11.0
student-01-3ef484e4e1e6@linux-instance:~$ mkdir my-git-repo
student-01-3ef484e4e1e6@linux-instance:~$ cd my-git-repo
student-01-3ef484e4e1e6@linux-instance:~/my-git-repo$ git init
Initialized empty Git repository in /home/student-01-3ef484e4e1e6/my-git-repo/.git/
student-01-3ef484e4e1e6@linux-instance:~/my-git-repo$ git config --global user.name "dibyanshushekhardey"
student-01-3ef484e4e1e6@linux-instance:~/my-git-repo$ git config --global user.email "dibyanshushekhardey@gmail.com"
student-01-3ef484e4e1e6@linux-instance:~/my-git-repo$ nano README
student-01-3ef484e4e1e6@linux-instance:~/my-git-repo$ git status
On branch master

Initial commit

Untracked files:
  (use "git add <file>..." to include in what will be committed)

        README

nothing added to commit but untracked files present (use "git add" to track)
student-01-3ef484e4e1e6@linux-instance:~/my-git-repo$ git add README
student-01-3ef484e4e1e6@linux-instance:~/my-git-repo$ git commit -m "This is my first commit!"
[master (root-commit) 417bcc5] This is my first commit!
 1 file changed, 1 insertion(+)
 create mode 100644 README
student-01-3ef484e4e1e6@linux-instance:~/my-git-repo$ nano README
student-01-3ef484e4e1e6@linux-instance:~/my-git-repo$ git status
On branch master
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git checkout -- <file>..." to discard changes in working directory)

        modified:   README

no changes added to commit (use "git add" and/or "git commit -a")
student-01-3ef484e4e1e6@linux-instance:~/my-git-repo$ git diff README
diff --git a/README b/README
index 8ae5b89..c65104f 100644
--- a/README
+++ b/README
@@ -1 +1,3 @@
 This is my first repository
+A repository is a location where all the files of a particular project are stored.
+
student-01-3ef484e4e1e6@linux-instance:~/my-git-repo$ git add README
student-01-3ef484e4e1e6@linux-instance:~/my-git-repo$ git status
On branch master
Changes to be committed:
  (use "git reset HEAD <file>..." to unstage)

        modified:   README

student-01-3ef484e4e1e6@linux-instance:~/my-git-repo$ git commit -m "This is my second commit."
[master d27e2ab] This is my second commit.
 1 file changed, 2 insertions(+)
student-01-3ef484e4e1e6@linux-instance:~/my-git-repo$ git log
commit d27e2ab4760531db6dc4eebfe3db0a4e69f4b6cb
Author: dibyanshushekhardey <dibyanshushekhardey@gmail.com>
Date:   Mon Jul 20 14:05:56 2020 +0000

    This is my second commit.

commit 417bcc599e8b2f0aac04a98c35b128f615d92501
Author: dibyanshushekhardey <dibyanshushekhardey@gmail.com>
Date:   Mon Jul 20 14:03:44 2020 +0000

    This is my first commit!
student-01-3ef484e4e1e6@linux-instance:~/my-git-repo$ cat README
This is my first repository
A repository is a location where all the files of a particular project are stored.
