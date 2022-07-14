student-02-f5ce5344f3b1@linux-instance:~$ sudo puppet agent -v --test
Info: Using configured environment 'production'
Info: Retrieving pluginfacts
Info: Retrieving plugin
Info: Caching catalog for linux-instance.c.qwiklabs-gcp-02-396070fa7ff8.internal
Info: Applying configuration version '1597682092'
Notice: /Stage[main]/Machine_info/File[machine_info]/content:
--- /tmp/machine_info.txt       2020-08-17 16:10:19.693057868 +0000
+++ /tmp/puppet-file20200817-19006-hrggia       2020-08-17 16:34:52.919932237 +0000
@@ -3,4 +3,5 @@
 Disks:
 Memory:
 Processors: {"models"=>["Intel(R) Xeon(R) CPU @ 2.30GHz"], "count"=>1, "physicalcount"=>1}
+Network Interfaces: eth0,lo
 }

Info: Computing checksum on file /tmp/machine_info.txt
Info: /Stage[main]/Machine_info/File[machine_info]: Filebucketed /tmp/machine_info.txt to puppet with sum fa2fe0281f428293643be43fb67bfa75
Notice: /Stage[main]/Machine_info/File[machine_info]/content: content changed '{md5}fa2fe0281f428293643be43fb67bfa75' to '{md5}b97f3a4a5a43e5bba317317cf5e207ac'
Notice: Applied catalog in 0.07 seconds
student-02-f5ce5344f3b1@linux-instance:~$ sudo puppet agent -v --test
Info: Using configured environment 'production'
Info: Retrieving pluginfacts
Info: Retrieving plugin
Info: Caching catalog for linux-instance.c.qwiklabs-gcp-02-396070fa7ff8.internal
Info: Applying configuration version '1597682117'
Notice: Applied catalog in 0.04 seconds
student-02-f5ce5344f3b1@linux-instance:~$ cat /tmp/machine_info.txt
Machine Information
-------------------
Disks:
Memory:
Processors: {"models"=>["Intel(R) Xeon(R) CPU @ 2.30GHz"], "count"=>1, "physicalcount"=>1}
Network Interfaces: eth0,lo
}
student-02-f5ce5344f3b1@linux-instance:~$ ^C
student-02-f5ce5344f3b1@linux-instance:~$ sudo puppet agent -v --test
Info: Using configured environment 'production'
Info: Retrieving pluginfacts
Info: Retrieving plugin
Info: Caching catalog for linux-instance.c.qwiklabs-gcp-02-396070fa7ff8.internal
Info: Applying configuration version '1597682466'
Notice: Applied catalog in 0.03 seconds
