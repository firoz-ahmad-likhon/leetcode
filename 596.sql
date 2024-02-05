# https://leetcode.com/problems/classes-more-than-5-students/
# Run on: MySQL
SELECT
  class
FROM
  Courses
GROUP BY
  class
HAVING
  COUNT(class) >= 5