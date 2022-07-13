t = int(input())

for _ in range(t):
    a, b = map(int, input().split())
    if (a < b):
        m1 = b
        m2 = a + b
    else:
        m1 = a
        m2 = a + b
    print(m1, m2)