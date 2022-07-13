t = int(input())

for i in range(t):
    n = int(input())
    l1 = list(map(int, input().split()))
    l2 = list(map(int, input().split()))
    l3 = []
    res_list = [l1[i] * l2[i] for i in range(len(l1))]
    #print(res_list)
    a1 = res_list.index(max(res_list))
    a2 = l2.index(max(l2))

    if res_list.count(res_list[0]) == n:
        print(a2+1)
    elif l2.count(l2[0]) == n:
        print(l2[0])
    else:
        print(a1+1)
    