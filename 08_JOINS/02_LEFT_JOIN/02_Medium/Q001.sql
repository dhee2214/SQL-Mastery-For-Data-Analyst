/*Write a query to display:

Employee Name
Department Name

Return only those employees who do not belong to any department.

Order the result by Employee Name in ascending order.*/

SELECT
    E.EmployeeName,
    D.DepartmentName
FROM Employees AS E
LEFT JOIN Departments AS D
    ON E.DepartmentID = D.DepartmentID
WHERE D.DepartmentID IS NULL
ORDER BY
    E.EmployeeName ASC;