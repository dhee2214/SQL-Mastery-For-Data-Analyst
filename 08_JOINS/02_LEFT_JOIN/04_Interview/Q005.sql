/*Display:

Customer Name
Order ID
Payment Method
Conditions
Show all customers.
If an order has no payment, display NULL as the payment method.
If a customer has no orders, they should still appear.
Sort the result by:
Customer Name (Ascending)
Order ID (Ascending)*/

SELECT
    C.CustomerName,
    O.OrderID,
    P.PaymentMethod
FROM Customers AS C
LEFT JOIN Orders AS O
    ON C.CustomerID = O.CustomerID
LEFT JOIN Payments AS P
    ON O.OrderID = P.OrderID
ORDER BY
    C.CustomerName ASC,
    O.OrderID ASC;