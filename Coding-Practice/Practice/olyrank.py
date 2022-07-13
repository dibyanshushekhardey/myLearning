t = int(input())

for _ in range(t):
    g1, s1, b1, g2, s2, b2 = map(int, input().split())
    a1 = g1+b1+s1
    a2 = g2+b2+s2
    if a1 > a2:
        print(1)
    elif a1 < a2:
        print(2)