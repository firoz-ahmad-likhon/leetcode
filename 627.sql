# https://leetcode.com/problems/swap-salary
# Run on: MySQL
UPDATE
  Salary
SET
  sex =
IF
  (sex = 'f', 'm', 'f')