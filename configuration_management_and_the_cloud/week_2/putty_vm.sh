student-02-f5ce5344f3b1@puppet:~$ cd /etc/puppet/code/environments/production/modules/packages
-bash: cd: /etc/puppet/code/environments/production/modules/packages: No such file or directory
student-02-f5ce5344f3b1@puppet:~$ cd /etc/puppet/code/environments/production/modules/packages
student-02-f5ce5344f3b1@puppet:/etc/puppet/code/environments/production/modules/packages$ cat manifests/init.pp
class packages {

    package { 'python-requests':
        ensure => installed,
    }


}
student-02-f5ce5344f3b1@puppet:/etc/puppet/code/environments/production/modules/packages$ sudo chmod 646 manifests/init.pp
student-02-f5ce5344f3b1@puppet:/etc/puppet/code/environments/production/modules/packages$ nano manifests/init.pp
student-02-f5ce5344f3b1@puppet:/etc/puppet/code/environments/production/modules/packages$ cat manifests/init.pp
class packages {

    package { 'python-requests':
        ensure => installed,
    }
    if $facts[os][family] == "Debian" {
      package { 'golang':
        ensure => installed,
      }
    }
}
student-02-f5ce5344f3b1@puppet:/etc/puppet/code/environments/production/modules/packages$ nano manifests/init.pp
student-02-f5ce5344f3b1@puppet:/etc/puppet/code/environments/production/modules/packages$ cat manifests/init.pp
class packages {

    package { 'python-requests':
        ensure => installed,
    }
    if $facts[os][family] == "Debian" {
      package { 'golang':
        ensure => installed,
      }
    }
    if $facts[os][family] == "RedHat" {
      package { 'nodejs':
        ensure => installed,
      }
    }
}
student-02-f5ce5344f3b1@puppet:/etc/puppet/code/environments/production/modules/packages$ gcloud compute instances describe linux-instance --zone=us-central1-a --format='get(networkInterfaces[0].accessConfigs[0].natIP)'
34.67.172.164
student-02-f5ce5344f3b1@puppet:/etc/puppet/code/environments/production/modules/packages$ sudo puppet agent -v --test
Info: Using configured environment 'production'
Info: Retrieving pluginfacts
Info: Retrieving plugin
Info: Retrieving locales
Info: Caching catalog for puppet.c.qwiklabs-gcp-02-396070fa7ff8.internal
Info: Applying configuration version '1597680966'


^CNotice: Caught INT; exiting
student-02-f5ce5344f3b1@puppet:/etc/puppet/code/environments/production/modules/packages$ sudo puppet agent -v --test
Info: Using configured environment 'production'
Info: Retrieving pluginfacts
Info: Retrieving plugin
Info: Retrieving locales
Info: Caching catalog for puppet.c.qwiklabs-gcp-02-396070fa7ff8.internal
Info: Applying configuration version '1597681063'
Error: Execution of '/usr/bin/apt-get -q -y -o DPkg::Options::=--force-confold install golang' returned 100: E: Could not get lock /var/lib/dpkg/lock-frontend - open (11: Resource temporarily unavailable)
E: Unable to acquire the dpkg frontend lock (/var/lib/dpkg/lock-frontend), is another process using it?
Error: /Stage[main]/Packages/Package[golang]/ensure: change from 'purged' to 'present' failed: Execution of '/usr/bin/apt-get -q -y -o DPkg::Options::=--force-confold install golang' returned 100: E: Could not get lock /var/lib/dpkg/lock-frontend - open (11: Resource temporarily unavailable)
E: Unable to acquire the dpkg frontend lock (/var/lib/dpkg/lock-frontend), is another process using it?
Notice: /Stage[main]/Machine_info/File[/tmp/machine_info.txt]/content:
--- /tmp/machine_info.txt       2020-08-17 16:07:13.345814386 +0000
+++ /tmp/puppet-file20200817-4725-4ns843        2020-08-17 16:17:44.090124509 +0000
@@ -1,6 +1,6 @@
 Machine Information
 -------------------
 Disks: {"sda"=>{"model"=>"PersistentDisk", "size"=>"10.00 GiB", "size_bytes"=>10737418240, "vendor"=>"Google"}}
-Memory: {"system"=>{"available"=>"3.28 GiB", "available_bytes"=>3527041024, "capacity"=>"8.69%", "total"=>"3.60 GiB", "total_bytes"=>3862581248, "used"=>"320.00 MiB", "used_bytes"=>335540224}}
+Memory: {"system"=>{"available"=>"3.26 GiB", "available_bytes"=>3503165440, "capacity"=>"9.31%", "total"=>"3.60 GiB", "total_bytes"=>3862581248, "used"=>"342.77 MiB", "used_bytes"=>359415808}}
 Processors: {"count"=>1, "isa"=>"x86_64", "models"=>["Intel(R) Xeon(R) CPU @ 2.30GHz"], "physicalcount"=>1}
 }

Info: Computing checksum on file /tmp/machine_info.txt
Info: /Stage[main]/Machine_info/File[/tmp/machine_info.txt]: Filebucketed /tmp/machine_info.txt to puppet with sum f6839ae08578adbcec9803cd72e22d74
Notice: /Stage[main]/Machine_info/File[/tmp/machine_info.txt]/content: content changed '{md5}f6839ae08578adbcec9803cd72e22d74' to '{md5}28b1f40f3cb4883211b2bc8b16cc3180'
Info: Stage[main]: Unscheduling all events on Stage[main]
Notice: Applied catalog in 0.15 seconds
student-02-f5ce5344f3b1@puppet:/etc/puppet/code/environments/production/modules/packages$ cat manifests/init.pp
class packages {

