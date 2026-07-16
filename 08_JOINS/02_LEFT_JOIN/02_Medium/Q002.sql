/*Problem

Write a query to display:

Customer Name
Total Number of Orders

Return only those customers who have placed at least one order.

Sort the result by:

Total Number of Orders (Descending)
Customer Name (Ascending)*/

SELECT
    C.CustomerName,
    COUNT(O.OrderID) AS totalOrders
FROM Customers AS C
LEFT JOIN Orders AS O
    ON C.CustomerID = O.CustomerID
GROUP BY C.CustomerName
HAVING COUNT(O.OrderID) > = 1
ORDER BY
    totalOrders DESC,
    C.CustomerName ASC;