/*Suppose you have the following table:

EmployeeID	FirstName	Salary
101	John	50000
102	Alice	60000
Question

Display the following columns:

EmployeeID
FirstName
Salary

Rename them as:

Employee ID
Employee Name
Monthly Salary*/

SELECT
    EmployeeID AS [Employee ID],
    FirstName AS [Employee Name],
    Salary AS [Monthly Salary]
FROM Employee;