# Given an array arr of integers, check if there exists two integers N and M such that N is the double of M ( i.e. N = 2 * M).
# More formally check if there exists two indices i and j such that :
# i != j
# 0 <= i, j < arr.length
# arr[i] == 2 * arr[j]

class Solution:
    def checkIfExist(self, arr: List[int]) -> bool:
        arr.sort()
        for i in range(0, len(arr)):
            k = arr[i]
            if k<0:
                low=0
                high=i
                while low<high:
                    mid=(low+high)//2
                    
                    if arr[mid]==(2*k):
                        return True
                    elif arr[mid]<(2*k):
                        low=mid+1
                    else:
                        high=mid
            else:
                low=i+1
                high=len(arr)
                while low<high:
                    mid=(low+high)//2
                    
                    if arr[mid]==(k*2):
                        return True
                    elif arr[mid]<(k*2):
                        low=mid+1
                    else:
                        high=mid
        return False
