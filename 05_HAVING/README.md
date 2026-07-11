## HAVING:
            IS used to filter the results of a group by query based on agg functions.
            Filters data only after agg is performed.
            Can only be used with GROUP BY.
## Syntax:
            SELECT column_name, AGGREGATE_FUNCTION(column_name)
            FROM table_name
            GROUP BY column_name
            HAVING  AGGREGATE_FUNCTION(column_name);