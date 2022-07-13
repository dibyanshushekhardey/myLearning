t = int(input())

for _ in range(t):
    x, y, z = map(int, input().split())
    if x + y <= z:
        print("Yes")
    else:
        print("No")