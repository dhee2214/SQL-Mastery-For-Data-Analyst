/*The Sales Director wants a report showing:

Customer Name
Number of Categories Purchased
Total Amount Spent

Only include customers who have purchased products from more than one category.

Display the report in descending order of Total Amount Spent.*/

SELECT 
    C.CustomerName,
    COUNT(DISTINCT P.Category) AS Number_of_categories_purchased,
    SUM(O.Quantity*P.Price) AS TotalAmountSpent
FROM Customers AS C
INNER JOIN Orders AS O
    ON C.CustomerID = O.CustomerID
INNER JOIN Products AS P    
    ON p.ProductID = O.ProductID
Group BY CustomerNAme
HAVING
    COUNT(DISTINCT P.Category) > 1
ORDER BY 
    TotalAmountSpent DESC;

