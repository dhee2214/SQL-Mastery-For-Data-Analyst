/*Show me only the cities whose total order amount is greater than ₹10,000. Display the cities with the highest total order amount first."*/

SELECT
City,
SUM(OrderAmount) AS TotalOrderAmount
FROM Orders
GROUP BY City
HAVING SUM(OrderAmount) > 10000
ORDER BY TotalOrderAmount DESC;