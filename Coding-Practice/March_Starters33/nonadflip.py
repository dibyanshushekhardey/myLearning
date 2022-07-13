t = int(input())

for _ in range(t):
    n = int(input())
    l = list(map(int, input()))
    #print(l)
    a1 = 0
    a2 = 0
    for i in range(len(l)):
        if l[i] == 1:
            a2+=1
            if l[i] == l[i+1]:
                a1+=1
    
    if a2 == 0:
        print(0)
    else:
        if a1 == 0:
            print(1)
        else:
            print(2)