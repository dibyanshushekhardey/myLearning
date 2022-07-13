t = int(input())

for _ in range(t):
    m, h = map(int, input().split())
    c = m / h**2
    if c <= 18:
        print(1)
    elif c >= 19 and c <= 24:
        print(2)
    elif c >= 25 and c <= 29:
        print(3)
    else:
        print(4)