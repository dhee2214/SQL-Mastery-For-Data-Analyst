/*The Sales Manager wants a report showing:

Customer Name
Number of Orders
Number of Different Products Purchased
Total Amount Spent

Only include customers who satisfy all of these conditions:

Placed at least 2 orders.
Purchased at least 2 different products.
Spent more than ₹60,000.

Display the report in descending order of Total Amount Spent.*/

SELECT
    C.CustomerName,
    COUNT(O.OrderID) AS Number_of_orders,
    COUNT(Distinct P.ProductID) AS Number_of_Diff_Products,
    SUM(O.Quanity*P.Price) AS TotalAmount
FROM Customers AS C
INNER JOIN Orders AS O
    ON C.CustomerID = O.CustomerID
INNER JOIN Products AS P
    ON P.ProductID = O.ProductID
GROUP BY C.CustomerName
HAVING
    COUNT(O.Orders) >= 2 AND
    COUNT(Distinct P.ProductID) >= 2 AND
    SUM(O.Quanity*P.Price) > 60000
ORDER BY 
    TotalAmount DESC;


