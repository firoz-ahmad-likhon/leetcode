# https://leetcode.com/problems/customers-who-never-order
# Run on: MySQL
SELECT
  name Customers
FROM
  Customers
LEFT JOIN
  Orders
ON
  Customers.id = Orders.customerId
WHERE
  Orders.id IS NULL