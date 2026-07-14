/*The Sales Director wants a report showing:

Customer Name
City
Number of Orders
Number of Different Products Purchased
Number of Different Categories Purchased
Total Quantity Purchased
Total Revenue

Only include customers who satisfy all of these conditions:

Have placed at least 2 orders.
Purchased at least 3 different products.
Purchased from exactly 2 different categories.
Total quantity purchased is greater than 5.
Total revenue is greater than ₹100,000.

Display the report in descending order of:

Total Revenue
Number of Orders*/

SELECT
    C.CustomerName,
    C.City,
    COUNT(DISTINCT O.OrderID) AS Num_of_Orders,
    COUNT(DISTINCT P.ProductID) AS Num_of_Pro,
    COUNT(DISTINCT P.Category) AS Num_of_Category,
    SUM(OD.Quantity) AS TotalQuantity,
    SUM(OD.Quantity*P.Price) AS TotalRevenue
FROM Customers AS C
INNER JOIN Orders AS O
    ON C.CustomerID = O.CustomerID
INNER JOIN OrderDetails AS OD
    ON O.OrderID = OD.OrderID
INNER JOIN Products AS P
    ON P.ProductID = OD.ProductID
GROUP BY
    C.CustomerName,
    C.City
HAVING
    COUNT(DISTINCT O.OrderID) >= 2 AND
    COUNT(DISTINCT P.ProductID) >= 3 AND
    COUNT(DISTINCT P.Category) = 2 AND
    SUM(OD.Quantity) > 5 AND
    SUM(OD.Quantity*P.Price) > 100000
ORDER BY
    TotalRevenue DESC,
    Num_of_Orders DESC;





