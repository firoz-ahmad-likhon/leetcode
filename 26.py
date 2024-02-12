# https://leetcode.com/problems/remove-duplicates-from-sorted-array
class Solution:
    def removeDuplicates(self, nums: list[int]) -> int:
        length = len(nums)
        unique = 1
        for i in range(length - 1):
            if nums[i] != nums[i + 1]:
                nums[unique] = nums[i + 1]
                unique += 1

        return unique

cls = Solution()
print(cls.removeDuplicates([1,1,2]))
print(cls.removeDuplicates([0,0,1,1,1,2,2,3,3,4]))