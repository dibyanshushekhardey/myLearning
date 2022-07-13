t = int(input())

for _ in range(t):
    n, x = map(int, input().split())
    l = list(map(int, input().split()))
    total = sum(l)
    #print(total)
    y = n * x - total
    #print(y)
    if y < 0:
        print(0)
    else:
        print(y)
