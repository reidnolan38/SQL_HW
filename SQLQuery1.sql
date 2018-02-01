﻿use northwind;

--SELECT EmployeeID, LastName, FirstName
--FROM Employees;

--SELECT LastName, FirstName
--FROM Employees
--WHERE EmployeeID = 2;

--SELECT EmployeeID
--FROM Employees
--WHERE LastName = 'Fuller';

--SELECT LastName, EmployeeID
--FROM Employees
--WHERE LastName LIKE 'F%';

--SELECT LastName, EmployeeID
--FROM Employees
--WHERE LastName LIKE 'F[A-U]%';

--SELECT * 
--FROM Products;


--SELECT ProductName, UnitPrice, UnitsInStock, UnitPrice * UnitsInStock AS 'Total Value'
--FROM Products
--WHERE UnitsInStock > 0
--ORDER BY ProductName ASC;

--SELECT *
--FROM Orders;

--SELECT OrderID, OrderDate
--FROM Orders
--WHERE OrderDate >= '1996-07-01' AND
--	  OrderDate < '1996-08-01';


--SELECT EmployeeID, LastName, FirstName
--FROM Employees;

--SELECT OrderID, OrderDate
--FROM Orders;


--JOINS

SELECT LastName, FirstName, OrderID, OrderDate
FROM Employees JOIN Orders ON
Employees.EmployeeID = Orders.EmployeeID
WHERE LastName = 'Peacock';


SELECT LastName, FirstName, OrderID, OrderDate
FROM Employees, Orders
WHERE Employees.EmployeeID = Orders.EmployeeID AND
LastName = 'Peacock';


SELECT OrderID, OD.UnitPrice, ProductName
FROM [Order Details] AS OD JOIN Products AS P
ON OD.ProductID = P.ProductID
WHERE OrderID = 10250;

SELECT OD.OrderID, OD.UnitPrice, ProductName, E.EmployeeID, LastName, FirstName
FROM [Order Details] AS OD JOIN Products AS P
ON OD.ProductID = P.ProductID JOIN Orders AS O
ON OD.OrderID = O.OrderID JOIN Employees AS E
ON O.EmployeeID = E.EmployeeID
WHERE O.OrderID = 10250;