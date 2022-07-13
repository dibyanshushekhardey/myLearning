t = int(input())

for _ in range(t):
    n = list(map(int, input().split()))
    cout1 = 0
    cout2 = 0
    for i in range(len(n)):
        if i % 2 == 0 and n[i] == 1:
            cout1 += 1
        elif i % 2 != 0 and n[i] == 1:
            cout2 += 1
    if cout1 > cout2:
        print(1)
    elif cout1 < cout2:
        print(2)
    else:
        print(0)