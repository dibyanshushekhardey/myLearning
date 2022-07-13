# You have n coins and you want to build a staircase with these coins. The staircase consists of k rows where the ith row has exactly i coins. The last row of the staircase may be incomplete.
# Given the integer n, return the number of complete rows of the staircase you will build.

class Solution:
    def arrangeCoins(self, n: int) -> int:
        low =0 
        high = n
        while low <= high:
            mid = high + (low - high)//2
            cur = mid * (mid+1)//2
            if cur == n:
                return mid
            if n < cur:
                high = mid - 1
            else:
                low = mid +1
        return high
