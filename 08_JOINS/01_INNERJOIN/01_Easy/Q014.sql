/*The Sales Director wants a report showing:

Country Name
City Name
Number of Customers
Total Order Amount

Only include cities that have more than one customer.

Display the report in descending order of Total Order Amount.*/\

SELECT
    CO.CountryName,
    CI.CityName,
    COUNT(DISTINCT CU.CustomerID) AS Number_Of_Customers,
    SUM(O.OrderAmount) AS Total_Order_Amount
FROM Customers AS Cu
INNER JOIN Cities AS CI
    ON CU.CityID = CI.CityID
INNER JOIN Countries AS CO
    ON CO.CountryID = CI.CountryID
INNER JOIN Orders AS O
    ON O.CustomerID = Cu.CustomerID
Group BY
    CO.CountryName,
    CI.CityName
Having
     COUNT(DISTINCT CustomerID) > 1
ORDER BY
    Total_Order_Amount DESC
