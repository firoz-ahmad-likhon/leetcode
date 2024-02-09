# https://leetcode.com/problems/department-top-three-salaries/
# Run on: MySQL
SELECT
  Department,
  Employee,
  Salary
FROM (
  SELECT
    Department.name Department,
    Employee.name Employee,
    Employee.salary Salary,
    DENSE_RANK() OVER(PARTITION BY Employee.departmentId ORDER BY Employee.salary DESC) rn
  FROM
    Employee
  LEFT JOIN
    Department
  ON
    Employee.departmentId = Department.id) salery
WHERE
  rn <= 3