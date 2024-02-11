# https://leetcode.com/problems/two-sum

# BruteForce
class Solution:
    def twoSum(self, nums: list[int], target: int) -> list[int]:
        length = len(nums)
        for i in range(length - 1):
            for j in range(i + 1, length):
                if(nums[i] + nums[j] == target):
                    return [i, j]
print("BruteForce")
cls = Solution();
print(cls.twoSum([2, 7, 11, 15], 9))
print(cls.twoSum([3, 2, 4], 6))
print(cls.twoSum([3, 3], 6))

# Hash
class Solution:
    def twoSum(self, nums: list[int], target: int) -> list[int]:
        dic = {}

        for key, val in enumerate(nums):
            searching_for = target - val
            if(searching_for in dic):
                return [dic[searching_for], key]
            dic[val] = key

print("\nHash")
cls = Solution();
print(cls.twoSum([2, 7, 11, 15], 9))
print(cls.twoSum([3, 2, 4], 6))
print(cls.twoSum([3, 3], 6))
