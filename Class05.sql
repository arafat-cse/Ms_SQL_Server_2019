------------CHAPTER 5-------
/*
CLAUSE
1. FROM
2. WHERE
3. GROUP BY
4. HAVING
5. SELECT
6. ORDER BY
7. TOP
*/
USE Northwind
GO
--FROM 
SELECT *
FROM Products
GO

--WHERE 
SELECT *
FROM Products
WHERE ProductID>10
GO
--GROUP BY 
SELECT ProductID,SUM(UnitPrice)
FROM Products
GROUP BY ProductID
GO

--HAVING
SELECT ProductID,SUM(UnitPrice)
FROM Products
GROUP BY ProductID
HAVING SUM(UnitPrice)>50
GO
--SELECT 

SELECT *
FROM Products
GO
SELECT *
FROM Orders
GO

SELECT P.CategoryID,P.ProductID,P.ProductName,P.UnitPrice,O.OrderDate
FROM Products P
INNER JOIN Orders O
ON P.ProductID=O.EmployeeID
GO
--ORDER BY
SELECT TOP 5*
FROM Orders
ORDER BY CustomerID DESC
GO
--TOP

SELECT TOP 5*
FROM Orders
GO

--- 
DROP DATABASE Round61
GO
CREATE DATABASE Round61
GO
USE Round61
GO
CREATE TABLE Employee
(
Id INT PRIMARY KEY IDENTITY,
Name VARCHAR(30) NOT NULL,
Gender VARCHAR (30) NOT NULL,
Salary INT NOT NULL,
Department VARCHAR(30) NOT NULL
)
GO
INSERT INTO Employee
VALUES
('Rina','FeMale',1000,'HR'),
('Bina','FeMale',1000,'HR'),
('Tina','FeMale',3000,'Accounts'),
('Mina','FeMale',4000,'Accounts'),
('Rana','Male',1000,'HR'),
('Rani','FeMale',6000,'Markating'),
('Runa','FeMale',7000,'Markating'),
('Samiul','Male',8000,'HR'),
('Samaul','Male',1000,'Salse'),
('Rina','FeMale',1000,'HR')
GO
SELECT *
FROM Employee
GO
--GROUP BY
SELECT Department, SUM(Salary)
FROM Employee
GROUP BY (Department)
GO
--ROLLUP
SELECT Department, SUM(Salary)
FROM Employee
GROUP BY ROLLUP(Department)
GO
--ROLLUP
SELECT COALESCE(Department, 'Total') AS Department, SUM(Salary) AS 'Salary'
FROM Employee
GROUP BY ROLLUP(Department)
GO
--CUBE
SELECT COALESCE(Department, 'Total') AS Department,COALESCE(Gender, 'All Gender') AS Gender, SUM(Salary) AS 'Salary'
FROM Employee
GROUP BY CUBE(Department,Gender)
GO