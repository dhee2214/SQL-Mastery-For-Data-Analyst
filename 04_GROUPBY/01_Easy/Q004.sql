/*Find the number of Artists in the studio (without a HAVING clause) */

SELECT
    Role,
    COUNT(*)
FROM Employees
WHERE Role = 'Artist'
GROUP BY Role;