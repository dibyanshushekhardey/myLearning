# You are given two strings word1 and word2. Merge the strings by adding letters in alternating order, starting with word1. If a string is longer than the other, append the additional letters onto the end of the merged string.
# Return the merged string.

class Solution:
    def mergeAlternately(self, word1: str, word2: str) -> str:
        r=""
        total = 0
        mn=  min(len(word1), len(word2))
        
        for i in range(mn):
            r = r + word1[i]+word2[i]
            total += 1
        if len(word1) > len(word2):
            r = r + word1[total:]
        if len(word1) < len(word2):
            r = r+ word2[total:]
        
        return r
