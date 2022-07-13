t = int(input())

for _ in range(t):
    x, y = map(int, input().split())
    if x < y*2:
        print(0)
    else:
        print(x // (y * 2))