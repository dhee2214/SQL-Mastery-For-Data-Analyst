/*"Show me the cities with the highest number of orders first."*/

SELECT
City,
Count(OrderID) AS TotalOrders
FROM Orders
Group BY City
ORDER BY TotalOrders DESC;