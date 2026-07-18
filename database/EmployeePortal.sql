-- ==========================================
-- CREATE DATABASE
-- ==========================================

CREATE DATABASE EmployeePortal;
GO

USE EmployeePortal;
GO

-- ==========================================
-- CREATE TABLES
-- ==========================================

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
    DeptId INT NOT NULL,

    CONSTRAINT FK_Employees_Departments
        FOREIGN KEY (DeptId)
        REFERENCES Departments(Id)
);

-- ==========================================
-- INSERT DEPARTMENTS
-- ==========================================

INSERT INTO Departments (Name)
VALUES
('HR'),
('IT'),
('Finance'),
('Marketing');

-- ==========================================
-- INSERT EMPLOYEES
-- ==========================================

INSERT INTO Employees (Name, Email, Salary, DeptId)
VALUES
('Ali Khan',      'ali@example.com',      60000.00, 1),
('Sara Ahmed',    'sara@example.com',     75000.00, 2),
('Hamza Ali',     'hamza@example.com',    55000.00, 1),
('Ayesha Noor',   'ayesha@example.com',   82000.00, 2),
('Bilal Ahmed',   'bilal@example.com',    70000.00, 3),
('Fatima Khan',   'fatima@example.com',   68000.00, 4),
('Usman Tariq',   'usman@example.com',    73000.00, 2),
('Hina Malik',    'hina@example.com',     62000.00, 1),
('Zain Raza',     'zain@example.com',     91000.00, 3),
('Mariam Asif',   'mariam@example.com',   76000.00, 4);

-- ==========================================
-- VERIFY DATA
-- ==========================================

SELECT * FROM Departments;

SELECT * FROM Employees;

-- ==========================================
-- INNER JOIN
-- ==========================================

SELECT
    e.Id,
    e.Name,
    e.Email,
    e.Salary,
    d.Name AS Department
FROM Employees e
INNER JOIN Departments d
    ON e.DeptId = d.Id;

-- ==========================================
-- MORE JOIN PRACTICE
-- ==========================================

-- Employees in IT Department

SELECT
    e.Name,
    d.Name AS Department
FROM Employees e
INNER JOIN Departments d
    ON e.DeptId = d.Id
WHERE d.Name = 'IT';

-- Employees with salary greater than 70000

SELECT
    e.Name,
    e.Salary,
    d.Name AS Department
FROM Employees e
INNER JOIN Departments d
    ON e.DeptId = d.Id
WHERE e.Salary > 70000;

-- Employees sorted by salary

SELECT
    e.Name,
    e.Salary,
    d.Name AS Department
FROM Employees e
INNER JOIN Departments d
    ON e.DeptId = d.Id
ORDER BY e.Salary DESC;

-- Number of employees in each department

SELECT
    d.Name AS Department,
    COUNT(e.Id) AS TotalEmployees
FROM Departments d
INNER JOIN Employees e
    ON d.Id = e.DeptId
GROUP BY d.Name;