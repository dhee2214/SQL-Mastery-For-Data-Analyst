/* Display:

FirstName
Salary
Salary after adding 1000

The new column should be named:

UpdatedSalary */

SELECT
    FirstName,
    Salary,
    Salary + 1000 AS UpdatedSalary
FROM Employee;