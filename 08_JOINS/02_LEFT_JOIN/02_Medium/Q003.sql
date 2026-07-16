/*Write a query to display:

Department Name
Number of Employees
Requirements
Display all departments, even if they have no employees.
Departments with no employees should display 0.
Sort by:
Number of Employees (Descending)
Department Name (Ascending)*/

SELECT 
    D.DepartmentName,
    COUNT(E.EmployeeID) AS Num_of_emp
FROM Departments AS D
LEFT JOIN Employees AS D
    ON D.DepartmentID = E.DepartmentID
GROUP BY D.DepartmentName
ORDER BY
    Num_of_emp DESC,
    D.DepartmentName ASC;

