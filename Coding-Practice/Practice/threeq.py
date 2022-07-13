t = int(input())

for _ in range(t):
    l1 = list(map(int, input().split()))
    l2 = list(map(int, input().split()))
    l1.sort()
    l2.sort()
    if l1 == l2:
        print("Pass")
    else:
        print("Fail")