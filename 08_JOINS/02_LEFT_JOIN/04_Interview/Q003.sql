/*Requirement

Display:

Customer ID
Customer Name
Conditions
Show only the customers who have never placed an order.
Sort the result by Customer Name in ascending order.*/

SELECT
    C.CustomerID,
    C.CustomerName
FROM Customers AS C
LEFT JOIN Orders AS O
    ON C.CustomerID = O.CustomerID
WHERE O.CustomerID IS NULL
ORDER BY C.CustomerName ASC;