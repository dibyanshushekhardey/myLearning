def factors(n):
    list = []
    for i in range(1, n + 1):
        if n % i == 0:
            list = list + [i]
    return list

def isprime(n):
    return(factors(n) == [1, n])

def nprimes(n):
    (count, i, plist) = (0, 1, [])
    while count < n:
        if isprime(i):
            (count, plist) = (count + 1, plist + [i])
        i += 1
    return plist
z = nprimes(10)
print(z)