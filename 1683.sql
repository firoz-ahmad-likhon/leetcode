# https://leetcode.com/problems/invalid-tweets
# Run on: MySQL
SELECT
  tweet_id
FROM
  Tweets
WHERE
  LENGTH(content) > 15