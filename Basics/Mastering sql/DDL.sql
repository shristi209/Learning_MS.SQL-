CREATE TABLE Employees (                      --giving name which is not already present
    EmployeeID INT IDENTITY(1,1) PRIMARY KEY, --IDENTITY(1,1) starting id from 1 and auto incrementing by 1
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50)
);

--Adding a new column called "Email" to the "Employees" table
ALTER TABLE Employees
ADD Email VARCHAR(100);

--Dropping/deleting the "Employees" table
DROP TABLE Employees;

--Removing all data from the "Employees" table
TRUNCATE TABLE Employees; --different from drop by: removes all rows from a table but keeps the table structure intact.

--Renaming the "Employees" table to "Staff"
ALTER TABLE Employees
RENAME TO Staff;