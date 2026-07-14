/*The Sales Director wants a report showing:

Category
Number of Customers
Total Revenue

Revenue = Quantity × Price

Only include categories where:

At least 2 different customers purchased products from that category.
Total revenue is greater than ₹100,000.

Display the report in descending order of Total Revenue.*/

SELECT 
    P.Category,
    COUNT(Distinct C.CustomerID) AS Number_of_Customers,
    SUM(O.Quantity*P.Price) AS TotalRevenue
FROM Customers AS C
INNER JOIN Orders as O
    ON C.CustomerID = O.CustomerID
INNER JOIN Products AS P
    ON P.ProductID = O.ProductID
Group BY P.Category
HAVING 
    COUNT(Distinct C.CustomerID)  >= 2
    AND SUM(O.Quantity*P.Price) > 100000
ORDER BY TotalRevenue DESC;
