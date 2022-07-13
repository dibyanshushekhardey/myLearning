t = int(input())

for _ in range(t):
    x1, x2, x3 = map(int, input().split())
    if x1 == 7 or x2 == 7 or x3 == 7:
        print("YES")
    else:
        print("NO")