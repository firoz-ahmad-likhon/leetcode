# https://leetcode.com/problems/delete-duplicate-emails
# Run on: MySQL
WITH
  email AS (
  SELECT
    id,
    ROW_NUMBER() OVER(PARTITION BY email ORDER BY id ASC) rn
  FROM
    Person )

DELETE
FROM
  Person
WHERE
  id IN (
  SELECT
    id
  FROM
    email
  WHERE
    rn > 1 )