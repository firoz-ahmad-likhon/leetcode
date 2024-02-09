# https://leetcode.com/problems/employees-earning-more-than-their-managers
# Run on: MySQL
SELECT
  Employee.name Employee
FROM
  Employee
LEFT JOIN
  Employee emp
ON
  Employee.managerId = emp.id
WHERE
  Employee.salary > emp.salary