# https://leetcode.com/problems/duplicate-emails
# Run on: MySQL
SELECT
  email Email
FROM
  Person
GROUP BY
  email
HAVING
  COUNT(email) > 1