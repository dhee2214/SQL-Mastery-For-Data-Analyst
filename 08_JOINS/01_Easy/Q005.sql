/*"Show me only those customers who have placed more than 1 orde*/\

SELECT
    C.CustomerName,
    COUNT(O.OrderID) AS TotalOrders
FROM Customers AS C
INNER JOIN Orders AS O
    ON C.CustomerID = O.CustomerID
Group BY C.CustomerName
HAVING COUNT(O.OrderID)>1; 