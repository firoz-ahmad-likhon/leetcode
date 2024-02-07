# https://leetcode.com/problems/consecutive-numbers
# Run on: MySQL
SELECT
  DISTINCT num ConsecutiveNums
FROM (
  SELECT
    num,
    LAG(num, 1) OVER() l,
    LEAD(num, 1) OVER() le
  FROM
    Logs) k
WHERE
  num = l
  AND l = le