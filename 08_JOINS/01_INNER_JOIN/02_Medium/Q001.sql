/*The HR Director wants a report showing:

Department Name
Number of Employees
Average Salary
Highest Salary

Only include departments that satisfy both of these conditions:

Average salary is greater than ₹65,000.
Highest salary is at least ₹85,000.

Display the departments in descending order of Average Salary.*/

SELECT 
    DepartmentName,
    COUNT(Distinct E.EmployeeID) AS NumberOfEmplyees,
    AVG(E.Salary) AS AverageSalary,
    MAX(E.Salary) AS HighestSalary
FROM Employees AS E
INNER JOIN Departments AS D
    ON E.DepartmentID  = D.DepartmentId
GROUP BY DepartmentName
HAVING
    AVG(E.Salary) > 65000 AND
    MAX(E.Salary) >= 85000
ORDER BY
    AverageSalary DESC;