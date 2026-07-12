/*The CEO wants a report showing:

Manager Name
Department Name
Number of Employees
Total Salary of those Employees

Only include managers who manage more than 1 employee.

Display the report in descending order of Total Salary.*/

SELECT 
    M.ManagerName,
    D.DepartmentName,
    COUNT(Distinct E.EmployeeID) AS Number_of_Employees,
    SUM(E.Salary) AS Total_Salary
FROM Employees AS E
    INNER JOIN Departments AS D
ON E.DepartmentID = D.DepartmentID
    INNER JOIN Managers AS M
ON E.ManagerID = M.ManagerID
GROUP BY 
    M.ManagerName,
    D.DepartmentName
HAVING 
    COUNT(Distinct E.EmployeeID) > 1
ORDER BY
    Total_Salary DESC;