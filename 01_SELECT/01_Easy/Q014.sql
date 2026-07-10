/* Display the full name by combining FirstName and LastName.

The output should look like:

FullName
John Smith
Alice Johnson

Rename the column as:

FullName */

SELECT
    FirstName + ' ' + LastName AS FullName
FROM Employee;