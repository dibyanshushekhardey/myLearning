'''
counts = dict()
names = ['csev', 'cwen', 'csev', 'zqian', 'cwen']
for name in names:
    if name not in counts:
        counts[name] = 1
    else:
        counts[name] = counts[name] + 1
print(counts)
'''

'''
counts = dict()
names = ['csev', 'cwen', 'csev', 'zqian', 'cwen']
for name in names:
    counts[name] = counts.get(name, 0) + 1
print(counts)
'''


'''counts = dict()
print("Enter a line of text: ")
line = input('')

words = line.split()

print("Words:", words)

print("Counting...")
for word in words:
    counts[word] = counts.get(word, 0) + 1
print("Counts", counts)
'''

'''
name = input("Enter the files name:")
handle = open(name)

counts = dict()
for line in handle:
    words = line.split()
    for word in words:
        counts[word] = counts.get(word, 0) + 1

bigcount = None
bigword = None
for word, count in counts.items():
    if bigcount is None or count > bigcount:
        bigword = word
        bigcount = count

print(bigword, bigcount)
'''

# Assignment 9.4
'''
handle = input("Enter the file name:")
name = open(handle)

emails = dict()
a = list()
for line in name:
    wds = line.split()
    if len(wds) < 3:
        continue
    if wds[0] != 'From':
        continue
    else:
        email = wds[1]
        emails[email] = emails.get(email, 0) + 1

largest= None
key = None
for key in emails:
    if largest is None or emails[key] > largest:
        largest = emails[key]
        sender = key

print(sender, largest)
'''
'''
hand = open('romeo.txt')

counts = dict()
for line in hand:
    words = line.split()
    for word in words:
        counts[word] = counts.get(word, 0) + 1

lst = list()
for k, v in counts.items():
    newval = (v, k)
    lst.append(newval)

lst = sorted(lst, reverse = True)

for v, k in lst[:10]:
    print(k, v)
'''


'''
name = open('mbox-short.txt')

time = list()
hours = dict()
for line in name:
    wds = line.split()
    if len(wds) < 3:
        continue
    if wds[0] != 'From':
        continue
    else:
        time = wds[5]
        time = time.split(':')

        hour = time[0]
        hours[hour] = hours.get(hour, 0) + 1

lst = list()
for k, v in hours.items():
    newlist = (k, v)
    lst.append(newlist)

lst = sorted(lst)
for k, v in lst:
    print(k, v)
'''

