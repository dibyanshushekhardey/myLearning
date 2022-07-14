 echo $PATH
/bin:/usr/bin
student-00-b00c69e61cfc@puppet:~$ ls /
bin   dev  home        initrd.img.old  lib64       media  opt   root  sbin  srv  tmp  var      vmlinuz.old
boot  etc  initrd.img  lib             lost+found  mnt    proc  run   snap  sys  usr  vmlinuz
student-00-b00c69e61cfc@puppet:~$ export PATH=/bin:/usr/bin
student-00-b00c69e61cfc@puppet:~$ ls /
bin   dev  home        initrd.img.old  lib64       media  opt   root  sbin  srv  tmp  var      vmlinuz.old
boot  etc  initrd.img  lib             lost+found  mnt    proc  run   snap  sys  usr  vmlinuz
student-00-b00c69e61cfc@puppet:~$ cd /etc/puppet/code/environments/production/modules/profile/manifests
student-00-b00c69e61cfc@puppet:/etc/puppet/code/environments/production/modules/profile/manifests$ cat init.pp
class profile {
        file { '/etc/profile.d/append-path.sh':
                owner   => 'root',
                group   => 'root',
                mode    => '0644',
                content => "PATH=\$PATH:/java/bin\n",
        }
}
student-00-b00c69e61cfc@puppet:/etc/puppet/code/environments/production/modules/profile/manifests$ sudo nano init.ppstudent-00-b00c69e61cfc@puppet:/etc/puppet/code/environments/production/modules/profile/manifests$ sudo puppet agent -v --test
Info: Using configured environment 'production'
Info: Retrieving pluginfacts
Info: Retrieving plugin
Info: Retrieving locales
Info: Caching catalog for puppet.c.qwiklabs-gcp-00-3a520f77162a.internal
Info: Applying configuration version '1596989538'
Notice: Applied catalog in 0.02 seconds
student-00-b00c69e61cfc@puppet:/etc/puppet/code/environments/production/modules/profile/manifests$ echo $PATH
/bin:/usr/bin
student-00-b00c69e61cfc@puppet:/etc/puppet/code/environments/production/modules/profile/manifests$
