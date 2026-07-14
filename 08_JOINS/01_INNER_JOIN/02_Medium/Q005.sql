/*The Sales Director wants a report showing:

Customer Name
Number of Orders
Total Quantity Purchased
Total Amount Spent

Only include customers who:

Have placed more than one order.
Purchased a total quantity greater than 5.
Spent more than ₹60,000.

Display the report in descending order of Total Amount Spent.*/

SELECT
    C.CustomerName,
    COUNT(DISTINCT O.OrderID) AS Number_of_Orders,
    SUM(OD.Quantity) AS Total_Quantity,
    SUM(OD.Quantity*P.Price) as TotalAmount
FROM Customers AS C
INNER JOIN Orders As O
    ON C.CustomerID = O.CustomerID
INNER JOIN OrderDetails AS OD
    ON O.OrderID = OD.OrderID
INNER JOIN Products AS P
    ON OD.ProductID = P.ProductID
Group BY C.CustomerName
HAVING
    COUNT(O.OrderID) > 1 AND
    SUM(OD.Quantity) > 5 AND
    SUM(OD.Quantity*P.Price) > 60000
ORDER BY TotalAmount DESC;

