/*Generate a report showing:

Department Name
Average Salary

Only include departments where the average salary is greater than ₹60,000.

Finally, display the departments from the highest average salary to the lowest.*/

SELECT
    D.DepartmentName,
    AVG(E.Salary) AS AverageSalary
FROM Employees AS E
INNER JOIN Departments AS D
ON E.DepartmentID = D.DepartmentID
GROUP BY D.DepartmentName
HAVING AVG(E.Salary) > 60000
ORDER BY AverageSalary DESC;