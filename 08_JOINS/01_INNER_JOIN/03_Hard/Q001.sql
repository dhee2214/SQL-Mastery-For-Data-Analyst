/*The Sales Director asks:

"I only want customers who have purchased products from BOTH Electronics and Accessories categories."

For each such customer, display:

Customer Name
Number of Different Categories Purchased
Total Orders
Total Revenue

Display the report in descending order of Total Revenue.*/

SELECT
    C.CustomerName,
    COUNT(Distinct P.Category) AS Num_OF_Diff,
    SUM(DISTINCT O.OrderID) AS total_orders,
    SUM(OD.Quantity*P.Price) AS TotalRevenue
FROM Customers AS C
INNER JOIN Orders AS O
     ON C.CustomerID = O.CustomerID
INNER JOIN OrderDetails AS OD
    ON OD.OrderID = O.OrderId
INNER JOIN Products AS P
    ON P.ProductID = OD.ProductID
GROUP BY C.CustomerName
HAVING
    COUNT(Distinct P.Category) = 2
ORDER BY
    TotalRevenue DESC;

