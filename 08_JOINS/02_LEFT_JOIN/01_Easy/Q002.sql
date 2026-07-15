/*Write a query to display:

Customer Name
Number of Orders

Display all customers, including those who have not placed any orders.

Order the result by:

Number of Orders (descending)
Customer Name (ascending)*/

SELECT
    C.CustomerName,
    COUNT(O.OrderID) AS Number_Of_Orders,
FROM Customers AS C
LEFT JOIN Orders AS O
    ON C.CustomerID = O.CustomerID
GROUP BY
    C.CustomerName
ORDER BY
    COUNT(O.OrderID) AS Number_Of_Orders DESC
    C.CustomerName ASC;
