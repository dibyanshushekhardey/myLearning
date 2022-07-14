student-04-60f43fd3bb77@ws01:~$ sudo systemctl status apache2
● apache2.service - The Apache HTTP Server
   Loaded: loaded (/lib/systemd/system/apache2.service; enabled; vendor preset:
  Drop-In: /lib/systemd/system/apache2.service.d
           └─apache2-systemd.conf
   Active: failed (Result: exit-code) since Fri 2020-08-21 14:51:00 UTC; 16s ago

Aug 21 14:51:00 ws01 systemd[1]: Starting The Apache HTTP Server...
Aug 21 14:51:00 ws01 apachectl[2923]: (98)Address already in use: AH00072: make_
Aug 21 14:51:00 ws01 apachectl[2923]: (98)Address already in use: AH00072: make_
Aug 21 14:51:00 ws01 apachectl[2923]: no listening sockets available, shutting d
Aug 21 14:51:00 ws01 apachectl[2923]: AH00015: Unable to open logs
Aug 21 14:51:00 ws01 apachectl[2923]: Action 'start' failed.
Aug 21 14:51:00 ws01 apachectl[2923]: The Apache error log may have more informa
Aug 21 14:51:00 ws01 systemd[1]: apache2.service: Control process exited, code=e
Aug 21 14:51:00 ws01 systemd[1]: apache2.service: Failed with result 'exit-code'
Aug 21 14:51:00 ws01 systemd[1]: Failed to start The Apache HTTP Server.
lines 1-16/16 (END)
student-04-60f43fd3bb77@ws01:~$ sudo systemctl restart apache2
Job for apache2.service failed because the control process exited with error cod                                                 e.
See "systemctl status apache2.service" and "journalctl -xe" for details.
student-04-60f43fd3bb77@ws01:~$ sudo systemctl status apache2
● apache2.service - The Apache HTTP Server
   Loaded: loaded (/lib/systemd/system/apache2.service; enabled; vendor preset:
  Drop-In: /lib/systemd/system/apache2.service.d
           └─apache2-systemd.conf
   Active: failed (Result: exit-code) since Fri 2020-08-21 14:51:56 UTC; 18s ago
  Process: 3485 ExecStart=/usr/sbin/apachectl start (code=exited, status=1/FAILU

Aug 21 14:51:56 ws01 systemd[1]: Starting The Apache HTTP Server...
Aug 21 14:51:56 ws01 apachectl[3485]: (98)Address already in use: AH00072: make_
Aug 21 14:51:56 ws01 apachectl[3485]: (98)Address already in use: AH00072: make_
Aug 21 14:51:56 ws01 apachectl[3485]: no listening sockets available, shutting d
Aug 21 14:51:56 ws01 apachectl[3485]: AH00015: Unable to open logs
Aug 21 14:51:56 ws01 apachectl[3485]: Action 'start' failed.
Aug 21 14:51:56 ws01 apachectl[3485]: The Apache error log may have more informa
Aug 21 14:51:56 ws01 systemd[1]: apache2.service: Control process exited, code=e
Aug 21 14:51:56 ws01 systemd[1]: apache2.service: Failed with result 'exit-code'
Aug 21 14:51:56 ws01 systemd[1]: Failed to start The Apache HTTP Server.
lines 1-17/17 (END)
● apache2.service - The Apache HTTP Server
   Loaded: loaded (/lib/systemd/system/apache2.service; enabled; vendor preset: enabled)
  Drop-In: /lib/systemd/system/apache2.service.d
           └─apache2-systemd.conf
   Active: failed (Result: exit-code) since Fri 2020-08-21 14:51:56 UTC; 18s ago
  Process: 3485 ExecStart=/usr/sbin/apachectl start (code=exited, status=1/FAILURE)

Aug 21 14:51:56 ws01 systemd[1]: Starting The Apache HTTP Server...
Aug 21 14:51:56 ws01 apachectl[3485]: (98)Address already in use: AH00072: make_sock: could not bind
Aug 21 14:51:56 ws01 apachectl[3485]: (98)Address already in use: AH00072: make_sock: could not bind
Aug 21 14:51:56 ws01 apachectl[3485]: no listening sockets available, shutting down
Aug 21 14:51:56 ws01 apachectl[3485]: AH00015: Unable to open logs
Aug 21 14:51:56 ws01 apachectl[3485]: Action 'start' failed.
Aug 21 14:51:56 ws01 apachectl[3485]: The Apache error log may have more information.
Aug 21 14:51:56 ws01 systemd[1]: apache2.service: Control process exited, code=exited status=1
Aug 21 14:51:56 ws01 systemd[1]: apache2.service: Failed with result 'exit-code'.
Aug 21 14:51:56 ws01 systemd[1]: Failed to start The Apache HTTP Server.
~
~
~
~
~
~
lines 1-17/17 (END)
student-04-60f43fd3bb77@ws01:~$ sudo netstat -nlp
Active Internet connections (only servers)
Proto Recv-Q Send-Q Local Address           Foreign Address         State       PID/Program name
tcp        0      0 0.0.0.0:80              0.0.0.0:*               LISTEN      1982/python3
tcp        0      0 127.0.0.53:53           0.0.0.0:*               LISTEN      630/systemd-resolve
tcp        0      0 0.0.0.0:22              0.0.0.0:*               LISTEN      1471/sshd
tcp6       0      0 :::22                   :::*                    LISTEN      1471/sshd
udp        0      0 127.0.0.53:53           0.0.0.0:*                           630/systemd-resolve
udp        0      0 10.128.0.2:68           0.0.0.0:*                           613/systemd-network
udp        0      0 127.0.0.1:323           0.0.0.0:*                           1793/chronyd
udp6       0      0 ::1:323                 :::*                                1793/chronyd
raw6       0      0 :::58                   :::*                    7           613/systemd-network
Active UNIX domain sockets (only servers)
Proto RefCnt Flags       Type       State         I-Node   PID/Program name     Path
unix  2      [ ACC ]     SEQPACKET  LISTENING     14027    1/init               /run/udev/control
unix  2      [ ACC ]     STREAM     LISTENING     14006    1/init               /run/systemd/private
unix  2      [ ACC ]     STREAM     LISTENING     14014    1/init               /run/lvm/lvmpolld.soc                            ket
unix  2      [ ACC ]     STREAM     LISTENING     14029    1/init               /run/lvm/lvmetad.sock                            et
unix  2      [ ACC ]     STREAM     LISTENING     18284    1/init               /var/lib/lxd/unix.soc                            ket
unix  2      [ ACC ]     STREAM     LISTENING     14035    1/init               /run/systemd/journal/                            stdout
unix  2      [ ACC ]     STREAM     LISTENING     18319    1/init               @ISCSIADM_ABSTRACT_NA                            MESPACE
unix  2      [ ACC ]     STREAM     LISTENING     18272    1/init               /run/acpid.socket
unix  2      [ ACC ]     STREAM     LISTENING     18278    1/init               /run/uuidd/request
unix  2      [ ACC ]     STREAM     LISTENING     18320    1/init               /var/run/dbus/system_                            bus_socket
unix  2      [ ACC ]     STREAM     LISTENING     18324    1/init               /run/snapd.socket
unix  2      [ ACC ]     STREAM     LISTENING     18326    1/init               /run/snapd-snap.socke                            t
student-04-60f43fd3bb77@ws01:~$ ps -ax | grep python3
  847 ?        Ssl    0:00 /usr/bin/python3 /usr/bin/networkd-dispatcher --run-startup-triggers
  997 ?        Ssl    0:00 /usr/bin/python3 /usr/share/unattended-upgrades/unattended-upgrade-shutdow                            n --wait-for-signal
 1108 ?        Ss     0:00 /usr/bin/python3 /usr/bin/google_network_daemon
 1120 ?        Ss     0:00 /usr/bin/python3 /usr/bin/google_clock_skew_daemon
 1121 ?        Ss     0:00 /usr/bin/python3 /usr/bin/google_accounts_daemon
 1982 ?        Ss     0:00 python3 /usr/local/bin/jimmytest.py
 3915 pts/0    S+     0:00 grep --color=auto python3
student-04-60f43fd3bb77@ws01:~$ cat /usr/local/bin/jimmytest.py
#!/usr/bin/env python3
'''    Testing program for socket
      Author: Jimmy
'''
import http.server
import socketserver
import http

port = 80
class Handler(http.server.SimpleHTTPRequestHandler):
    def do_GET(self):
        self.send_response(http.HTTPStatus.INTERNAL_SERVER_ERROR)
        self.end_headers()

        mystring = "500 Internal Server Error!\n"
        self.data = bytes(mystring, 'utf-8')
        self.wfile.write(self.data)

with socketserver.TCPServer(("", port), Handler) as httpd:
    httpd.serve_forever()

student-04-60f43fd3bb77@ws01:~$ sudo kill [process-id]
kill: failed to parse argument: '[process-id]'
student-04-60f43fd3bb77@ws01:~$ sudo kill [apache2]
kill: failed to parse argument: '[apache2]'
student-04-60f43fd3bb77@ws01:~$ sudo kill 35.225.124.217
kill: failed to parse argument: '35.225.124.217'
student-04-60f43fd3bb77@ws01:~$ sudo kill [35.225.124.217]
kill: failed to parse argument: '[35.225.124.217]'
student-04-60f43fd3bb77@ws01:~$ sudo kill [1982]
kill: failed to parse argument: '[1982]'
student-04-60f43fd3bb77@ws01:~$ sudo kill 1982
student-04-60f43fd3bb77@ws01:~$ ps -ax | grep python3
  847 ?        Ssl    0:00 /usr/bin/python3 /usr/bin/networkd-dispatcher --run-startup-triggers
  997 ?        Ssl    0:00 /usr/bin/python3 /usr/share/unattended-upgrades/unattended-upgrade-shutdown --wait-for-signal
 1108 ?        Ss     0:00 /usr/bin/python3 /usr/bin/google_network_daemon
 1120 ?        Ss     0:00 /usr/bin/python3 /usr/bin/google_clock_skew_daemon
 1121 ?        Ss     0:00 /usr/bin/python3 /usr/bin/google_accounts_daemon
 4977 ?        Ss     0:00 python3 /usr/local/bin/jimmytest.py
 5289 pts/0    S+     0:00 grep --color=auto python3
student-04-60f43fd3bb77@ws01:~$ sudo systemctl --type=service | grep jimmy
  jimmytest.service                    loaded active running Jimmy python test service                                           
student-04-60f43fd3bb77@ws01:~$ sudo systemctl stop jimmytest && sudo systemctl disable jimmytest
Removed /etc/systemd/system/default.target.wants/jimmytest.service.
student-04-60f43fd3bb77@ws01:~$ sudo natstat -nlp
sudo: natstat: command not found
student-04-60f43fd3bb77@ws01:~$ sudo netstat -nlp
Active Internet connections (only servers)
Proto Recv-Q Send-Q Local Address           Foreign Address         State       PID/Program name
tcp        0      0 127.0.0.53:53           0.0.0.0:*               LISTEN      630/systemd-resolve
tcp        0      0 0.0.0.0:22              0.0.0.0:*               LISTEN      1471/sshd
tcp6       0      0 :::22                   :::*                    LISTEN      1471/sshd
udp        0      0 127.0.0.53:53           0.0.0.0:*                           630/systemd-resolve
udp        0      0 10.128.0.2:68           0.0.0.0:*                           613/systemd-network
udp        0      0 127.0.0.1:323           0.0.0.0:*                           1793/chronyd
udp6       0      0 ::1:323                 :::*                                1793/chronyd
raw6       0      0 :::58                   :::*                    7           613/systemd-network
Active UNIX domain sockets (only servers)
Proto RefCnt Flags       Type       State         I-Node   PID/Program name     Path
unix  2      [ ACC ]     SEQPACKET  LISTENING     14027    1/init               /run/udev/control
unix  2      [ ACC ]     STREAM     LISTENING     14006    1/init               /run/systemd/private
unix  2      [ ACC ]     STREAM     LISTENING     14014    1/init               /run/lvm/lvmpolld.socket
unix  2      [ ACC ]     STREAM     LISTENING     14029    1/init               /run/lvm/lvmetad.socket
unix  2      [ ACC ]     STREAM     LISTENING     18284    1/init               /var/lib/lxd/unix.socket
unix  2      [ ACC ]     STREAM     LISTENING     14035    1/init               /run/systemd/journal/stdout
unix  2      [ ACC ]     STREAM     LISTENING     18319    1/init               @ISCSIADM_ABSTRACT_NAMESPACE
unix  2      [ ACC ]     STREAM     LISTENING     18272    1/init               /run/acpid.socket
unix  2      [ ACC ]     STREAM     LISTENING     18278    1/init               /run/uuidd/request
unix  2      [ ACC ]     STREAM     LISTENING     18320    1/init               /var/run/dbus/system_bus_socket
unix  2      [ ACC ]     STREAM     LISTENING     18324    1/init               /run/snapd.socket
unix  2      [ ACC ]     STREAM     LISTENING     18326    1/init               /run/snapd-snap.socket
student-04-60f43fd3bb77@ws01:~$ sudo systemctl start apache2
