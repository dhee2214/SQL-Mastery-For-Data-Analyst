/*Our report should show employee names along with their department names. I don't want to see Department IDs."*/

SELECT 
    E.EmployeeName,
    D.DepartmentName
FROM Department AS D
INNER JOIN Employee AS E
ON D.DepartmentID = E.DepartmentID;