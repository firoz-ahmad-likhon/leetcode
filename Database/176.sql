# https://leetcode.com/problems/second-highest-salary
# Run on: MySQL
SELECT
  SecondHighestSalary
FROM (
  SELECT
    *
  FROM (
    SELECT
      salary SecondHighestSalary
    FROM (
      SELECT
        salary,
        DENSE_RANK() OVER(ORDER BY salary DESC) rn
      FROM
        Employee ) sal
    WHERE
      rn = 2) ll
  UNION ALL
  SELECT
    NULL ) kk
LIMIT
  1