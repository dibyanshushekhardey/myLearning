t = int(input())

for _ in range(t):
    l1 = list(map(int, input().split()))
    l2 = list(map(int, input().split()))

    totalA = 0
    totalB = 0

    if l1[0] > l2[0]:
        totalA += 1
    else:
        totalB += 1

    if l1[1] > l2[1]:
        totalA += 1
    else:
        totalB += 1

    if l1[2] > l2[2]:
        totalA += 1
    else:
        totalB += 1

    if totalB > totalA:
        print("B")
    elif totalA > totalB:
        print("A")