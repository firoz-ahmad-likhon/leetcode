# https://leetcode.com/problems/patients-with-a-condition/
# Run on: MS SQL Server
SELECT
  *
FROM
  Patients
WHERE
  conditions LIKE '% DIAB1%'
  OR conditions LIKE 'DIAB1%'