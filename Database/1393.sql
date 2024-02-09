# https://leetcode.com/problems/capital-gainloss
# Run on: MySQL
SELECT
  stock_name,
  SUM(CASE
      WHEN operation = 'Buy' THEN -price
    ELSE
    price
  END
    ) capital_gain_loss
FROM
  Stocks
GROUP BY
  stock_name