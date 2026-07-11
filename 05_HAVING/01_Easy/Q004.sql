/*Show me only those regions where:

Total sales are greater than ₹10,000
AND the average sale amount is greater than ₹5,500"*/

SELECT
Region,
SUM(SalesAmount) AS TotalSales,
AVG(SalesAmount) AS AverageSales
FROM Sales
GROUP BY Region
HAVING 
        SUM(SalesAmount) >10000
        AND
        AVG(SalesAmount) >5500;