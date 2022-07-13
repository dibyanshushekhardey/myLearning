t = int(input())

for _ in range(t):
    x1, y1 = map(int, input().split())
    total = 0
    for i in range(x1, y1+1):
        last_digit = int(repr(i)[-1])
        if last_digit == 2 or last_digit == 3 or last_digit == 9:
            total += 1
    
    print(total)