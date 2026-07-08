CREATE DATABASE EmployeePortal;
GO

USE EmployeePortal;
GO

CREATE TABLE Departments
(
    Id INT PRIMARY KEY IDENTITY(1,1),
    Name VARCHAR(100) NOT NULL
);

CREATE TABLE Employees
(
    Id INT PRIMARY KEY IDENTITY(1,1),
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    Salary DECIMAL(10,2) NOT NULL,
    DeptId INT,

    FOREIGN KEY (DeptId)
    REFERENCES Departments(Id)
);

INSERT INTO Departments
VALUES
('HR'),
('IT');

INSERT INTO Employees 
VALUES
('Ali Khan', 'ali@example.com', 60000.00, 1),
('Sara Ahmed', 'sara@example.com', 75000.00, 2);


SELECT * FROM Departments;
SELECT * FROM Employees;
