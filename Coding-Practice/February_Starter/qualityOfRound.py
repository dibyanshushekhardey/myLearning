t = int(input())
for i in range(t):
    x, y, z = map(int, input().split())
    if (y * 1 + z * 2 ) >= x:
        print("Qualify")
    else:
        print("NotQualify")