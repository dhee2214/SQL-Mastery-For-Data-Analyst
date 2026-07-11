
CREATE TABLE Employee
(
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Salary DECIMAL(10,2) CHECK (Salary > 0),
    JoiningDate DATE DEFAULT GETDATE(),
    DepartmentID INT,

    FOREIGN KEY (DepartmentID)
        REFERENCES Department(DepartmentID)
);