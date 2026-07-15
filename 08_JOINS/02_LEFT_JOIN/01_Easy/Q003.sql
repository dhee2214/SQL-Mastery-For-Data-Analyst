/*Write a query to display:

Employee Name
Department Name

Display all employees, including those who do not belong to any department.

If an employee does not have a matching department, the DepartmentName should appear as NULL.

Order the result by EmployeeName in ascending order.*/

SELECT
    E.EmployeeName,
    D.DepartmentName
FROM Employees AS E
LEFT JOIN Departments AS D
    ON E.DepartmentID = D.DepartmentID
ORDER BY E.EmployeeName ASC;