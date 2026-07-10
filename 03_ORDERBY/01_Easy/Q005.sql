/*Scenario

Your HR manager says:

"Group employees by department alphabetically. Within each department, display the employees with the highest salary first."*/

SELECT 
EmployeeName,
Department,
Salary
FROM Employee
ORDER BY 
    Department ASC,
    Salary DESC;