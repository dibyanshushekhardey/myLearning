def SelectionSort(l):
    # Scan slices l[0:len(l)], l[1:len(l)], ...
    for start in range(len(l)):
        # Find minimum in the slice
        minpos = start
        for i in range(start, len(l)):
            if l[i] < l[minpos]:
                minpos = i
        # ... and move it to start of slice
        (l[start], l[minpos]) = (l[minpos], l[start])
    return l

l = [3, 7, 2]
print(SelectionSort(l))
m = list(range(500, 0, -1))
print(SelectionSort(m))