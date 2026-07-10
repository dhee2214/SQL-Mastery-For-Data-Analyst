/*Question

Display:

FirstName
Salary
AnnualSalary

where

AnnualSalary = Salary × 12

Rename the calculated column as:

AnnualSalary*/

SELECT 
FirstName,
Salary,
Salary * 12 AS AnnualSalary
From Employee;