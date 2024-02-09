# https://leetcode.com/problems/sales-analysis-iii
# Run on: MySQL
Solution #1:
SELECT
  DISTINCT Sales.product_id,
  product_name
FROM
  Sales
LEFT JOIN
  Product
ON
  Sales.product_id = Product.product_id
WHERE
  sale_date BETWEEN'2019-01-0'
  AND '2019-03-31'
  AND Sales.product_id NOT IN (
  SELECT
    product_id
  FROM
    Sales
  WHERE
    sale_date < '2019-01-01'
    OR sale_date > '2019-03-31' )

Solution #2:
 SELECT
  Sales.product_id,
  product_name
FROM
  Sales
LEFT JOIN
  Product
ON
  Sales.product_id = Product.product_id
GROUP BY
  1
HAVING
  MIN(sale_date) >= '2019-01-01'
  AND MAX(sale_date) <= '2019-03-31'