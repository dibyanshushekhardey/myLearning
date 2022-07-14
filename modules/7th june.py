'''
import random
T = int(input("Enter the number of test cases: "))
TS = int(input("Enter TS: "))
JS = 0
turn = 0
if T <= 100 and TS <= 100:
    JS = random.randint(1, 100)
    print("JS is: ", JS)
    if TS % 2 == 0 and JS % 2 == 0:
        TS = TS/2
        JS = JS/2
        turn = turn + 1
    elif TS % 2 != 0 and JS % 2 == 0:
        print("Tie")
        quit()
    elif TS % 2 == 0 and JS % 2 != 0:
        print("Tom wins!")
        quit()
    elif TS % 2 != 0 and JS % 2 == 0:
        print("Jerry wins!")
        quit()
else:
    print("please refer to constraints")
'''

'''
n = int(input())
print(n)
'''

'''
n = int(input())

if n % 2 == 0:
    n = n + 1
else:
    n = n - 1

print(n)
'''
'''
N1 = int(input())
N2 = int(input())
N3 = 0
N4 = 0
if N1 > N2:
    N3 = N1 - N2
    print(N3)
else:
    N4 = N1 + N2
    print(N4)
'''
'''
T = int(input())
A, B = map(int, input().split())

if A > B:
    print(">")
if A < B:
    print("<")
if A == B:
    print("=")
'''

'''
T = int(input())
for i in range(T):
    N = int(input())
    if N == 2010 or N == 2015 or N == 2016 or N == 2017 or N == 2019:
        print("Hosted")
    else:
        print("NOT HOSTED")
'''