t = int(input())
for i in range(0, t):
    n = int(input())
    sum = 0
    #c = 1
    #b = c
    #a = c
    for c in range(1, n + 1):
        for b in range(c, n+1, c):
            for a in range(c, n+1, b):
                if(a % b == c and b % c == 0):
                    sum += 1
    print(sum) 