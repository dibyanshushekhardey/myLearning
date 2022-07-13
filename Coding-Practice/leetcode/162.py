# A peak element is an element that is strictly greater than its neighbors.
# Given an integer array nums, find a peak element, and return its index. If the array contains multiple peaks, return the index to any of the peaks.
# You may imagine that nums[-1] = nums[n] = -∞.
# You must write an algorithm that runs in O(log n) time.

class Solution:
    def findPeakElement(self, nums: List[int]) -> int:
        start = 0
        end = len(nums)-1
        while (start <= end-1):
            mid = start + (end - start) //2
            if nums[mid] > nums[mid +1]:
                end = mid
            else:
                start = mid + 1
        return start
            
