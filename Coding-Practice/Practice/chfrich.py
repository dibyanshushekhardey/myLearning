t = int(input())

for _ in range(t):
    x1, x2, y1 = map(int, input().split())
    res = x2 - x1
    if res % y1 == 0:
        print(res // y1)