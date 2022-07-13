t = int(input())

for _ in range(t):
    n = int(input())
    l=list(map(int, input().split()))
    total = 0
    pos = 0
    neg = 0
    # for i in range(len(l)):
    #     for j in range(i+1, len(l)):
    #         if (l[i] > 0  and l[j] > 0) or (l[i] < 0  and l[j] < 0):
    #             total += 1
    #         else:
    #             total += 0
    # print(total)
    for i in range(0, len(l)):
        if l[i] < 0:
            total += neg
            neg += 1
        elif l[i] > 0:
            total += pos
            pos += 1
    print(total)