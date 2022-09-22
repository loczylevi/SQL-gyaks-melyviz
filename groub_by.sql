-- https://sql.sulipy.hu/sql2/group_by?tab=peldak
/* UNION 
mindegyik táblából azonos számú oszlopot kell megadnunk,
azonos sorrendben,
az egyesítendő oszlopoknak azonos adattipusúnak kell lennie */

SELECT City FROM Customers 
UNION 
SELECT City FROM Suppliers 
ORDER BY City



SELECT City, Country FROM Customers
WHERE Country='Germany'
UNION ALL
SELECT City, Country FROM Suppliers
WHERE Country='Germany'
ORDER BY City;


SELECT 'Customer' AS Type, ContactName, City, Country
FROM Customers
UNION
SELECT 'Supplier', ContactName, City, Country
FROM Suppliers;


-- GROUP BY

SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country
ORDER BY COUNT(CustomerID) DESC;


-- HAVING
-- (szükséges, mivel a WHERE záradék esetén nem lehet összegző függvényeket használni)

SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country
HAVING COUNT(CustomerID) > 5
ORDER BY COUNT(CustomerID) DESC;
  
