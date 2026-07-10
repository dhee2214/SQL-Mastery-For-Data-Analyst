/*Question

Display the output like this:

ProductInfo
Laptop - 50000
Mouse - 1000
Rename the column as:
ProductInfo
*/

SELECT
    ProductName + ' - ' + CAST(Price AS VARCHAR(20)) AS ProductInfo
FROM Products;