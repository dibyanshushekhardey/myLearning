#Given an integer array nums, find the contiguous subarray (containing at least one number) which has the largest sum and return its sum.
#A subarray is a contiguous part of an array.

class Solution:
    def maxSubArray(self, nums: List[int]) -> int:
        currentSum = nums[0]
        maxSum = nums[0]
        for i in range(1,len(nums)):
            currentSum += nums[i]
            currentSum = max(currentSum, nums[i])
            maxSum  = max(maxSum, currentSum)
            
        return maxSum
