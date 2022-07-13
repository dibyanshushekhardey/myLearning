t = int(input())

for _ in range(t):
    n = int(input())
    if n % 4 == 0:
        print("NO")
    elif n % 4 != 0:
        print("YES")