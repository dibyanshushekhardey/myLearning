#Given an array of strings strs, group the anagrams together. You can return the answer in any order.
#An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.

class Solution:
    def groupAnagrams(self, strs: List[str]) -> List[List[str]]:
        r =defaultdict(list)
        for i in strs:
            count = [0] * 26 # one for each character
            
            for c in i:
                count[ord(c) - ord("a")] += 1
                
            r[tuple(count)].append(i)
        return r.values()
                
