# cook your dish here
for _ in range(int(input())):
    n=int(input())
    l=list(map(int, input().split()))
    l1=[]
    l2=[0]*n 
    
    for i in range(len(l)):
        count = 0
        for j in range(i+1, len(l)):
            if l[i] < l[j]:
                count += 1 
        l1.append(count)
    print(*l1)
    
