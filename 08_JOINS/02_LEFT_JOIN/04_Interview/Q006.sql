/*Requirement

Display:

Customer Name
Number of Completed Orders
Total Amount of Completed Orders
Conditions
Show all customers, even if they have no completed orders.
Customers with no completed orders should show:
0 completed orders
0 total amount
Sort by:
Total Completed Amount (Descending)
Customer Name (Ascending)*/

SELECT
    C.CustomerName,
    COUNT(O.OrderID) AS NumOfCompletedOrders,
    ISNULL(SUM(O.Amount), 0) AS TotalCompletedAmount
FROM Customers AS C
LEFT JOIN Orders AS O
    ON C.CustomerID = O.CustomerID
   AND O.Status = 'COMPLETED'
GROUP BY
    C.CustomerID,
    C.CustomerName
ORDER BY
    TotalCompletedAmount DESC,
    C.CustomerName ASC;