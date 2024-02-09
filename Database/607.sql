# https://leetcode.com/problems/sales-person
# Run on: MS SQL Server
SELECT
  SalesPerson.name
FROM
  SalesPerson
WHERE
  SalesPerson.sales_id NOT IN (
  SELECT
    Orders.sales_id
  FROM
    Orders
  LEFT JOIN
    Company
  ON
    Orders.com_id = Company.com_id
  WHERE
    Company.name = 'RED' )