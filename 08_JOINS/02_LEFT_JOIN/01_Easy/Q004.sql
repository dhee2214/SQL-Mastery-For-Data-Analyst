/*Write a query to display:

Customer Name
Number of Orders
Total Order Amount

Display all customers, including those who have not placed any orders.

For customers with no orders:

Number of Orders should be 0
Total Order Amount should be 0

Display the result in descending order of Total Order Amount.*/

SELECT
    C.CustomerName,
    COUNT(O.OrderID) AS Num_of_Orders,
    ISNULL(SUM(O.OrderAmount), 0) AS TotalOrderAmount
FROM Customers AS C
LEFT JOIN Orders AS O
    ON C.CustomerID = O.CustomerID
GROUP BY
    C.CustomerID,
    C.CustomerName
ORDER BY
    TotalOrderAmount DESC;

