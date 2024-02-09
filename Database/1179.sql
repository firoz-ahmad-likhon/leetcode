# https://leetcode.com/problems/reformat-department-table
# Run on: MS SQL Server
Solution 1:
SELECT
  id,
  MAX(CASE
      WHEN month = 'Jan' THEN revenue
    ELSE
    NULL
  END
    ) Jan_Revenue,
  MAX(CASE
      WHEN month = 'Feb' THEN revenue
    ELSE
    NULL
  END
    ) Feb_Revenue,
  MAX(CASE
      WHEN month = 'Mar' THEN revenue
    ELSE
    NULL
  END
    ) Mar_Revenue,
  MAX(CASE
      WHEN month = 'Apr' THEN revenue
    ELSE
    NULL
  END
    ) Apr_Revenue,
  MAX(CASE
      WHEN month = 'May' THEN revenue
    ELSE
    NULL
  END
    ) May_Revenue,
  MAX(CASE
      WHEN month = 'Jun' THEN revenue
    ELSE
    NULL
  END
    ) Jun_Revenue,
  MAX(CASE
      WHEN month = 'Jul' THEN revenue
    ELSE
    NULL
  END
    ) Jul_Revenue,
  MAX(CASE
      WHEN month = 'Aug' THEN revenue
    ELSE
    NULL
  END
    ) Aug_Revenue,
  MAX(CASE
      WHEN month = 'Sep' THEN revenue
    ELSE
    NULL
  END
    ) Sep_Revenue,
  MAX(CASE
      WHEN month = 'Oct' THEN revenue
    ELSE
    NULL
  END
    ) Oct_Revenue,
  MAX(CASE
      WHEN month = 'Nov' THEN revenue
    ELSE
    NULL
  END
    ) Nov_Revenue,
  MAX(CASE
      WHEN month = 'Dec' THEN revenue
    ELSE
    NULL
  END
    ) Dec_Revenue
FROM
  Department
GROUP BY
  id
ORDER BY
  id

Solution 2:
SELECT
  id,
  Jan AS Jan_Revenue,
  Feb AS Feb_Revenue,
  Mar AS Mar_Revenue,
  Apr AS Apr_Revenue,
  May AS May_Revenue,
  Jun AS Jun_Revenue,
  Jul AS Jul_Revenue,
  Aug AS Aug_Revenue,
  Sep AS Sep_Revenue,
  Oct AS Oct_Revenue,
  Nov AS Nov_Revenue,
  Dec AS Dec_Revenue
FROM (
  SELECT
    *
  FROM
    Department) Dept PIVOT ( MAX(revenue) FOR month IN (Jan,
      Feb,
      Mar,
      Apr,
      May,
      Jun,
      Jul,
      Aug,
      Sep,
      Oct,
      Nov,
      Dec) ) AS MonthsRevenue