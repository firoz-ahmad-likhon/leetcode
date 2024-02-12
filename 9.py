# https://leetcode.com/problems/palindrome-number
class Solution:
    def isPalindrome(self, x: int) -> bool:

        if (x < 0):
            return False

        original_number = x
        reversed_number = 0

        while (x > 0):
            x, y = divmod(x, 10)
            reversed_number = reversed_number * 10 + y

        return original_number == reversed_number

cls = Solution();
print(cls.isPalindrome(121))
print(cls.isPalindrome(-121))
print(cls.isPalindrome(10))