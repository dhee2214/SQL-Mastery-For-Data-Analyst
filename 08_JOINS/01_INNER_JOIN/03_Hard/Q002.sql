/*The CTO wants a report showing:

Department Name
Number of Employees
Number of Different Projects
Total Salary

Only include departments where:

Employees are working on at least 3 different projects.
The department has more than 2 employees.

Display the report in descending order of Total Salary.*/

SELECT
    D.DepartmentName,
    COUNT(DISTINCT E.EmployeeID) AS Num_of_Emp,
    COUNT(Distinct P.ProjectID) AS Num_of_Pro,
    SUM(E.Salary) AS TotalSalary
FROM Employees AS E
INNER JOIN Departments AS D
    ON E.DepartmentID = D.DepartmentID
INNER JOIN Projects AS P
    ON E.EmployeeID = P.EmployeeID
GROUP BY D.DepartmentName
HAVING
    COUNT(Distinct P.ProjectID) >= 3 AND
    COUNT(DISTINCT E.EmployeeID) > 2
ORDER BY
    TotalSalary DESC;


