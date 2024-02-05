# https://leetcode.com/problems/find-customer-referee/
# Run on: MySQL
SELECT
  name
FROM
  Customer
WHERE
  referee_id != 2
  OR referee_id IS NULL