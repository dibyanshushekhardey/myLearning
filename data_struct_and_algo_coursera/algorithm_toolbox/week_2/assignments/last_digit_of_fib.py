# 2.2 Last digit of Fibonacci number
n = int(input())

def fiboRec(n):
    a = 0
    b = 1
    if n <= 1:
        return n
        quit()

    else:
        for _ in range(n - 1):
            c = (a + b) % 10
            b, a = c, b
        return c

print(fiboRec(n))