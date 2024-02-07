# https://leetcode.com/problems/rank-scores
# Run on: MySQL
SELECT
  score,
  DENSE_RANK() OVER(ORDER BY score DESC) `rank`
FROM
  Scores
ORDER BY
  `rank`