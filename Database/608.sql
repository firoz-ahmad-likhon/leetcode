# https://leetcode.com/problems/tree-node/
# Run on: MS SQL Server
SELECT
  DISTINCT t1.id,
  CASE
    WHEN t1.p_id IS NULL THEN 'Root'
    WHEN t1.p_id IS NOT NULL
  AND t2.id IS NOT NULL THEN 'Inner'
  ELSE
  'Leaf'
END
  AS Type
FROM
  tree t1
LEFT JOIN
  tree t2
ON
  t1.id = t2.p_id
ORDER BY
  t1.id;