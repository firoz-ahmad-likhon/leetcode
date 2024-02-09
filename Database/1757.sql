# https://leetcode.com/problems/recyclable-and-low-fat-products
# Run on: MS SQL Server
SELECT
  product_id
FROM
  Products
WHERE
  low_fats = 'Y'
  AND recyclable = 'Y'