t = int(input())

for _ in range(t):
    n, m, k = map(int, input().split())
    if n <= m * k:
        print("Yes")
    else:
        print("No")