t = int(input())

for _ in range(t):
    n = input()
    l = list(map(int, input().split()))
    even = 0
    odd = 0
    for i in range(len(l)):
        if l[i] % 2 == 0:
            even += 1
        else:
            odd += 1
    x = 0
    y = 0
    if (odd % 2 == 1):
        a = even
    else:
        a = odd // 2
    b = even
    if a <= b:
        print(a)
    else:
        print(b)