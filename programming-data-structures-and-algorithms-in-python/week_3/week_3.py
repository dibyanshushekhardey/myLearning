#code 1
def factors(n):
    list = []
    for i in range(1, n + 1):
         if n % i == 0:
            list.append(i)
    return list
a = factors(46)
print(a)

#code 2
def findpos(l,v):
    # Return first position of v in l
    # Return -1 if v not in l
    (found,i) = (False,0)
    while i < len(l):
        if not found and l[i] == v:
            (found,pos) = (True,i)
    if not found:
        pos = -1
    return (pos)

#code 3
def findpos(l, v):
    (pos, i) = (-1, 0)
    for x in l:
        if x == v:
            pos = i
            break
        i += 1

    return pos

print(findpos([2, 3, 4, 56, 7, 90], 90))

#code 4
def findpos(l, v):
    pos = -1
    for i in range(len(l)):
        if l[i] == v:
            pos = i
            break
    return pos
a = findpos([1, 2], 2)
print(a)

#code 5
def findpos(l, v):
    pos = -1
    for i in range(len(l)):
        if l[i] == v:
            pos = i
            break
    else:
         pos = -1

    return pos
a = findpos([1, 2], 2)
print(a)

#code 6
def search(seq, v):
    for x in seq:
        if x == v:
            return True


a = search((4, 5, 6, 7), 6)
print(a)

#code 7
def bsearch(seq, v, l, r):
    # search for v in seq[l:r], seq is sorted 
    if r - l == 0:
        return False
    
    mid = (l + r) // 2
    
    if v == seq[mid]:
        return True
    if v < seq[mid]:
        return bsearch(seq, v, l, mid)
    else:
        return bsearch(seq, v, mid + 1, r)

#code 8
def selectionSort(l):
    for start in range(len(l)):
        min_pos = start
        for i in range(start, len(l)):
            if l[i] < l[min_pos]:
                min_pos = i

        (l[start], l[min_pos]) = (l[min_pos], l[start])

#code 9
def insertSort(seq):
    for sliceEnd in range(len(seq)):
        # Build longer and longer sorted slices
        # in each iteration seq[0:sliceEnd] already sorted

        # move first element after the sorted slice left
        # till it is in the correct place
        pos = sliceEnd
        while pos > 0 and seq[pos] < seq[pos - 1]:
            (seq[pos], seq[pos - 1]) = (seq[pos -1], seq[pos])
            pos = pos - 1

#code 10
def factorial(n):
    if n == 0:
        return 1
    else:
        return n * factorial(n - 1)

a = factorial(5)
print(a)

#code 11
def multiply(m, n):
    if n == 1:
        return m
    else:
        return (m + multiply(m, n - 1))

b = multiply(5, 10)
print(b)

#code 11
def length(l):
    if l == []:
        return 0
    else:
        return 1 + length(l[1:])

l = length([1, 2, 3])
print(l)

#code 12
def InsertionSort(seq):
    isort(seq,len(seq))
def isort(seq,k): # Sort slice seq[0:k]
    if k > 1:
        isort(seq,k-1)
        insert(seq,k-1)
def insert(seq,k): # Insert seq[k] into sorted seq[0:k-1]
    pos = k
    while pos > 0 and seq[pos] < seq[pos-1]:
        (seq[pos],seq[pos-1]) = (seq[pos-1],seq[pos])
        pos = pos-1





