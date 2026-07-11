## JOINS--
            JOIN is an operation used to combine rows from two or more tables based on a related column between them.
            Tables are joined side by side.
JOINS are of  the types:
                            1. INNER JOIN
                            2. LEFT JOIN
                            3. RIGHT JOIN
                            4. FULL JOIN


INNER JOIN :
             This join is used only to return the matching rows from both the table.
## Syntax:
 Order of tables does not matter
           SELECT Columns
           FROM table_1
           INNER JOIN table_2
           ON table_1.column = table_2.column;



LEFT JOIN :
             This join returns all the rows from the left table and only the matching rows from right table.
## Syntax:
 Order of tables does matter.
           SELECT Columns
           FROM table_1 -- {left table}
           LEFT JOIN table_2 --{right table}
           ON table_1.column = table_2.column;


RIGHT JOIN :
             This join returns all the rows from the right table and only the matching rows from left table.
## Syntax:
 Order of tables does matter.
           SELECT Columns
           FROM table_1 -- {right table}
           RIGHT JOIN table_2 --{left table}
           ON table_1.column = table_2.column;


FULL JOIN :
             This join returns all the rows from the left table and right table.
             MATCHED ROWS are combined .
             NON MATCHED rows are filled with nulls.
## Syntax:
 Order of tables does matter.
           SELECT Columns
           FROM table_1
           FULL JOIN table_2 
           ON table_1.column = table_2.column;


LEFT ANTI JOIN :
             This join returns all the rows from the left table, THAT has no match from the right table.
## Syntax:
           SELECT Columns
           FROM table_1 
           LEFT JOIN table_2 
           ON table_1.column = table_2.column {ON A.key = B.key}
           WHERE B.key is NULL;
        

RIGHT ANTI JOIN :
             This join returns all the rows from the RIGHT table, THAT has no match from the leftt table.
## Syntax:
           SELECT Columns
           FROM table_1 
           LEFT JOIN table_2 
           ON table_1.column = table_2.column {ON A.key = B.key}
           WHERE B.key is NULL;


FULL ANTI JOIN :
             This join returns only the rows that do not have match in both of the tables.
## Syntax:
           SELECT Columns
           FROM table_1 
           LEFT JOIN table_2 
           ON table_1.column = table_2.column {ON A.key = B.key}
           WHERE A.key is NULL OR B.key is NULL;