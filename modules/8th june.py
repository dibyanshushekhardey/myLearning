'''
-hand = open("mbox-short.txt")
for line in hand:
    line = line.rstrip()
    if line.find("From:") >= 0:
        print(line)
'''

'''
import re

hand = open("mbox-short.txt")

for line in hand:
    line = line.rstrip()
    if re.search("From:", line):
        print(line)
'''

'''
hand = open("mbox-short.txt")
for line in hand:
    line = line.rstrip()
    if line.startswith("From:"):
        print(line)
'''

'''
import re

hand = open("mbox-short.txt")

for line in hand:
    line = line.rstrip()
    if re.search("^From:", line):
        print(line)
'''
'''
import re

hand = open("mbox-short.txt")

for line in hand:
    line = line.rstrip()
    if re.search("^ X-\S+:", line):
        print(line)
'''
'''
import re

hand = open("mbox-short.txt")

for line in hand:
    line = line.rstrip()
    if re.search("^From:", line):
        if re.findall("^From (\S+@\S+)", line):
            print(line)
'''

'''
import re

hand = open("regex_sum_631371.txt")
sum = 0
r = list()
for line in hand:
    line = line.rstrip()
    # finding all numbers in each line of the file 
    y = re.findall('[0-9]+', line)
    r.append(y)


for i in r:
    for j in i:
        sum = sum + int(j)
print(sum)
'''
'''
t = int(input())
l = [6, 2, 5, 5, 4, 5, 6, 3, 7, 6]
sum = 0
for i in range(t):
    a, b = map(int, input().split())
    s = a + b
    t = str(s)
    for j in t:
        j = int(j)
        sum = sum + l[j]
    print(sum)
'''

