def update(l, i, v):
    if i >= 0 and i < len(l):
        l[i] = v
        return True
    else:
        v = v + 1
        return False

ns = [3, 11, 12]

z = 8
print(update(ns, 2, z))
print(update(ns, 4, z))
