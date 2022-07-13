from cmath import sqrt
from math import floor


import math
t = int(input())

for _ in range(t):
    n = int(input())
    l = list(map(int, input().split()))
    sum = 0
    for i in range(len(l)):
        sum += l[i]
    
    x = (-1+ math.sqrt(1+8*sum))//2
    x = math.floor(x)
    print(x)