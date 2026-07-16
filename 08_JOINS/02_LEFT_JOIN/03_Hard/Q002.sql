/*Problem

Write a query to display:

Customer Name
Latest Order Date
Requirements
Display all customers, even if they have never placed an order.
Customers with no orders should display NULL for the latest order date.
Sort by:
Latest Order Date (Descending)
Customer Name (Ascending)*/

SELECT
    C.CustomerName,
    MAX(O.OrderDate) AS Latest_Order_Date
FROM Customers AS C
LEFT JOIN Orders AS O
    ON C.CustomerID = O.CustomerID
GROUP BY C.CustomerName
ORDER BY
    Latest_Order_Date DESC,
    C.CustomerName ASC;
    
