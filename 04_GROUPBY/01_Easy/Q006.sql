/*Find the total number of years employed by all Engineers*/

SELECT
SUM(Years_employed)
FROM Employees
WHERE Role = 'Engineer';