## Group BY:
    Is used to Group the rows that have the same values into summary rows.
    IS always used in Conjuction with aggeregate functions lik sum,avg,count,min,max,
    to perform calculations on each group.
## Note:
    Combine rows with same value
    Aggregates column by another column.

## Syntax:
            SELECT column_name, AGGREGATE_FUNCTION(column_name)
            FROM table_name
            GROUP BY column_name;