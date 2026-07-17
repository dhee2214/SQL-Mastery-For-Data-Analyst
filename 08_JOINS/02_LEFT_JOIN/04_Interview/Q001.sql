/*Display:

UserName
Total Completed Orders
Total Completed Order Amount
Rules
Show all users, even if they have no completed orders.
Users with no completed orders should display:
TotalCompletedOrders = 0
TotalCompletedAmount = 0

Sort by:

TotalCompletedAmount DESC
UserName ASC*/

SELECT
    U.UserName,
    COUNT(O.OrderID) AS TotalCompletedOrders,
    ISNULL(SUM(O.Amount), 0) AS TotalCompletedAmount
FROM Users AS U
LEFT JOIN Orders AS O
    ON U.UserID = O.UserID
   AND O.Status = 'COMPLETED'
GROUP BY
    U.UserID,
    U.UserName
ORDER BY
    TotalCompletedAmount DESC,
    U.UserName ASC;