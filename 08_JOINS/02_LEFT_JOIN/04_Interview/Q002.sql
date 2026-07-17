SELECT
    C.CustomerName,
    COUNT(O.OrderID) AS TotalOrders,
    SUM(O.Amount) AS TotalAmount
FROM Customers AS C
INNER JOIN Orders AS O
    ON C.CustomerID = O.CustomerID
GROUP BY
    C.CustomerID,
    C.CustomerName
HAVING SUM(O.Amount) > 1000
ORDER BY
    TotalAmount DESC,
    C.CustomerName ASC;