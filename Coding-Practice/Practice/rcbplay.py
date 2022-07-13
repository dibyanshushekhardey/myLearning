t = int(input())

for _ in range(t):
    x, y, z = map(int, input().split())
    if x + (z * 2) >= y:
        print("Yes")
    else:
        print("No")