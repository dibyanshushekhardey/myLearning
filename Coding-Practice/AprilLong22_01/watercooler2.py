t = int(input())

for _ in range(t):
    x, y = map(int, input().split())
    if (y%x==0):
        p = y // x - 1
        if (p < 0):
            print(0)
        else:
            print(p)
    else:
        p = y // x
        print(p)