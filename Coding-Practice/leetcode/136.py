# Given a non-empty array of integers nums, every element appears twice except for one. Find that single one.
# You must implement a solution with a linear runtime complexity and use only constant extra space.

class Solution:
    def singleNumber(self, nums: List[int]) -> int:
        l = set()
        for i in range(0, len(nums)):
            if nums[i] not in l:
                l.add(nums[i])
            else:
                l.remove(nums[i])
        for i in l:
            return i
