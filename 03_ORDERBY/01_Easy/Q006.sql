/*The Finance Manager says:

"I don't need the monthly salary. Show me the annual salary and display the employees from the highest annual salary to the lowest."*/

SELECT
EmployeeName,
Salary*12 As AnnualSalary
FROM Employee
ORDER BY AnnualSalary DESC;