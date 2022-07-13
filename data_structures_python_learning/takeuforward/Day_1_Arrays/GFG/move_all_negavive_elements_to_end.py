class Solution:
    def segregateElements(self, arr, n):
        # Your code goes here
        k = arr.copy()
        arr.clear()
        
        for i in k:
            if i >= 0:
                arr.append(i)
        for i in k:
            if i < 0:
                arr.append(i)
        return arr
