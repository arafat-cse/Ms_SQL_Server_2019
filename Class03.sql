USE Northwind
GO
SELECT *
FROM Customers
GO
SELECT CustomerID,CompanyName,City,Country
FROM Customers
GO
SELECT TOP 10 CustomerID,CompanyName,City,Country
FROM Customers
GO
SELECT TOP 10 CustomerID,CompanyName,City,Country
FROM Customers
ORDER BY CustomerID DESC
GO
SELECT CustomerID,CompanyName,City,Country
FROM Customers
WHERE Country IN ('USA')
GO
SELECT CustomerID,CompanyName,City,Country
FROM Customers
WHERE Country IN ('Argentina','Brazil')
Go
SELECT CustomerID,CompanyName,City,Country
FROM Customers
WHERE Country LIKE 'D%'
Go
SELECT CustomerID,CompanyName,City,Country
FROM Customers
WHERE Country LIKE '%L'
Go
SELECT CustomerID,CompanyName AS 'Company Name',City,Country
FROM Customers
WHERE Country LIKE '%L%'
Go
SELECT City+' UAE '+Country AS Address
FROM Customers
WHERE Country LIKE '%L'
Go
SELECT *
FROM Employees
GO
SELECT FirstName+' '+LastName Name
FROM Employees

SELECT *
FROM [Order Details]
GO
SELECT ProductID,SUM(UnitPrice*Quantity) AS Price
FROM [Order Details]
GROUP BY ProductID
GO
SELECT ProductID,SUM(UnitPrice*Quantity) AS Price
FROM [Order Details]
GROUP BY ProductID
HAVING ProductID=23
GO
--USE FUNCTION
SELECT GETDATE() 'Date'
GO

SELECT LTRIM('          Tina')
GO
SELECT RTRIM('Tina          ')
GO
SELECT DATEDIFF(YEAR,'11-11-1999',GETDATE()) 'AGE'
GO
SELECT DATEDIFF(MONTH,'11-11-1999',GETDATE()) 'AGE'
GO
SELECT DATEDIFF(DAY,'11-11-1999',GETDATE()) 'AGE'
GO
SELECT DATEADD(YEAR,+10,GETDATE())
GO
SELECT DATEADD(YEAR,-10,GETDATE())
GO

DROP DATABASE Round61
GO
CREATE DATABASE Round61
GO
USE Round61
GO
CREATE TABLE Student
(
Id INT,
Name VARCHAR(30)
)
GO
INSERT INTO Student
VALUES (1,'Rina')
GO
INSERT INTO Student(Name)
VALUES ('Rina')
GO
SELECT *
FROM Student
GO
CREATE TABLE Student_1
(
Id INT NOT NULL,
Name VARCHAR(30)
)
GO
INSERT INTO Student_1
VALUES (1,'Rina')
GO
INSERT INTO Student_1(Name)
VALUES ('Bina')
GO
SELECT *
FROM Student_1
GO

CREATE TABLE Student_2
(
Id INT NOT NULL IDENTITY,
Name VARCHAR(30)
)
GO
INSERT INTO Student_2
VALUES ('Rina')
GO
INSERT INTO Student_2(Name)
VALUES ('Tina')
GO
SELECT *
FROM Student_2
GO

CREATE TABLE Student_3
(
Id UNIQUEIDENTIFIER NOT NULL,
Name VARCHAR(30)
)
GO
INSERT INTO Student_3(Id,Name)
VALUES(NEWID(),'Rina')
GO
INSERT INTO Student_3(Id,Name)
VALUES(NEWID(),'Bina')
GO
SELECT *
FROM Student_3
GO