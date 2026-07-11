/*Show me only those regions where the total sales exceed ₹10,000."*/

SELECT
Region,
SUM(SalesAmount) AS TotalSales
FROM Sales
GROUP BY Region
HAVING SUM(SalesAmount) > 10000;