/*The Sales Director wants a report showing:

Customer Name
Total Amount Spent

Total Amount = Quantity × Price

Only include customers who have spent more than ₹100,000.

Display the report from the highest spender to the lowest spender.*/

SELECT
    C.CustomerName,
    SUM(O.Quantity*P.Price) AS Total_Amount
FROM Customers AS C
INNER JOIN Orders AS O
    ON C.CustomerID = O.CustomerID
INNER JOIN Products AS P
    ON O.ProductID = P.ProductID
GROUP BY C.CustomerName
HAVING 
    SUM(O.Quantity*P.Price) > 100000
ORDER BY 
    Total_Amount DESC;