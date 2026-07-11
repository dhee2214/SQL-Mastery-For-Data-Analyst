-- Add Email column

ALTER TABLE Employee
ADD Email VARCHAR(100);

-- Add Email column

ALTER TABLE Employee
ADD Email VARCHAR(100);

-- Remove Email column

ALTER TABLE Employee
DROP COLUMN Email;

-- Add Primary Key

ALTER TABLE Employee
ADD CONSTRAINT PK_Employee
PRIMARY KEY (EmployeeID);

ALTER TABLE Employee
ADD CONSTRAINT CK_Salary
CHECK (Salary > 0);


ALTER TABLE Employee
DROP CONSTRAINT PK_Employee;