t = int(input())

for _ in range(t):
    x1, x2, x3 = map(int, input().split())
    if x1 < x2 and x1 < x3:
        print("Draw")
    elif x2 < x1 and x2 < x3:
        print("Bob")
    elif x3 < x1 and x3 < x2:
        print("Alice")