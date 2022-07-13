t = int(input())

for _ in range(t):
    x, y = map(int, input().split())
    a = -1
    if ((x % 2) == 0):
        if (x+2) <= y:
            print(str(x) + " " + str(a+2))
        else:
            print(a)
    elif ((x % 3) == 0):
        if ((x+3)<=y):
            print(str(x) + " " + str(x+3))
        else:
            print(a)
    else:
        if((x+3) <= y):
            print(str(x+1) + " " + str(x+3))
        else:
            print(a)