$ mkdir week1
~$ cd week1
~/week1$ nano rearrange1.py
~/week1$ nano rearrange2.py
~/week1$ chmod +x rearrange1.py
~/week1$ chmod +x rearrange2.py
~/week1$ cat rearrange1.py
#!/usr/bin/env python3

import re

def rearrange_name(name):
  result = re.search(r"^([\w .]*),([\w .]*$", name)
  if result == None:
    return result
  return "{} {}".format(result[2], result[1])

~/week1$ cat rearrange2.py
#!/usr/bin/env python3

import re

def rearrange_name(name):
  result = re.search(r"^([\w .-]*), ([\w .-]*)$", name)
  if result == None:
    return result
  return "{} {}".format(result[2], result[1])

~/week1$ diff rearrange1.py rearrange2.py
6c6
<   result = re.search(r"^([\w .]*),([\w .]*$", name)
---
>   result = re.search(r"^([\w .-]*), ([\w .-]*)$", name)
~/week1$ cat rearrange2.py
#!/usr/bin/env python3

import re

def rearrange_name(name):
  result = re.search(r"^([\w .-]*), ([\w .-]*)$", name)
  if result == None:
    return result
  return "{} {}".format(result[2], result[1])

~/week1$ diff -u rearrange1.py rearrange2.py
--- rearrange1.py       2020-07-19 13:08:50.394976951 +0000
+++ rearrange2.py       2020-07-19 13:11:27.366236856 +0000
@@ -3,7 +3,7 @@
 import re
 
 def rearrange_name(name):
-  result = re.search(r"^([\w .]*),([\w .]*$", name)
+  result = re.search(r"^([\w .-]*), ([\w .-]*)$", name)
   if result == None:
     return result
   return "{} {}".format(result[2], result[1])
~$ cd week1
~/week1$ wdiff rearrange1.py rearrange2.py
#!/usr/bin/env python3

import re

def rearrange_name(name):
  result = re.search(r"^([\w [-.]*),([\w .]*$",-] {+.-]*), ([\w .-]*)$",+} name)
  if result == None:
    return result
  return "{} {}".format(result[2], result[1])

~/week1$ cat rearrange2.py
#!/usr/bin/env python3

import re

def rearrange_name(name):
  result = re.search(r"^([\w .-]*), ([\w .-]*)$", name)
  if result == None:
    return result
  return "{} {}".format(result[2], result[1])

~/week1$ nano cpu_usage.py
~/week1$ chmod +x cpu_usage.py
~/week1$ cat cpu_usage.py
#!/usr/bin/env python3

import psutil

def check_cpu_usage(percent):
  usage = psutil.cpu_percent()
  return usage < percent

if not check_cpu_usage(75):
  print("ERROR! CPU is overloaded")
else:
  print("Everything is OK")

~/week1$ nano cpu_usage.diff
~/week1$ cat cpu_usage.diff
#!/usr/bin/env python3

import psutil

def check_cpu_usage(percent):
  usage = psutil.cpu_percent()
  usage = psutil.cpu_percent(1)
  print("DEBUG: usage: {}".format(usage))
  return usage < percent

if not check_cpu_usage(75):
  print("ERROR! CPU is overloaded")
else:
  print("Everything is OK")
le
~/
~/week1$ nano cpu_usage_fixed.py
~/week1$ diff -u cpu_usage.py cpu_usage_fixed.py > cpu_usagefixed.patch
~/week1$ cat cpu_usagefixed.patch
--- cpu_usage.py--help' 2020-07-19 14:11:00.227995438 +0000fixed.patch
+++ cpu_usage_fixed.pysa2020-07-19 14:25:47.908151502 +0000ixed.patch 
@@ -4,10 +4,11 @@
 
 def check_cpu_usage(percent):
   usage = psutil.cpu_percent()
+  usage = psutil.cpu_percent(1)
+  print("DEBUG: usage: {}".format(usage))
   return usage < percent
 
 if not check_cpu_usage(75):
   print("ERROR! CPU is overloaded")
 else:
   print("Everything is OK")
~/week1$ patch cpu_usage.py < cpu_usagefixed.patch
patching file cpu_usage.py
~/week1$ cat cpu_usage.py
#!/usr/bin/env python3

import psutil

def check_cpu_usage(percent):
  usage = psutil.cpu_percent()
  usage = psutil.cpu_percent(1)
  print("DEBUG: usage: {}".format(usage))
  return usage < percent

if not check_cpu_usage(75):
  print("ERROR! CPU is overloaded")
else:
  print("Everything is OK")
~/week1$ vimdiff rearrange1.py rearrange2.py
2 files to edit
