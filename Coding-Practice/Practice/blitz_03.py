t = int(input())

for _ in range(t):
    n, a, b = map(int, input().split())
    y = 2 * (180 + n)
    print(y - a - b)