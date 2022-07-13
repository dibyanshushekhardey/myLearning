def cook(l):
    t=l
    t=sorted(t)
    if t==l:
        return "YES"
    else:
        for i in range(len(l)-1):
            l[i+1],l[i]=l[i],l[i+1]
            if t==l:
                return "YES"
            else:
                l[i+1],l[i]=l[i],l[i+1]
    return "NO"
    
t=int(input())
for _ in range(t):
    n=int(input())
    l=list(map(int,input().strip().split()))[:n]
    print(cook(l))