# https://leetcode.com/problems/game-play-analysis-i
# Run on: MS SQL Server
SELECT
  player_id,
  MIN(event_date) first_login
FROM
  Activity
GROUP BY
  player_id