t = int(input())

for _ in range(t):
    a, b = map(int, input().split())
    if a > 0 and b > 0:
        print("Solution")
    elif a == 0:
        print("Liquid")
    elif b == 0:
        print("Solid")