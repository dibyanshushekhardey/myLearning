t = int(input())

for _ in range(t):
    n, a, b = map(int, input().split())
    l = list(map(int, input().split()))
    total1 = 0
    total2 = 0
    for i in range(len(l)):
        if l[i] == a:
            total1 += 1
    
    for i in range(len(l)):
        if l[i] == b:
            total2 += 1
    
    num = total1 * total2 
    den = n ** 2
    prob = num / den
    print(prob)
    