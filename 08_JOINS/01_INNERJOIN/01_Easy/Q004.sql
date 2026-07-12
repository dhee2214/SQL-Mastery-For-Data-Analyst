/*"Show me how many orders each customer has placed."*/

SELECT
C.CustomerName,
COUNT(O.OrderID) AS TotalOrders
FROM Customers AS C
INNER JOIN Orders AS O
ON C.CustomerID = O.CustomerID
GROUP BY C.CustomerName;