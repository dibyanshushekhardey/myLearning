# 2.3 Greatest common Divisor

a, b = [int(i) for i in input().split()]

def euclidGCD(a, b):
    if b == 0:
        return a
    else:
        a1 = a % b
        return euclidGCD(b, a1)

print(euclidGCD(a, b))