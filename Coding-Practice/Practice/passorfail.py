t = int(input())

for _ in range(t):
    n, x, p = map(int, input().split())
    result = x * 3 + (n - x) * (-1)
    if result >= p:
        print("PASS")
    else:
        print("FAIL")