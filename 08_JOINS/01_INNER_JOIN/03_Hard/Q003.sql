/*The Sales Director wants a report showing:

Customer Name
Number of Orders
Number of Different Products Purchased
Number of Different Categories Purchased
Total Revenue

Only include customers who satisfy all of these conditions:

Purchased at least 3 different products.
Purchased from exactly 2 different categories.
Total revenue is greater than ₹100,000.

Display the report in descending order of Total Revenue.*/

SELECT 
    C.CustomerName,
    COUNT(DISTINCT O.OrderID) AS Num_of_Orders,
    COUNT(Distinct P.ProductID) AS Num_of_Pro,
    COUNT(DISTINCT P.Category) AS Num_of_Cate,
    SUM(OD.Quantity*P.Price) AS TotalRevenue
FROM Customers AS C
INNER JOIN Orders AS O
    ON C.CustomerID = O.CustomerID
INNER JOIN OrderDetails AS OD
    ON OD.OrderID = O.OrderID
INNER JOIN Products AS P
    ON P.ProductID = OD.ProductID
Group BY C.CustomerName
HAVING 
    COUNT(Distinct ProductID) >= 3 AND
    COUNT(DISTINCT Category) = 2 AND
    SUM(Quantity*Price) > 100000
ORDER BY 
    TotalRevenue DESC;

