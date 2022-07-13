t = int(input())

for _ in range(t):
    a = int(input())
    cout = 0
    for i in range(a):
        if(i%2 == 0):
            cout = cout + 3
        else:
            cout =cout - 1
    print(cout)