# https://leetcode.com/problems/market-analysis-i
# Run on: MySQL
SELECT
  Users.user_id buyer_id,
  join_date,
  COALESCE(orders_in_2019, 0) orders_in_2019
FROM
  Users
LEFT JOIN (
  SELECT
    buyer_id,
    COUNT(order_id) orders_in_2019
  FROM
    Orders
  WHERE
    YEAR(order_date) = 2019
  GROUP BY
    buyer_id ) cnt
ON
  Users.user_id = cnt.buyer_id