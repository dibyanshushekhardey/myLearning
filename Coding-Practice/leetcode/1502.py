#A sequence of numbers is called an arithmetic progression if the difference between any two consecutive elements is the same.
#Given an array of numbers arr, return true if the array can be rearranged to form an arithmetic progression. Otherwise, return false.

class Solution:
    def canMakeArithmeticProgression(self, arr: List[int]) -> bool:
        arr.sort()
        for i in range(len(arr)-2):
            if arr[i+2]- arr[i+1] != arr[i+1] - arr[i]:
                return False
        return True
