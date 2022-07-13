# You are given an integer array arr. Sort the integers in the array in ascending order by the number of 1's in their binary representation and in case of two or more integers have the same number of 1's you have to sort them in ascending order.
# Return the array after sorting it.

import math
class Solution:
    def sortByBits(self, arr: List[int]) -> List[int]:
        l=[]
        for i in sorted(arr):
            l.append((i,bin(i).count('1')))

            
        s = sorted(l, key=lambda i: i[1])
        a=[]

        for i in s:
            a.append(i[0])
        return a
