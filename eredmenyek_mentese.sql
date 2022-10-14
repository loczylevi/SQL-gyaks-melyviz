/*1. Feladat
A Northwind tesztadatbázis customers táblájából kérd le az ügyfelek számát városonként,
ha az eléri legalább a 3-at, és az eredményt mentsd el az x1_customers nevű táblába!*/

USE northwind;

CREATE TABLE x12_customers
    SELECT COUNT(id) AS ugyfelek, city
    FROM customers
    HAVING COUNT(id) > 3;
    
