## DML - Stands for DATA MANIPULATION LANGUGAE
IS used to add new rows,manage,retrieve,and manage data stored in the data base

## These consists of :
                        INSERT
                        UPDATE
                        DELETE
                        SELECT


INSERT: IS used to add new rows to the table
## Syntax: 
          INSERT INTO table_name(col_1,col_2,...)
          VALUES(
            1,Bob,'@gmail.com',
            2,..
          )

          INSERT INTO table_name
          VALUES(
            1,Bob,'@gmail.com',
            2,Rob,'@gmail.com',
          )

UPDATE : Is used to update/modify the existing records/rows in the table.
## Syntax:
           UPDATE table_name
           SET 
                col_name1 = value
                col_name2 = value
           WHERE CONDITION;

DELETE: IS used to delete all the rows from the table wihtout destroying the structure.
## Syntax:
           DELETE FROM table_name
           WHERE COND;
                    