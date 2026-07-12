/**The HR Director wants a report showing how much salary each department spends on its employees.

The report should display:

Department Name
Total Salary

Finally, display the department with the highest total salary first.*/

SELECT 
    D.DepartmentName,
    SUM(E.Salary) AS TotalSalary
FROM Employees AS E
INNER JOIN Departments AS D
ON E.DepartmentID = D.DepartmentID
Group BY DepartmentName
Order BY TotalSalary DESC;