class Solution:   
    def peakElement(self,arr, n):
        # Code here
        index=0
        mx = 0
        for i in range(len(arr)):
            if arr[i] > mx:
                mx = arr[i]
                index = i
        return index
