
student-00-9396abc3dff6@linux-instance:~$ cd ~/scripts
student-00-9396abc3dff6@linux-instance:~/scripts$ ls
greetings.py
student-00-9396abc3dff6@linux-instance:~/scripts$ cat greetings.py
#!/usr/bin/env python3

import random

def greeting():
  name = input("Hello!, What's your name?")
  number = random.randint(1,101)
  print("hello " + name + ", your random number is " +str( number))

greeting()
student-00-9396abc3dff6@linux-instance:~/scripts$ nano greetings.py
student-00-9396abc3dff6@linux-instance:~/scripts$ sudo chmod 777 greetings.py
student-00-9396abc3dff6@linux-instance:~/scripts$ ./greetings.py
Hello!, What's your name?Dibyanshu
hello Dibyanshu, your random number is 71
