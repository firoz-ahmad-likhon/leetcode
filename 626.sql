# https://leetcode.com/problems/exchange-seats
# Run on: MySQL
SELECT
  id,
  CASE
    WHEN id % 2 = 1 THEN COALESCE(LEAD(student) OVER(ORDER BY id), student)
  ELSE
  LAG(student) OVER(ORDER BY id)
END
  student
FROM
  Seat