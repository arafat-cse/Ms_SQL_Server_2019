--------Class 04
DROP DATABASE Round61
GO
CREATE DATABASE Round61
GO
USE Round61
GO
CREATE TABLE Products
(
ProductId INT PRIMARY KEY,
Name VARCHAR(30) NOT NULL,
UnitPrice MONEY NOT NULL
)
GO
INSERT INTO Products(ProductId,Name,UnitPrice)
VALUES
(1,'RAM',12000.00),
(2,'ROM',11000.00),
(3,'CPU',10000.00),
(4,'PC',1200.00),
(5,'Monitor',5000.00)
GO
SELECT *
FROM Products
GO

CREATE TABLE SalesSamary
(
Id INT PRIMARY KEY IDENTITY,
Date DATE NOT NULL,
Quantity INT NOT NULL,
ProductId INT REFERENCES Products(ProductId)
)
GO
INSERT INTO SalesSamary
VALUES
(GETDATE(),10,3),
('2022-05-15',3,1),
('2022-05-15',2,2),
('2021-05-16',3,3)
GO
SELECT *
FROM SalesSamary
GO
SELECT *
FROM Products
GO
/*

*/
--1. INNER JOIN
SELECT Products.Name,SalesSamary.Quantity
FROM Products
INNER JOIN SalesSamary
ON Products.ProductId=SalesSamary.ProductId
GO

SELECT P.Name,S.Quantity
FROM Products P
INNER JOIN SalesSamary S
ON P.ProductId=S.ProductId
GO

--2. LEFT JOIN
SELECT Products.Name,SalesSamary.Quantity
FROM Products
LEFT JOIN SalesSamary
ON Products.ProductId=SalesSamary.ProductId
GO

SELECT P.Name,S.Quantity
FROM Products P
LEFT JOIN SalesSamary S
ON P.ProductId=S.ProductId
GO

--3. RIGHT JOIN
SELECT Products.Name,SalesSamary.Quantity
FROM Products
RIGHT JOIN SalesSamary
ON Products.ProductId=SalesSamary.ProductId
GO

SELECT P.Name,S.Quantity
FROM Products P
RIGHT JOIN SalesSamary S
ON P.ProductId=S.ProductId
GO

--3. FULL JOIN
SELECT Products.Name,SalesSamary.Quantity
FROM Products
FULL OUTER JOIN SalesSamary
ON Products.ProductId=SalesSamary.ProductId
GO

SELECT P.Name,S.Quantity
FROM Products P
FULL OUTER JOIN SalesSamary S
ON P.ProductId=S.ProductId
GO

--5. CROSS JOIN
SELECT P.Name,S.Quantity
FROM Products P
CROSS JOIN SalesSamary S
GO

--6. SELEF JOIN
CREATE TABLE Employee
(
EmpId INT PRIMARY KEY,
Name VARCHAR(30) NOT NULL,
ManId INT NULL
)
GO
INSERT INTO Employee
VALUES
(1,'Rina',3),
(2,'Bina',3),
(3,'Teacher',4),
(4,'CM',5),
(5,'Consultant',NULL),
(6,'ACM',5)
GO
SELECT *
FROM Employee
GO

SELECT E.Name AS Employee,M.Name AS Manager
FROM Employee E
INNER JOIN Employee M
ON M.EmpId=E.ManId
GO
