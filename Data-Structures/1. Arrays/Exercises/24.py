def removeDuplicates(arr):
    arr[:]=sorted(set(arr))
    return arr

if __name__=='__main__':
    arr=[1, 1, 2]
    print(removeDuplicates(arr))