/*1. Feladat
A Northwind tesztadatbázis customers táblájából kérd le az ügyfelek számát városonként,
ha az eléri legalább a 3-at, és az eredményt mentsd el az x1_customers nevű táblába!*/
USE northwind;

DROP TABLE IF EXISTS x1_customers;

CREATE TABLE x1_customers
    SELECT COUNT(city) AS ugyfelek_szama, city
	FROM customers
	GROUP BY city
    HAVING COUNT(city) > 3;
    
/*2. Feladat
A Northwind tesztadatbázis products táblájában számold meg kategóriánként (category mező) a termékek számát,
és az eredményt mentsd el az x2_products nevű táblába!*/

USE northwind;

CREATE TABLE x2_products
    SELECT COUNT(category) AS számláló, category
	FROM products
	GROUP BY category;
   
