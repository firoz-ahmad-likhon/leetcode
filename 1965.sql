# https://leetcode.com/problems/employees-with-missing-information/
# Run on: MS SQL Server
SELECT
  COALESCE(Employees.employee_id, Salaries.employee_id) employee_id
FROM
  Employees
FULL OUTER JOIN
  Salaries
ON
  Employees.employee_id = Salaries.employee_id
WHERE
  Employees.name IS NULL
  OR Salaries.salary IS NULL
ORDER BY
  employee_id ASC