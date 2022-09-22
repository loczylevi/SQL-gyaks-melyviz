/* UNION 
mindegyik táblából azonos számú oszlopot kell megadnunk,
azonos sorrendben,
az egyesítendő oszlopoknak azonos adattipusúnak kell lennie */

SELECT City FROM Customers 
UNION 
SELECT City FROM Suppliers 
ORDER BY City
