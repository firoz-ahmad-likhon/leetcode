# https://leetcode.com/problems/rising-temperature/
# Run on: MySQL
SELECT
  id Id
FROM (
  SELECT
    id,
    recordDate,
    temperature,
    LAG(recordDate) OVER(ORDER BY recordDate) prevDate,
    LAG(temperature) OVER(ORDER BY recordDate ASC) prevTemp
  FROM
    Weather ) w
WHERE
  temperature > prevTemp
  AND DATEDIFF(recordDate,
    prevDate) = 1