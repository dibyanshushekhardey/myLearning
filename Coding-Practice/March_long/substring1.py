import re
 
t = int(input())

while t != 0:
    t -= 1
    a = input()
    n = len(a)
    total = 0
    result = 0
    for i in range(0, n):
            if a[i] != a[0] and a[i] != a[n - 1]:
                total += 1
            else:
                total = 0
            result = max(result, total)
        
    if result == 0:
        print(-1, end = '')
        print("\n", end = '')
    else:
        print(result, end = '')
        print("\n", end = '')
