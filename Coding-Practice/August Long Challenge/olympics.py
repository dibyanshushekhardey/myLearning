t = int(input())
for i in range(t):
    g1, s1, b1, g2, s2, b2 = list(map(int, input().split()))
    total1 = g1 + s1 + b1
    total2 = g2 + s2 + b2
    if(total1 > total2):
        print(1)
    else:
        print(2)