t = int(input())

for _ in range(t):
    n, x = map(int, input().split())
    if n % 2 == 0:
        for i in range(1, n/2):
            print((x-i) + " " + (x+i) + " ")
        print(x)
    else:
        for i in range(1, n/2):
            print((x-i) + " " + (x+i) + " ")
     