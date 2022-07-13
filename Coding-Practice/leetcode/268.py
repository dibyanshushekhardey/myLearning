# Given an array nums containing n distinct numbers in the range [0, n], return the only number in the range that is missing from the array.

class Solution:
    def missingNumber(self, nums: List[int]) -> int:
        s = []
        for i in range(0, len(nums)+1):
            s.append(i)
        for j in s:
            if j not in nums:
                return j
