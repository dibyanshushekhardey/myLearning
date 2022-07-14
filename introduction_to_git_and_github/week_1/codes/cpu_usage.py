#!/usr/bin/env python3

import psutil

def check_cpu_usage(percent):
  usage = psutil.cpu_percent()
  #usage = psutil.cpu_percent(1)
  #this file is not modified as it will be used further to modify using patch command
  print("DEBUG: usage: {}".format(usage))
  return usage < percent

if not check_cpu_usage(75):
  print("ERROR! CPU is overloaded")
else:
  print("Everything is OK")
