*/ Display:

ProductName
Price
Price after 18% GST

Rename the calculated column as:

PriceWithGST */

SELECT
    ProductName,
    Price,
    Price + (Price * 18 / 100) AS PriceWithGST
FROM Products;