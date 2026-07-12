/*The Sales Director wants a report showing:

City Name
Number of Customers
Total Order Amount

Only include cities where the total order amount is greater than ₹10,000.

Display the cities with the highest total order amount first.*/

SELECT 
    CityName,
    COUNT(DISTINCT CU.CustomerID) as Number_OF_Customers,
    SUM(O.OrderAmount) AS Total_Order_Amount
FROM Customers AS CU
INNER JOIN Cities AS C
    ON CU.CityID = C.CityID
INNER JOIN Orders AS O
    ON O.CustomerID = CU.CustomerID
Group BY C.CityName
HAVING SUM(O.OrderAmount) > 10000
ORDER BY Total_Order_Amount DESC;
