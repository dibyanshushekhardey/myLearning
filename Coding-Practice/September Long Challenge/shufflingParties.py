t = int(input())

for _ in range(t):
    n = int(input())
    l = list(map(int, input().split()))
    total1 = 0
    total2 = 0
    for i in l:
        if(i%2 == 0):
            total2 +=1
        else:
            total1 += 1
    total = min(total1, n//2) + min(total2, (n+1)//2)
    print(total)
