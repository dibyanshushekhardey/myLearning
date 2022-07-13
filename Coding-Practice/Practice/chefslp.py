t = int(input())

for _ in range(t):
    n, l, x = map(int, input().split())
    if n >= 2*l:
        print(l * x)
    else:
        print((n-l) * x)