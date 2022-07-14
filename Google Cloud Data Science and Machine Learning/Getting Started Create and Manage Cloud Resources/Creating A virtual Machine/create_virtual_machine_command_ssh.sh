Debian GNU/Linux comes with ABSOLUTELY NO WARRANTY, to the extent
permitted by applicable law.
Creating directory '/home/student-00-00000'.
student-00-00000@gcelab:~$ sudo su -
root@gcelab:~# apt-get update
Get:1 http://security.debian.org stretch/updates InRelease [53.0 kB]
Ign:2 http://deb.debian.org/debian stretch InRelease                            
Get:3 http://deb.debian.org/debian stretch-updates InRelease [93.6 kB]          
Get:4 http://packages.cloud.google.com/apt cloud-sdk-stretch InRelease [6,389 B]            
Get:5 http://deb.debian.org/debian stretch-backports InRelease [91.8 kB]                          
Hit:6 http://deb.debian.org/debian stretch Release                                   
Get:7 http://packages.cloud.google.com/apt google-compute-engine-stretch-stable InRelease [3,843 B]
Get:8 http://packages.cloud.google.com/apt google-cloud-packages-archive-keyring-stretch InRelease [3,876 B]
Get:9 http://security.debian.org stretch/updates/main Sources [256 kB]
Get:10 http://security.debian.org stretch/updates/main amd64 Packages [582 kB]
Get:11 http://security.debian.org stretch/updates/main Translation-en [260 kB]     
Get:12 http://packages.cloud.google.com/apt cloud-sdk-stretch/main amd64 Packages [134 kB]
Get:13 http://deb.debian.org/debian stretch-backports/main Sources.diff/Index [27.8 kB]
Get:14 http://deb.debian.org/debian stretch-backports/main amd64 Packages.diff/Index [27.8 kB]
Get:15 http://deb.debian.org/debian stretch-backports/main Sources 2020-09-11-1404.17.pdiff [242 B]
Get:15 http://deb.debian.org/debian stretch-backports/main Sources 2020-09-11-1404.17.pdiff [242 B]
Get:16 http://deb.debian.org/debian stretch-backports/main amd64 Packages 2020-09-11-1404.17.pdiff [211 B]
Get:16 http://deb.debian.org/debian stretch-backports/main amd64 Packages 2020-09-11-1404.17.pdiff [211 B]
Get:18 http://packages.cloud.google.com/apt google-cloud-packages-archive-keyring-stretch/main amd64 Packages [395 
B]
Fetched 1,542 kB in 0s (1,600 kB/s)
Reading package lists... Done
root@gcelab:~# apt-get install nginx -y
Reading package lists... Done
Building dependency tree       
Reading state information... Done
The following additional packages will be installed:
  fontconfig-config fonts-dejavu-core geoip-database libfontconfig1 libgd3 libgeoip1 libicu57 libjbig0
  libjpeg62-turbo libnginx-mod-http-auth-pam libnginx-mod-http-dav-ext libnginx-mod-http-echo
  libnginx-mod-http-geoip libnginx-mod-http-image-filter libnginx-mod-http-subs-filter
  libnginx-mod-http-upstream-fair libnginx-mod-http-xslt-filter libnginx-mod-mail libnginx-mod-stream libtiff5
  libwebp6 libx11-6 libx11-data libxau6 libxcb1 libxdmcp6 libxml2 libxpm4 libxslt1.1 nginx-common nginx-full
  sgml-base xml-core
Suggested packages:
  libgd-tools geoip-bin fcgiwrap nginx-doc ssl-cert sgml-base-doc debhelper
The following NEW packages will be installed:
  fontconfig-config fonts-dejavu-core geoip-database libfontconfig1 libgd3 libgeoip1 libicu57 libjbig0
  libjpeg62-turbo libnginx-mod-http-auth-pam libnginx-mod-http-dav-ext libnginx-mod-http-echo
  libnginx-mod-http-geoip libnginx-mod-http-image-filter libnginx-mod-http-subs-filter
