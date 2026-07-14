/*The CTO wants a report showing:

Department Name
Number of Employees
Number of Different Projects
Total Project Budget

Only include departments that satisfy all of these conditions:

Employees are working on at least 2 different projects.
The total project budget is greater than ₹1,000,000.
There are at least 2 employees in the department.

Display the report in descending order of Total Project Budget.*/

SELECT 
    D.DepartmentName,
    COUNT(DISTINCT E.EmployeeID) AS Num_Of_Emp,
    COUNT(DISTINCT P.ProjectID) AS Num_Of_Pro,
    SUM(DISTINCT P.Budget) AS Total_Project_Budget
FROM Employees AS E
INNER JOIN Departments AS D
    ON E.DepartmentID = D.DepartmentID
INNER JOIN Projects AS P
    ON P.EmployeeID = E.EmployeeID
Group BY D.DepartmentName
HAVING
     COUNT(DISTINCT ProjectID) >= 2 AND
     SUM(DISTINCT Budget) > 1000000 AND
     COUNT(DISTINCT EmployeeID) >= 2
ORDER BY Total_Project_Budget DESC;

