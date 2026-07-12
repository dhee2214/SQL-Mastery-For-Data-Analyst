/*The CEO wants a report showing:

Employee Name
Department Name
Salary

The report should display the employees with the highest salary first.

If two employees have the same salary, display them in alphabetical order by employee name.*/

SELECT 
    E.EmployeeName,
    D.DepartmentName,
    E.Salary
FROM Employees AS E
INNER JOIN Departments AS D
ON E.DepartmentID = D.DepartmentID
ORDER BY Salary DESC,
         EmployeeName ASC;
