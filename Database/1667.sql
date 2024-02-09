# https://leetcode.com/problems/fix-names-in-a-table
# Run on: MySQL
SELECT
  user_id,
  CONCAT(UPPER(SUBSTRING(name, 1, 1)), LOWER(SUBSTRING(name, 2, LENGTH(name)))) name
FROM
  Users
ORDER BY
  user_id