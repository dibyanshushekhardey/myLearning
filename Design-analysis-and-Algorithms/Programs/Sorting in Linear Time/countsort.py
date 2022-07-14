def countSort(arr):
    output = [0 for i in range(len(arr))]
    count = [0 for i in range(256)]
    ans = ["" for _ in arr]

    #storing count of each character
    for i in arr:
        count[ord(i)] += 1

    #change count[i] so that count[i] now contains actial 
    # position of this character in output array
    for i in range(256):
        count[i] += count[i -1]

    #Build the outpur character array
    for i in range(len(arr)):
        output[count[ord(arr[i])] - 1] = arr[i]
        count[ord(arr[i])] -= 1

    #copy the output array to arr so that arr
    #now contains sorted characters
    for i in range(len(arr)):
        ans[i] = output[i]
    return ans

#driver program to test above function
if __name__ == "__main__":
    arr = 'dibyanshushekhardey'
    ans = countSort(arr)
    print("Sorted character array id % s" %("".join(ans)))