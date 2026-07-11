UPDATE Employee
SET Salary = 60000
WHERE EmployeeID = 101;

-- Update multiple columns--
UPDATE Employee
SET
    Salary = 65000,
    Department = 'Finance'
WHERE EmployeeID = 101;