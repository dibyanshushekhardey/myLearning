# Given an integer number n, return the difference between the product of its digits and the sum of its digits.

import math

class Solution:
    def subtractProductAndSum(self, n: int) -> int:
        l = [int(a) for a in str(n)]
        mul = math.prod(l)
        s = sum(l)
        return mul - s
