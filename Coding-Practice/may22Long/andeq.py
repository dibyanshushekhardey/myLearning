for _ in range(int(input())):
    n=int(input())
    l=list(map(int, input().split()))
    a=l[0]
    for i in range(n):
        a&=l[i]
    b=0
    for i in range(n):
        if l[i]==a:
            b+=1
    b=n-b
    v=0
    for i in range(n):
        if l[i]==a:
            continue
        if i==(n-1):
            v+=1
            continue
        l[i+1]&=l[i]
        v+=1 
    print(v)
