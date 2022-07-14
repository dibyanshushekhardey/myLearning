# Programming assignment week 2

# Prime number

def primeproduct(m):
    list = []
    if m >= 2:
        for i in range(2, m):
            if m % i == 0:
                list += [i]
        if len(list) == 2:
            if m == list[0] * list[1]:
                if list[1] % list[0] == 0:
                    return False
                return True
        elif len(list) == 1:
            if m == list[0] * list[1]:
                return True
        else:
            return False
    else:
        return False

# print(primeproduct(6))
        

# deleting character

def delchar(s, c):
    if len(c) == 1:
        s = s.replace(c, '')
        return s
    else:
        return s

# print(delchar('banana', 'n'))

# shuffling

def shuffle(l1, l2):
    c = []
    c1 = l1[:]
    c2 = l2[:]
    c = c1 + c2
    c.sort()
    return c

# print(shuffle([0, 2, 4], [1, 3, 5]))
