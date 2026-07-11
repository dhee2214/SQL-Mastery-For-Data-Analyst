## DDL - Stand for Data Definition Language.
    It is a subset of SQL (Structured Query Language) used to define, modify, and manage the structure or schema of database objects like tables, indexes, and views.
## These contain:
                    CREATE
                    ALTER
                    DROP
                    TRUNCATE
                    RENAME

## CREATE DATABASE:
                       CREATE DATABASE CompanyDB;
## USE DATABASE:
                    USE CompanyDB;



CREATE : IS used to create new databases,objects,tables,views.
## Syntax:
          Create TABLE table_name(
            id INT,
            name VARCHAR(20),
            age INT
          );


ALTER: IS used to modify the structure of existing objects such as adding or removing columns.
        BY Default add adds the column at the last.
## Syntax:
            ALTER TABLE table_name|  ALTER TABLE table_name
            ADD email VARCHAR(20);|  MODIFY Age INT;


DROP: IS used to remove the db objects, including their structure and data entirely.
## Syntax:
            DROP TABLE table_name;
            DROP TABLE IFEXISTS table_name;
## DROP COlUMN:
                ALTER TABLE table_name
                DROP COLUMN column_name;
            

TRUNCATE: IS used to delete all the rows from the table keeping its structure.
          IS faster than delete due to this has no logging,protocols.
## Syntax:
            TRUNCATE TABLE table_name;


RENAME: IS used to rename column,table,database.
## Syntax:
           RENAME TABLE old_table_name TO new_table_name

## RENAME COLUMN:
                 ALTER TABLE table_name
                 RENAME COLUMN old_col_name TO new_col_name;
