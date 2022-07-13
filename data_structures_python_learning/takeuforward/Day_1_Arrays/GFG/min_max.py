def getMinMax( a, n):
    mn = 0
    mx = 0
    for i in range(len(a)):
        if a[i] > mx:
            mx = a[i]
    
    for i in range(len(a)):
        if a[i] < mn:
            mn = a[i]
    return mn, mx