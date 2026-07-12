/*I don't want IDs. Show me each customer's name and the product they ordered."*/

SELECT
    C.CustomerName,
    P.ProductName
FROM Customers AS C
INNER JOIN Orders AS O
    ON C.CustomerID = O.CustomerID
INNER JOIN Products AS P
    ON O.ProductID = P.ProductID;

