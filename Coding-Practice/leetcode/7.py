# Given a signed 32-bit integer x, return x with its digits reversed. If reversing x causes the value to go outside the signed 32-bit integer range [-231, 231 - 1], then return 0.
# Assume the environment does not allow you to store 64-bit integers (signed or unsigned).

class Solution:
    def reverse(self, x: int) -> int:
        min=-2147483648
        max=2147483648
        reversed=0
        while x:
            last_digit= int(math.fmod(x, 10))
            # max overflowing
            if (reversed > int(max/10) or (reversed == int(max/10) and last_digit > 7)):
                return 0
            # min overflowing
            if (reversed < int(min/10) or (reversed == int(min/10) and last_digit < -8)):
                return 0
            x = int(x/10)
            reversed = reversed * 10 + last_digit
        return reversed
