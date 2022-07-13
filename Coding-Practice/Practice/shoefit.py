t = int(input())

for _ in range(t):
    a = list(map(int, input().split()))
    cout0 = 0
    cout1 = 0
    for i in range(len(a)):
        if a[i] == 0:
            cout0 += 1
        elif a[i] == 1:
            cout1+= 1
    if cout0 == 0 or cout1 == 0:
        print(0)
    elif cout1 > cout0:
        print(cout0)
    elif cout0 > cout1:
        print(cout1)