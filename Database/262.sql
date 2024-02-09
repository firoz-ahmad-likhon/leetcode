# https://leetcode.com/problems/trips-and-users
# Run on: MySQL
SELECT
  Trips.request_at Day,
  ROUND(SUM(
    IF
      (Trips.status != 'completed', 1, 0)) / SUM(
    IF
      (Trips.status, 1, 1)), 2) `Cancellation Rate`
FROM
  Trips
LEFT JOIN
  Users client
ON
  client.users_id = Trips.client_id
LEFT JOIN
  Users driver
ON
  driver.users_id = Trips.driver_id
WHERE
  Trips.request_at BETWEEN "2013-10-01"
  AND "2013-10-03"
  AND client.banned = 'No'
  AND driver.banned = 'No'
GROUP BY
  request_at