t = int(input())

for _ in range(t):
    t, y, x1, x2, x3 = map(int, input().split())
    if ((x1 + x2 +x3) <= (t - y)):
        print("YES")
    else:
        print("NO")