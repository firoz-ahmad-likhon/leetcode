# https://leetcode.com/problems/department-highest-salary
# Run on: MySQL
SELECT
  Department,
  Employee,
  Salary
FROM (
  SELECT
    Department.name Department,
    Employee.name Employee,
    Salary,
    DENSE_RANK() OVER(PARTITION BY Employee.departmentId ORDER BY salary DESC) rn
  FROM
    Employee
  LEFT JOIN
    Department
  ON
    Employee.departmentId = Department.id ) sal
WHERE
  rn = 1