t = int(input())

for _ in range(t):
    n, x = map(int, input().split())
    q = 0
    w = 0
    if(x % 3 == 0):
        q = x // 3
    elif (x % 3 == 1):
        q = q + (x//3) + 1
        w += 2
    elif( x % 3 == 2):
        q = q + (x//3) + 1
        w += 1

    if q + w <= n:
        print("YES")
        print(str(q) + " " + str(w) + " " + str(n-(q+w)))
    else:
        print("NO")