# https://leetcode.com/problems/bank-account-summary-ii/
# Run on: MS SQL Server
SELECT
  name,
  balance
FROM
  Users
LEFT JOIN (
  SELECT
    account,
    SUM(amount) balance
  FROM
    Transactions
  GROUP BY
    account
  HAVING
    SUM(amount) > 10000 ) bal
ON
  bal.account = Users.account
WHERE
  bal.account IS NOT NULL