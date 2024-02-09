# https://leetcode.com/problems/employee-bonus
# Run on: MySQL
SELECT
  name,
  bonus
FROM
  Employee
LEFT JOIN
  Bonus
ON
  Employee.empID = Bonus.empID
WHERE
  bonus < 1000
  OR bonus IS NULL