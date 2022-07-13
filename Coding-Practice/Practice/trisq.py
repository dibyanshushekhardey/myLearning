t = int(input())

for _ in range(t):
    n = int(input())
    n = n - 2
    n = n // 2
    print(int(n*(n+1)/2))