## WHERE Clause
Where is used to filter the rows or records based on the condition.

Where is used with different types of operators
## Comparison operators (=, >, <, >=, <=, <>)
    It contains Two expressions and one operator, Is used to compare the two values

## Logical operators (AND, OR, NOT)
    SQL Logical Operators are used to test conditions in queries, returning results as TRUE, FALSE or UNKNOWN.
    AND--  ALL the conditions must be true.
    OR--   Atleast one condition must be true.
    NOT-- REVERSE OF AND and Negates


## Membership Operators(IN,NOT IN) {USE IN Instead of OR for multipl values in the same column}
    SQL membership operators validate whether a specific data value exists within a given set of values or a subquery result.
        IN : Evaluates to TRUE if the target value matches any value present in the specified list .
        NOT IN:  Evaluates to TRUE if the target value does not match any value in the specified list


## RANGE Operators(BETWEEN)
    A range operator is used to filter data within a specified minimum and maximum boundary. {Between,AND}

## Search Operator (_,%)
    Searches for a specific text pattern using wildcards.
        % - Means 0,1,Anything
        _ - Exactly 1
## LIKE = SELECT * FROM employees WHERE first_name LIKE 'S%';
 
## NULL Means - NOT equal to Zero|    NULL means
                NOT empty string |  Nothing,Unknown,
                NOT Blank Space  |  Not equal to anyhting
    IS NULL:Use this operator to find records where data is completely missing or unknown.
    IS NOT NULL:Use this operator to filter out missing data, ensuring you only retrieve records that contain actual values.