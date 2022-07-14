def f(x):
    return g(x + 1)

def g(y):
    return (y + 3)

z = f(77)
print(z)
