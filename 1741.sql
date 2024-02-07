# https://leetcode.com/problems/find-total-time-spent-by-each-employee
# Run on: MS SQL Server
SELECT
  event_day day,
  emp_id,
  SUM(out_time - in_time) total_time
FROM
  Employees
GROUP BY
  emp_id,
  event_day