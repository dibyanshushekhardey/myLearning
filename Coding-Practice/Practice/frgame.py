t = int(input())

for _ in range(t):
    l = list(map(int, input().split()))
    if l[0] >= l[1]:
        l[1] += l[2]
    else:
        l[0] += l[2]

    if l[0] >= l[1]:
        l[1] += l[3]
    else:
        l[0] += l[3] 
    
    if l[0] >= l[1]:
        print("N")
    else:
        print("S")
