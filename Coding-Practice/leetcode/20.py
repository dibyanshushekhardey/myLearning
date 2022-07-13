# Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
# An input string is valid if:
# Open brackets must be closed by the same type of brackets.
# Open brackets must be closed in the correct order.

class Solution:
    def isValid(self, s: str) -> bool:
        while(len(s)) > 0:
            m = len(s)
            s = s.replace('()', '').replace('{}', '').replace('[]', '')
            if m == len(s): 
                return False
        return True
              
