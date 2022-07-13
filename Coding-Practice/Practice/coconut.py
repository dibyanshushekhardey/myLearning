t = int(input())

for _ in range(t):
    x1, x2, y1, y2 = map(int, input().split())
    print(int(((y1 / x1) + (y2 / x2))))
    