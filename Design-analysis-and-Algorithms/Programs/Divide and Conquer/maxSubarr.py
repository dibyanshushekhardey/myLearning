def maxCrossSum(arr, l, m, h):
    sum = 0
    left_sum = -10000

    for i in range(m, l - 1, -1):
        sum += arr[i]
        if sum > left_sum:
            left_sum = sum
    

    right_sum = -10000
    sum = 0
    for i in range(m + 1,h + 1 ):
        sum += arr[i]
        if sum > right_sum:
            right_sum = sum
    return max(left_sum + right_sum, left_sum, right_sum)


def maxSubArraySum(arr, l, h):
 
    
    if (l == h):
        return arr[l]

    m = (l + h) // 2
 
    
    return max(maxSubArraySum(arr, l, m),
               maxSubArraySum(arr, m+1, h),
               maxCrossSum(arr, l, m, h))
 
 

arr = [2, 3, 4, 5, 7]
n = len(arr)
 
max_sum = maxSubArraySum(arr, 0, n-1)
print("Maximum contiguous sum is ", max_sum)