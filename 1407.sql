# https://leetcode.com/problems/top-travellers
# Run on: MySQL
SELECT
  name,
  COALESCE(travelled_distance, 0) travelled_distance
FROM
  Users
LEFT JOIN (
  SELECT
    user_id,
    SUM(distance) travelled_distance
  FROM
    Rides
  GROUP BY
    user_id) Rider
ON
  Users.id = Rider.user_id
ORDER BY
  travelled_distance DESC,
  name ASC