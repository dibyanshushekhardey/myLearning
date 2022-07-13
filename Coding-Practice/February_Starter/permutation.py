t = int(input())

for _ in range(t):
    n = int(input())
    if n == 2:
        print(-1)
        print(f"\n")
    elif n%2 ==1:
        for i in range(1, n+1):
            print(i, end=" ")
        print(f"\n")
            
    elif n %2 == 0:
        l = [2, 3, 1]
        for i in range(4, n+1):
            l.append(i)
        for j in l:
            print(j, end=" ")
        print(f"\n")
    