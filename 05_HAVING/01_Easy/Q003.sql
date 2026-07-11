/*"Show me only those departments whose average salary is greater than ₹55,000."*/

SELECT
Department,
AVG(Salary) AS AverageSalary
FROM Employee
GROUP BY Department
HAVING AVG(Salary) > 55000;