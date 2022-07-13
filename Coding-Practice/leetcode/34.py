# Given an array of integers nums sorted in non-decreasing order, find the starting and ending position of a given target value.
# If target is not found in the array, return [-1, -1].
# You must write an algorithm with O(log n) runtime complexity.

class Solution:
    def searchRange(self, nums: List[int], target: int) -> List[int]:
        res = [-1,-1]
        low = 0
        high = len(nums)
        while low<high:
            mid = int(low + (high-low)//2)
            if nums[mid] == target:
                high = mid
                res[0]=mid
                res[1]=mid
            elif nums[mid]<target:
                low = mid+1
            else:
                high = mid
        if res[0] == -1:
            return res
        low = res[0]+1
        high = len(nums)
        while low<high:
            mid = int(low + (high-low)//2)
            if nums[mid] == target:
                low = mid+1
                res[1] = mid
            elif nums[mid] < target:
                low = mid + 1
            else:
                high = mid
        return res
