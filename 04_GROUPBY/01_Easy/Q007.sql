/*"Show me how many employees belong to each role within each department."*/

SELECT 
    Department,
    Role,
    COUNT(EmployeeID) AS TotalEmployee
FROM Employee
GROUP BY 
    Department,
    Role;