# Given a string s, find the first non-repeating character in it and return its index. If it does not exist, return -1.

from collections import Counter
class Solution:
    def firstUniqChar(self, s: str) -> int:
        f = Counter(s)
        for i in s:
            if f[i] == 1:
                return s.index(i)
            
        return -1
        #return f
