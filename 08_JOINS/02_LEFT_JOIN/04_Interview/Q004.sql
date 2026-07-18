/*Requirement

Display:

Customer ID
Customer Name
Total Number of Orders
Conditions
Show only customers who have placed exactly one order.
Sort the result by Customer Name in ascending order.*/

SELECT 
    C.CustomerID,
    C.CustomerName,
    Count(O.OrderID) AS TotalNumofOrders
FROM Customers AS C
LEFT JOIN Orders AS O
    ON C.CustomerID = O.CustomerID
GROUP BY 
    C.CustomerID,
    C.CustomerName
HAVING 
    Count(O.OrderID) = 1
ORDER BY 
    C.CustomerName ASC;