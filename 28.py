# https://leetcode.com/problems/find-the-index-of-the-first-occurrence-in-a-string/
class Solution:
    def strStr(self, haystack: str, needle: str) -> int:
        if not needle:
            return 0
        length = len(haystack)
        needle_length = len(needle)
        for i in range(length - needle_length + 1):
            if haystack[i:i + needle_length] == needle:
                return i
        return -1

cls = Solution()
print(cls.strStr("sadbutsad", "sad"))