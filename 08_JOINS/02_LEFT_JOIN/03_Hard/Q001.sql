/*Write a query to display:

Customer Name
Total Number of Orders
Total Order Amount
Requirements
Display all customers, even if they have never placed an order.
Customers with no orders should show:
TotalOrders = 0
TotalAmount = 0
Sort by:
Total Order Amount (Descending)
Customer Name (Ascending)*/

SELECT
    C.CustomerName,
    COUNT(O.OrderID) AS TotalOrders,
    ISNULL(SUM(O.OrderAmount), 0) AS TotalAmount
FROM Customers AS C
LEFT JOIN Orders AS O
    ON C.CustomerID = O.CustomerID
GROUP BY
    C.CustomerID,
    C.CustomerName
ORDER BY
    TotalAmount DESC,
    C.CustomerName ASC;