# https://leetcode.com/problems/nth-highest-salary
# Run on: MySQL
SELECT
  salary
FROM (
  SELECT
    salary,
    DENSE_RANK() OVER(ORDER BY salary DESC) rn
  FROM
    Employee ) rnk
WHERE
  rn = N
LIMIT
  1