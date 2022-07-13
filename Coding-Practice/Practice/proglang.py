t = int(input())

for _ in range(t):
    l=list(map(int, input().split()))
    l1=[l[2], l[3]]
    l2=[l[4], l[5]]
    if ((l[0] in l1) and (l[1] in l1)):
        print(1) 
    elif ((l[0] in l2) and (l[1] in l2)):
        print(2)
    else:
        print(0)