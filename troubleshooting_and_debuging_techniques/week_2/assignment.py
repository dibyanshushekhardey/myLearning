#!/usr/bin/env python3
import os
import subprocess
from multiprocessing import Pool

src = os.path.expanduser("~/data/prod/")
dest = os.path.expanduser("~/data/prod_backup/")
#subprocess.call(["rsync", "-arq", src, dest])
def main(src):
  print("Transform from {} to {}".format(src, dest))
  subprocess.call(["rsync", "-arq", src, dest])

if __name__ == "__main__":
  listoffiles = os.listdir(src)
  allfiles = list()

  for entry in listoffiles:
    fullpath = os.path.join(src)
    if os.path.isdir(fullpath):
      allfiles.append(fullpath)

  pool = Pool(len(allfiles))
  pool.map(main, allfiles)

