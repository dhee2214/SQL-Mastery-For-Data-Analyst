/*Show me only those departments that have more than 2 employees.*/

SELECT 
Department,
COUNT(EmployeeID) AS TotalEmployees
FROM Employee
GROUP BY Department
HAVING COUNT(EmployeeID)be > 2;