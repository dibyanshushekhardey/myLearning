# 2.4 Least common multiple

a, b = [int(i) for i in input().split()]

def euclidGCD(a, b):
    if b == 0:
        return a
    else:
        a1 = a % b
        return euclidGCD(b, a1)

def euclidLCM(a, b):
    lcm = (a * b) / euclidGCD(a, b)
    return int(lcm)

print(euclidLCM(a, b))