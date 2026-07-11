/*For each role, find the average number of years employed by employees in that role*/

SELECT 
Role,
AVG(Years_employed)
FROM Employees
GROUP BY ROLE;