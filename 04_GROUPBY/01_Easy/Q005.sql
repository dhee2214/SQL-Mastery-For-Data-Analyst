/*Find the number of Employees of each role in the studio*/

SELECT
Role,
COUNT(Name)
FROM Employees
GROUP BY ROLE;