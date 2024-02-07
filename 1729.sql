# https://leetcode.com/problems/find-followers-count/
# Run on: MS SQL Server
SELECT
  user_id,
  COUNT(follower_id) followers_count
FROM
  Followers
GROUP BY
  user_id