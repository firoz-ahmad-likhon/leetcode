# https://leetcode.com/problems/remove-element
class Solution:
    def removeElement(self, nums: list[int], val: int) -> int:
        length = len(nums)
        unique = 0
        for i in range(length):
            if nums[i] != val:
                nums[unique] = nums[i]
                unique += 1

        return unique

cls = Solution()
print(cls.removeElement([3,2,2,3], 3))
print(cls.removeElement([0,1,2,2,3,0,4,2], 2))
print(cls.removeElement([2], 3))