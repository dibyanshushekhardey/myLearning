t = int(input())

for _ in range(t):
    n, x = map(int, input().split())
    l1 = list(map(int, input().split()))
    l2 = []
    for i in range(len(l1)):
        if l1[i] < x:
            l2.append(i+1)
    if len(l2) == 0:
        print(0)
    else:
        print(max(l2))
    #print(l2)