# https://leetcode.com/problems/human-traffic-of-stadium/
# Run on: MySQL
Solution 1:
WITH
  filtered AS (
  SELECT
    id,
    visit_date,
    people,
    id - ROW_NUMBER() OVER(ORDER BY id) rnk
  FROM
    stadium
  WHERE
    people >= 100)
SELECT
  id,
  visit_date,
  people
FROM
  filtered
WHERE
  rnk IN (
  SELECT
    rnk
  FROM
    filtered
  GROUP BY
    1
  HAVING
    COUNT(*) >= 3)
ORDER BY
  id

Solution 2:
SELECT
  id,
  visit_date,
  people
FROM (
  SELECT
    *,
    LAG(id, 1) OVER(ORDER BY id) i1,
    LAG(id, 2) OVER(ORDER BY id) i2,
    LEAD(id, 1) OVER(ORDER BY id) ie1,
    LEAD(id, 2) OVER(ORDER BY id) ie2
  FROM
    Stadium
  WHERE
    people >= 100 ) st
WHERE
  ((id - i1 = 1
      AND id - i2 = 2)
    OR (ie1 - id = 1
      AND ie2 - id = 2)
    OR (id - i1 = 1
      AND ie1 - id = 1))