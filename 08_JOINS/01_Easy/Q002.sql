/*"Show me only the customers who live in Hyderabad."*/

SELECT 
    CU.CustomerName,
    C.CityName
FROM Customer AS CU
INNER JOIN City AS C
ON CU.CityID = C.CityID
WHERE C.CityName = 'Hyderabad';