t = int(input())

for _ in range(t):
    l = list(map(int, input().split()))
    cOne = 0
    cZero = 0
    for i in range(len(l)):
        if l[i] == 0:
            cZero += 1
        else:
            cOne += 1
    if cOne > cZero:
        print("Yes")
    else:
        print("No")