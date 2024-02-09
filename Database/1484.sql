# https://leetcode.com/problems/group-sold-products-by-the-date
# Run on: MS SQL Server
SELECT
  sell_date,
  COUNT(product) num_sold,
  STRING_AGG(product, ',') WITHIN GROUP (
  ORDER BY
    product ASC) products
FROM (
  SELECT
    DISTINCT sell_date,
    product
  FROM
    Activities) Activities
GROUP BY
  sell_date
ORDER BY
  sell_date