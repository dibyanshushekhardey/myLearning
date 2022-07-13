from math import gcd
t=int(input())
for _ in range(t):
    x,y = map(int,input().split())
    if x==1 or y==1:
     print(-1)
    else:
        G_xy = gcd(x,y)
        if G_xy != 1:
            print(0)
        else:
            print(1)