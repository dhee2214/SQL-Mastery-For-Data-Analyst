/*he Sales Manager wants a report showing:

Customer Name
City
Number of Products Purchased
Total Amount Spent

Only include customers who:

Live in Delhi or Hyderabad
Have spent more than ₹50,000

Display the report in descending order of Total Amount Spent.*/

SELECT
    C.CustomerName,
    C.City,
    COUNT(P.ProductID) AS Number_of_Products,
    SUM(O.Quantity*P.Price) AS Total_Amount
FROM Customers AS C
INNER JOIN Orders AS O
    ON C.CustomerID = O.CustomerID
INNER JOIN Products AS P
    ON P.ProductID = O.ProductID
WHERE
    C.City IN ('Delhi','Hyderabad')
GROUP BY
    C.CustomerName,
    C.City
HAVING
    SUM(O.Quantity*P.Price) > 50000
ORDER BY
    Total_Amount DESC;
