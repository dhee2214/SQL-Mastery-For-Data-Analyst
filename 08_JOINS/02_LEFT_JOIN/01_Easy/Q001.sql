/*Write a query to display:

Customer Name
Order ID

Display all customers, even if they have not placed any orders.

Order the result by CustomerName.*/

SELECT 
    C.CustomerName,
    O.OrderID
FROM Customers AS C
LEFT JOIN Orders AS O
    ON C.CustomerID = O.CustomerID
Order BY C.CustomerName;
