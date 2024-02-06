# https://leetcode.com/problems/article-views-i
# Run on: MS SQL Server
Solution 1:
SELECT
  DISTINCT author_id id
FROM
  Views
WHERE
  author_id = viewer_id
ORDER BY
  id

Solution 2:
SELECT
  author_id id
FROM
  Views
GROUP BY
  author_id,
  viewer_id
HAVING
  author_id = viewer_id
ORDER BY
  id