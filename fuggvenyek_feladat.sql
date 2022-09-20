/*A következő feladatokat
- a Northwind tesztadatbázison oldd meg,
- phpMyAdmin SQL beviteli mezőjében írd meg az utasításokat,
- majd mentsd el ezeket egy SQL szkript formájában!

1. Feladat
A 'products' táblában határozd meg a 'standard_cost' mezőjének átlagértékét
a, az össezs rekord esetében,*/

USE northwind;
SELECT AVG(standard_cost) AS Átlag FROM products;


/*b, azon rekordok esetében, amelyeknél a 'list_price' 30-nál kisebb értékű,*/
USE northwind;
SELECT AVG(standard_cost) AS Átlag FROM products WHERE list_price < 30;

/*c, azon rekordok esetében, amelyeknél a 'category' mezőben 'Sauces' érték található!*/
USE northwind;
SELECT AVG(standard_cost) AS Átlag FROM products WHERE category = 'Sauces';


/*2. Feladat
A 'products' táblában határozd meg a 'standard_cost' mezőjének összértékét
a, az össezs rekord esetében,*/

USE northwind;
SELECT SUM(standard_cost) AS Összegzés FROM products;


/*b, azon rekordok esetében, amelyeknél a 'list_price' értéke 20 és 50 közötti,*/

USE northwind;
SELECT SUM(standard_cost) AS Összegzés FROM products WHERE list_price BETWEEN 20 AND 50;
-- SELECT list_price FROM products WHERE list_price BETWEEN 20 AND 50;  -- ellenorzes


/*c, azon rekordok esetében, amelyeknél a 'category' mezőben NEM 'Sauces' érték található!*/

USE northwind;
SELECT SUM(standard_cost) AS Összegzés FROM products WHERE category <> 'Sauces';  -- ez azért szimpatikusabb :)


SELECT SUM(standard_cost) AS Összegzés2 FROM products WHERE category NOT IN ('Sauces'); -- alternativ megoldás


/*3. Feladat
A 'employees' táblában határozd meg azon alkalmazottak számát
a, akik Seattle-ben laknak,*/


USE northwind;
SELECT COUNT(id) AS Számláló_Seattle FROM employees WHERE city = 'Seattle';

SELECT COUNT(id) AS Számláló_Seattle_2 FROM employees WHERE city IN ('Seattle');  -- alternativ megoldás


/*b, akiknek 'Sales Representative' munkakörben dolgoznak*/

USE northwind;
SELECT COUNT(id) AS Sales_munkakör FROM employees WHERE job_title = 'Sales Representative';

SELECT COUNT(id) AS Sales_munkakör_2 FROM employees WHERE job_title IN ('Sales Representative');  -- alternativ megoldás

/*c, akiknek a keresztneve 'A' betűvel kezdődik!*/

USE northwind;
SELECT COUNT(first_name) AS A_keresztnév FROM employees WHERE first_name LIKE 'A%';

/*4. Feladat
A 'products' táblában határozd meg a 'standard_cost' oszlop
a, legkisebb értékét,*/

USE northwind;
SELECT MIN(standard_cost) AS legkisebb FROM products;

/*b, legnagyobb értékét,*/

USE northwind;
SELECT MAX(standard_cost)AS legnagyobb FROM products;

/*c, legnagyobb értékét, azon rekordok esetében, ahol a 'list_price' legalább 30,*/

USE northwind;
SELECT MAX(standard_cost)AS legnagyobb_30_asok_kozott FROM products WHERE list_price >= 30;

/*d, legnagyobb értékét, azon rekordok esetében, ahol a 'product_code' tartalmazza a 'CO' sztringet!*/

USE northwind;
SELECT MAX(standard_cost)AS co FROM products WHERE product_code LIKE '%CO%';
