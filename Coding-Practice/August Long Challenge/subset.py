t = int(input())
for i in range(0, t):
    a = list(map(int, input().split()))
    a.sort()
    if(a[0] == a[1] and a[1] == a[2] and a[2] == a[3]):
        print(0)
    elif((a[0] == a[1] and a[1] == a[2]) or (a[1] == a[2] and a[2] == a[3])):
        print(1)
    else:
        print(2)