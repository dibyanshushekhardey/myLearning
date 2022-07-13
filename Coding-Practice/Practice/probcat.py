t = int(input())

for _ in range(t):
    a = int(input())
    if a >= 1 and a < 100:
        print("easy")
    elif a >= 100 and a < 200:
        print("medium")
    elif a >= 200 and a <= 300:
        print("hard")