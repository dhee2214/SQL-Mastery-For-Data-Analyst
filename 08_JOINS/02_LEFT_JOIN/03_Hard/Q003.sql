/*Write a query to display:

Department Name
Total Employees
Average Employee ID
Requirements
Display all departments, even if they have no employees.
Departments with no employees should show:
TotalEmployees = 0
AverageEmployeeID = NULL
Sort by:
TotalEmployees (Descending)
DepartmentName (Ascending)*/

SELECT
    D.DepartmentName,
    COUNT(E.EmployeeID) AS TotalEmp,
    AVG(E.EmployeeID) AS EmpID
FROM Departments AS D
LEFT JOIN Employees AS E
    ON D.DepartmentID = E.DepartmentID
GROUP BY D.DepartmentName
ORDER BY
    TotalEmp DESC,
    EmpID ASC;

