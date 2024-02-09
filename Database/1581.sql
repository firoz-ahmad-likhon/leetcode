# https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions
# Run on: MS SQL Server
SELECT
  Visits.customer_id,
  COUNT(Visits.visit_id) count_no_trans
FROM
  Visits
LEFT JOIN
  Transactions
ON
  Transactions.visit_id = Visits.visit_id
WHERE
  Transactions.visit_id IS NULL
GROUP BY
  Visits.customer_id