    package { 'python-requests':
        ensure => installed,
    }
    if $facts[os][family] == "Debian" {
      package { 'golang':
        ensure => installed,
      }
    }
    if $facts[os][family] == "RedHat" {
      package { 'nodejs':
        ensure => installed,
      }
    }
}
student-02-f5ce5344f3b1@puppet:/etc/puppet/code/environments/production/modules/packages$ gcloud compute instances describe linux-instance --zone=us-central1-a --format='get(networkInterfaces[0].accessConfigs[0].natIP)'
34.67.172.164
student-02-f5ce5344f3b1@puppet:/etc/puppet/code/environments/production/modules/packages$ ^C
student-02-f5ce5344f3b1@puppet:/etc/puppet/code/environments/production/modules/packages$ ^C
student-02-f5ce5344f3b1@puppet:/etc/puppet/code/environments/production/modules/packages$ cd /etc/puppet/code/environments/production/modules/machine_info
student-02-f5ce5344f3b1@puppet:/etc/puppet/code/environments/production/modules/machine_info$ cat manifests/init.pp
class machine_info {

    file { '/tmp/machine_info.txt':
        content => template('machine_info/info.erb'),
    }


}
student-02-f5ce5344f3b1@puppet:/etc/puppet/code/environments/production/modules/machine_info$ sudo chmod 646 manifests/init.pp
student-02-f5ce5344f3b1@puppet:/etc/puppet/code/environments/production/modules/machine_info$ nano manifests/init.pp
student-02-f5ce5344f3b1@puppet:/etc/puppet/code/environments/production/modules/machine_info$ cat manifests/init.pp
class machine_info {
    if $facts[kernel] == "windows"{
        $info_path = "C:\Windows\Temp\Machine_Info.txt"
    } else {
        $info_path = "/tmp/machine_info.txt"
    }
    file { 'machine_info':
        path => $info_path,
        content => template('machine_info/info.erb'),
    }
}
student-02-f5ce5344f3b1@puppet:/etc/puppet/code/environments/production/modules/machine_info$ cat templates/info.erb
Machine Information
-------------------
Disks: <%= @disks %>
Memory: <%= @memory %>
Processors: <%= @processors %>
}
student-02-f5ce5344f3b1@puppet:/etc/puppet/code/environments/production/modules/machine_info$ sudo chmod 646 templates/info.erb
student-02-f5ce5344f3b1@puppet:/etc/puppet/code/environments/production/modules/machine_info$ nano templates/info.erb
student-02-f5ce5344f3b1@puppet:/etc/puppet/code/environments/production/modules/machine_info$ cat templates/info.erb
Machine Information
-------------------
Disks: <%= @disks %>
Memory: <%= @memory %>
Processors: <%= @processors %>
Network Interfaces: <%= @interfaces %>
}
student-02-f5ce5344f3b1@puppet:/etc/puppet/code/environments/production/modules/machine_info$ sudo mkdir -p /etc/puppet/code/environments/production/modules/reboot/manifests
student-02-f5ce5344f3b1@puppet:/etc/puppet/code/environments/production/modules/machine_info$ cd /etc/puppet/code/environments/production/modules/reboot/manifests
student-02-f5ce5344f3b1@puppet:/etc/puppet/code/environments/production/modules/reboot/manifests$ sudo touch init.pp
student-02-f5ce5344f3b1@puppet:/etc/puppet/code/environments/production/modules/reboot/manifests$ sudo nano init.pp
student-02-f5ce5344f3b1@puppet:/etc/puppet/code/environments/production/modules/reboot/manifests$ sudo nano /etc/puppet/code/environments/production/manifests/site.pp
student-02-f5ce5344f3b1@puppet:/etc/puppet/code/environments/production/modules/reboot/manifests$ class packages {

Command 'class' not found, did you mean:

  command 'cass' from snap cass (0.17.2)
  command 'clash' from snap clash (1.2.4)
  command 'iclass' from deb ivtools-bin
  command 'clasp' from deb clasp

See 'snap info <snapname>' for additional versions.

student-02-f5ce5344f3b1@puppet:/etc/puppet/code/environments/production/modules/reboot/manifests$
student-02-f5ce5344f3b1@puppet:/etc/puppet/code/environments/production/modules/reboot/manifests$     package { 'python-requests':

Command 'package' not found, but can be installed with:

sudo apt install mailagent

student-02-f5ce5344f3b1@puppet:/etc/puppet/code/environments/production/modules/reboot/manifests$         ensure => installed,
-bash: installed,: Permission denied
student-02-f5ce5344f3b1@puppet:/etc/puppet/code/environments/production/modules/reboot/manifests$     }
-bash: syntax error near unexpected token `}'
student-02-f5ce5344f3b1@puppet:/etc/puppet/code/environments/production/modules/reboot/manifests$
student-02-f5ce5344f3b1@puppet:/etc/puppet/code/environments/production/modules/reboot/manifests$
student-02-f5ce5344f3b1@puppet:/etc/puppet/code/environments/production/modules/reboot/manifests$ }
-bash: syntax error near unexpected token `}'
student-02-f5ce5344f3b1@puppet:/etc/puppet/code/environments/production/modules/reboot/manifests$
