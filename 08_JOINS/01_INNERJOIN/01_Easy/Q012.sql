/*The HR Director wants a report that shows:

Department Name
Highest Salary
Lowest Salary

Only include departments where the highest salary is greater than ₹65,000.

Display the departments in descending order of the highest salary.*/

SELECT
    D.DepartmentName,
    MAX(E.Salary) AS Highest_salary,
    MIN(E.Salary) AS Lowest_Salary
FROM Employees AS E
INNER JOIN  Departments AS D
    ON E.DepartmentID = D.DepartmentID
GROUP BY D.DepartmentName
HAVING 
    MAX(E.Salary) > 65000
ORDER BY 
    Highest_Salary DESC;
    