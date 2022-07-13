#There is a function signFunc(x) that returns:

# 1 if x is positive.
# -1 if x is negative.
# 0 if x is equal to 0.
# You are given an integer array nums. Let product be the product of all values in the array nums.
# Return signFunc(product).

import numpy as np
class Solution:
    def arraySign(self, nums: List[int]) -> int:
        pos = 0
        neg = 0
        if 0 in nums:
            return 0
        for i in range(len(nums)):
            if nums[i] < 0:
                neg += 1
            else:
                neg += 0
        if neg % 2 == 0:
            return 1
        else:
            return -1
