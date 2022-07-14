# fruit banana example
'''
fruit = 'banana'
count = 0
for letter in fruit:
    if letter == 'a':
        count = count + 1
        print(count)
'''

# slicing a string
'''
s = 'monty python'
print(s[:])
'''
# string addition
'''a = 'hello'
c = ' '
b = a + c + 'there'
print(b)
'''
# lower case example
'''greet = 'Hello Bob'
zap = greet.lower()
print(zap)
print(greet)
print('Hi There'.lower())
'''
# assignment 7.1
'''
text = "X-DSPAM-Confidence:    0.8475"
x = text.strip()
pos = x.find((':'))
print(float(x[19:]))
'''

'''
greet = '    hello bob'
x = greet.lstrip()
y = greet.rstrip()
z = greet.strip()
print(x, y, z)
'''

'''
x = 'From marquard@uct.ac.za'
pos = x.find('@')
p1 = x.find('.')
print(x[pos + 1:p1])
'''

'''
for letter in 'banana' :
    print(letter)
'''

'''
fname = input("Enter file name: ")
fh = open(fname)
print(fh)
'''

'''
xfile = open('words.txt')
for i in xfile:
    i = i.upper()
    i = i.strip()
    print(i)
'''
# assignment 7.2
'''
a = 0
count = 0
fname = input("Enter file name: ")
fh = open(fname)
for line in fh:
    if line.startswith("X-DSPAM-Confidence:"):
        pos = line.find("0")
        a += float(line[pos:pos + 6])
        count +=1
        average = a / count

    if not line.startswith("X-DSPAM-Confidence:"):
        continue

print("Average spam confidence: ", average)
'''
