# https://leetcode.com/problems/customer-placing-the-largest-number-of-orders
# Run on: MySQL
WITH
  frequency AS (
  SELECT
    customer_number,
    COUNT(*) AS frequency
  FROM
    ORDERS
  GROUP BY
    1)
SELECT
  customer_number
FROM
  frequency
WHERE
  frequency = (
  SELECT
    MAX(frequency)
  FROM
    frequency)