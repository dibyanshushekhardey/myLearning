'''
total = 0
count = 0
while True:
    inp = input('Enter a number: ')
    if inp == 'done':
        break
    value = float(inp)
    total = total + value
    count = count + 1

average = total/count
print("Average: ", average)
'''
'''
numlist = list()

while True:
    inp = input('Enter a number: ')
    if inp == 'done':
        break
    value = float(inp)
    numlist.append(value)

average = sum(numlist)/len(numlist)
print("Average: ", average)
'''
'''
fname = input("Enter file name: ")
fh = open(fname)
lst = list()

for line in fh:
    line.split()
    for j in line.split():
        if j not in lst:
            lst.append(j)
lst.sort()
print(lst)
'''

'''
fname = input("Enter file name: ")
fh = open(fname)
count = 0
for line in fh:
    line = line.rstrip()
    wds = line.split()
    if line == '':
        continue
    if len(wds) < 3:
        continue
    if wds[0] != 'From':
        continue
    else:
        print(wds[1])
        count = count + 1
print("There were " + str(count) + " lines in the file with From as the first word")
'''


